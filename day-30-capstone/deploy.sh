#!/bin/bash

# ===== CONFIG =====
EC2_USER="ubuntu"
EC2_IP=$(terraform -chdir=terraform output -raw public_ip)
KEY_PATH="$HOME/.ssh/MyOnlyKey.pem"
DUCKDNS_DOMAIN="zeetafin"
DUCKDNS_TOKEN="my-duckdns-personal-tokn"
LOG_FILE="./deploy-log-$(date +%Y%m%d-%H%M%S).log"
APP_DIR="./app"
REMOTE_DIR="/home/ubuntu/zeetafin"
GITHUB_TOKEN="my-personal-git-token"

# ===== LOGGING SETUP =====
exec > >(tee -a "$LOG_FILE") 2>&1
echo "===== ZeetaFin Capstone Deployment started at $(date) ====="

# ===== STEP 1: UPDATE DUCKDNS =====
echo "--- Updating DuckDNS to point $DUCKDNS_DOMAIN.duckdns.org to $EC2_IP ---"
curl -s "https://www.duckdns.org/update?domains=${DUCKDNS_DOMAIN}&token=${DUCKDNS_TOKEN}&ip=${EC2_IP}"
echo ""

# ===== STEP 2: WAIT FOR SSH TO BE READY =====
echo "--- Waiting for SSH to be reachable on $EC2_IP ---"
until ssh -o StrictHostKeyChecking=no -o ConnectTimeout=5 -i "$KEY_PATH" "$EC2_USER@$EC2_IP" "echo SSH is up" 2>/dev/null; do
    echo "SSH not ready yet, retrying in 5s..."
    sleep 5
done

# ===== STEP 3: INSTALL DOCKER ON THE REMOTE SERVER =====
echo "--- Installing Docker on remote server ---"
ssh -o StrictHostKeyChecking=no -i "$KEY_PATH" "$EC2_USER@$EC2_IP" bash << 'ENDSSH'
    sudo apt update
    sudo apt install -y ca-certificates curl gnupg git

    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

    sudo systemctl enable --now docker
    sudo usermod -aG docker ubuntu
ENDSSH

# ===== STEP 4: CLONE THE REPOS ON THE REMOTE SERVER =====
echo "--- Cloning ZeetaFin frontend and backend repos ---"
ssh -o StrictHostKeyChecking=no -i "$KEY_PATH" "$EC2_USER@$EC2_IP" bash << ENDSSH
    rm -rf $REMOTE_DIR
    mkdir -p $REMOTE_DIR
    cd $REMOTE_DIR
    git clone https://${GITHUB_TOKEN}@github.com/Adewale-27/ZeetaFin-FE.git ZeetaFin-FE
    git clone https://${GITHUB_TOKEN}@github.com/Adewale-27/ZeetaFin-BE.git ZeetaFin-BE
ENDSSH

# ===== STEP 5: COPY DEPLOYMENT FILES TO THE SERVER =====
echo "--- Copying docker-compose.yml, Dockerfiles, and env files via scp ---"
scp -o StrictHostKeyChecking=no -i "$KEY_PATH" \
    "$APP_DIR/docker-compose.yml" \
    "$APP_DIR/Dockerfile.backend" \
    "$APP_DIR/Dockerfile.frontend" \
    "$APP_DIR/backend.env" \
    "$EC2_USER@$EC2_IP:$REMOTE_DIR/"

# ===== STEP 6: SET OWNERSHIP AND PERMISSIONS ON DEPLOYED FILES =====
echo "--- Applying ownership and permissions to deployed files ---"
ssh -o StrictHostKeyChecking=no -i "$KEY_PATH" "$EC2_USER@$EC2_IP" bash << ENDSSH
    sudo chown -R ubuntu:ubuntu $REMOTE_DIR
    chmod 600 $REMOTE_DIR/backend.env
    chmod 644 $REMOTE_DIR/docker-compose.yml $REMOTE_DIR/Dockerfile.backend $REMOTE_DIR/Dockerfile.frontend
ENDSSH

# ===== STEP 7: BUILD AND START THE STACK =====
echo "--- Building and starting containers with docker compose ---"
ssh -o StrictHostKeyChecking=no -i "$KEY_PATH" "$EC2_USER@$EC2_IP" bash << ENDSSH
    cd $REMOTE_DIR
    sudo docker compose down --remove-orphans
    sudo docker compose up -d --build
ENDSSH

# ===== STEP 8: VERIFY DOCKER SERVICE HEALTH =====
echo "--- Verifying Docker service status ---"
ssh -o StrictHostKeyChecking=no -i "$KEY_PATH" "$EC2_USER@$EC2_IP" bash << 'ENDSSH'
    sudo systemctl status docker --no-pager
    echo "--- Recent Docker journal logs ---"
    sudo journalctl -u docker --since "5 minutes ago" --no-pager
    echo "--- Running containers ---"
    sudo docker ps
ENDSSH

echo "===== Deployment finished at $(date) ====="
echo "Visit: http://${DUCKDNS_DOMAIN}.duckdns.org"
echo "Backend API: http://${DUCKDNS_DOMAIN}.duckdns.org:3001/api"
echo "Full log saved to: $LOG_FILE"
