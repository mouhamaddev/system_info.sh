#!/bin/bash

if ! command -v mpstat &> /dev/null
then
    echo "mpstat could not be found. Installing sysstat..."
    sudo apt-get update
    sudo apt-get install sysstat -y
fi

if ! command -v speedtest-cli &> /dev/null
then
    echo "speedtest-cli could not be found. Installing speedtest-cli..."
    sudo apt-get update
    sudo apt-get install speedtest-cli -y
fi

# Get CPU usage
echo "CPU Usage:"
mpstat 1 1 | awk '/Average/ {printf "User: %.1f%%, System: %.1f%%, Idle: %.1f%%\n", $3, $5, $12}'

# Get memory usage
echo "Memory Usage:"
free -h | awk '/^Mem:/ {printf "Total: %s, Used: %s, Free: %s\n", $2, $3, $4}'

# Get disk usage
echo "Disk Usage:"
df -h | awk '$NF=="/"{printf "Total: %s, Used: %s, Available: %s\n", $2, $3, $4}'

# Get internet speed
echo "Internet Speed:"
speedtest-cli --simple
