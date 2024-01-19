#!/bin/bash

# Start hosting at 5:30 pm on weekdays
if [ $(date +%H%M) == "1730" ] && [ $(date +%u) -le 5 ]; then
    sudo docker-compose up -d
fi

# Stop hosting at 8:00 pm on weekdays
if [ $(date +%H%M) == "2000" ] && [ $(date +%u) -le 5 ]; then
    sudo docker-compose down
fi
