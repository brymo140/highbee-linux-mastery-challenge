# Day 28 Practice Drill

## Task
Write and execute a script that reads the user's name, checks whether a config file exists using an if statement, and loops through three server names pinging each one.

## Commands I ran
---

#!/bin/bash

read -p "Enter your name please: " username
echo "Hello, $username"

if [ -f "myconfig.conf" ]; then
        echo "config file found."
else
        echo "config file not found."
fi

servers=("google.com" "github.com" "blizmo.ai")

for server in "${servers[@]}"; do
        echo "Pinging $server..."
        ping -c 2 "$server"
done

