#!/bin/bash

# Function to check CPU and Memory usage
check_resources() {
    echo "===== Checking CPU and Memory Usage ====="
    uptime
    free -m
}

# Function to check a specific service or process (e.g., a web server)
check_process() {
    local process_name="your_process_name"

    echo "===== Checking $process_name Process ====="
    if pgrep -x "$process_name" > /dev/null; then
        echo "$process_name is running"
    else
        echo "$process_name is not running"
    fi
}

# Function to check network connectivity (ping Google's DNS server)
check_network() {
    echo "===== Checking Network Connectivity ====="
    ping -c 3 8.8.8.8
}

# Main function to run health checks
main() {
    echo "===== Node Health Check ====="

    check_resources
    check_process
    check_network

    echo "===== Health Check Complete ====="
}

