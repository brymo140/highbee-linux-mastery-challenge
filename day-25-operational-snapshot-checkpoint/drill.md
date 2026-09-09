# Day 25 Practice Drill

## Task
Build a one-screen operational snapshot of a server covering uptime, memory,
the status of three key services, and any scheduled cron jobs.

## Commands I ran
- uptime
- free -h
- systemctl status ssh
- systemctl status cron
- systemctl status systemd-journald
- crontab -l
- crontab -e
- kill -0 <PID>
- echo $?
- pgrep sleep
