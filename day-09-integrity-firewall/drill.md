# Day 9 Practice Drill

## Task
I generated a SHA-256 checksum of a file that i downloaded from (https:\\w3.org) with "sha256sum index.html" to verify its integrity and made rhe file immutable "chattr +i" I also open and enabled port 22 and port 443 on the firewall.

## Commands I ran
sha256sum
chattr +i
sudo apt install ufw
sudo ufw allow 22
sudo ufw allow 442
sudo ufw enable
sudo ufw status
