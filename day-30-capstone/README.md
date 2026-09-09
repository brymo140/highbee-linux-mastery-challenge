# Day 30: Capstone, Full System Command Mastery Review

## Phase 6 - Networking, Scripting & SSH Mastery | Day 30 of 30

## What this capstone does
This is the final project of my 30-Day Linux Command Mastery Challenge with 
IOTB TECH. Instead of a simple script, I provisioned a real cloud server 
from scratch using Terraform, then wrote a Bash deployment script that 
brings a full production application online with a single command.

## Architecture
- **Infrastructure**: Custom VPC, two subnets across separate availability 
  zones, internet gateway, and route table, all defined in Terraform, no 
  manual console clicks
- **Compute**: A c7i-flex.large EC2 instance running Ubuntu 22.04
- **Application**: ZeetaFin, a real full stack project (Next.js frontend, 
  NestJS backend, PostgreSQL database), deployed as three Docker containers 
  via Docker Compose
- **DNS**: A DuckDNS domain (zeetafin.duckdns.org) automatically updated by 
  the deploy script to always point at the current server IP
- **Deployment**: One Bash script (deploy.sh) handles everything end to end

## What the deploy script actually does
1. Pulls the live EC2 IP from Terraform's output
2. Updates DuckDNS to point at that IP
3. Waits for SSH to become reachable, then connects
4. Installs Docker and Docker Compose on the fresh server
5. Clones both the frontend and backend repos (private repos, authenticated 
   via a GitHub token)
6. Copies the Docker Compose file, Dockerfiles, and environment file to the 
   server using scp
7. Applies correct ownership and permissions to the deployed files (chown, 
   chmod, locking the env file down to 600)
8. Builds and starts all three containers
9. Verifies the Docker service is healthy using systemctl status and 
   journalctl
10. Logs the entire run to a timestamped local log file

## Commands used from across the whole challenge
ssh, scp, chmod, chown, systemctl, journalctl, curl, git, docker, and the 
full Bash scripting toolkit from Days 28 and 29: functions, variables, 
loops, conditionals, and command substitution.

## What I practiced
This pulled together nearly everything from the last 30 days into one real, 
working deployment. Provisioning infrastructure as code, securing SSH 
access, deploying a genuine multi-service application, verifying it with 
systemd tools, and locking down file permissions on deployed secrets, all 
inside a single automated script.

## Reflection
Thirty days ago I could barely navigate a filesystem confidently. Today I 
provisioned a VPC, launched a server, and deployed a real production 
application to it with one command, then watched it go live on a real 
domain. That's the actual distance this challenge covers.

## Next steps (not part of this capstone, but the honest next move)
Add Nginx as a reverse proxy in front of the containers, and Certbot for a 
free Let's Encrypt TLS certificate, so the app is served over HTTPS instead 
of plain HTTP.

## Evidence
Screenshots and terminal output in evidence/, including the live app, 
successful admin login, and container/service verification.

## Related
Previous day: [day-29-functions-automation](https://github.com/brymo140/highbee-linux-mastery-challenge/tree/main/day-29-functions-automation)
