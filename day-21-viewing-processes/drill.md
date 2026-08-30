# Day 21 Practice Drill

## Task
Find the PID of a running process by name, view it in top, show it as part of the process tree, and identify which process is using port 80.

## Commands I ran
- ps aux
- ps -ef
- pgrep bash
- top
- htop
- python3 -m http.server 80
- sudo lsof -l :80
- pstree -p
