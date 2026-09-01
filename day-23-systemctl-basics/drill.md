# Day 23 Practice Drill

## Task
I am to pick a service, stop it, confirm it is inactive, restart it, enable it to auto-start at boot in a single combined command, and confirm both its active and enabled state.

## Commands I ran
- sudo systemctl stop ssh
- sudo systemctl is-active ssh
- sudo systemctl restart ssh
- sudo systemctl enable --now ssh
- sudo systemctl is-enabled ssh
