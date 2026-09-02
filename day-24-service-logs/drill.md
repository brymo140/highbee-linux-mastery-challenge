# Day 24 Practice Drill

## Task
I am to list every failed service on the box, then pull today's logs for one specific service: i chose ssh, filtered to errors only: no entries, and follow it live for one minute.

## Commands I ran
- systemctl list-units --type=service
- systemctl list-units --state=failed
- sudo journalctl -u ssh
- sudo journalctl -u ssh -p err
- sudo journalctl -u ssh -f
