# Day 29 Practice Drill

## Task
Turn yesterday's script into a reusable function that accepts a service name as an argument, checks its status, restarts it if stopped, and schedule it to run hourly with cron.

## Commands I ran
#!/bin/bash

check_and_restart_service() {
    local service_name=$1
    echo "Checking $service_name..."

    if systemctl is-active --quiet "$service_name"; then
        echo "$service_name is running."
    else
        echo "$service_name is not running. Restarting..."
        sudo systemctl restart "$service_name"
        logger "Restarted $service_name via day29script.sh"
    fi
}

check_and_restart_service "$1"
