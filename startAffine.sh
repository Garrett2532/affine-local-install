#!/bin/bash

# Function to run after stopping docker-compose
cleanup() {
    echo "Docker Compose stopped. Running cleanup tasks..."
    # Add any commands you want to execute here
    echo "Running post-docker-compose commands..."
    # Example commands:
    docker compose down
    echo "Cleanup completed!"
    #push to get here
    sleep 5
}

# Trap SIGINT (Ctrl+C) and call cleanup
trap cleanup SIGINT

# Start docker-compose
echo "Starting Docker Compose..."
#pull from git here
docker compose up

# Wait for the `docker-compose` process to end
wait
