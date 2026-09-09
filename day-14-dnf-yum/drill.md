# Day 14 Practice Drill

## Task
since I'm on Ubuntu, dnf and yum aren't available without extra setup, so instead of running them live, I focused today's hands-on drill on the Ubuntu-native alternative install tools: snap, add-apt-repository, dpkg -i, and pip/npm. I understood dnf, yum, and rpm conceptually by comparing them directly to their apt equivalents from Day 13.

## Commands I ran
sudo snap install hello-world
hello-world
sudo apt install software-properties-common
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install python3-pip nodejs npm
pip install requests
npm install -g cowsay
