#!/bin/bash

# AetherPerp CLI Wrapper
# Created: 2026-03-26

# Navigate to script directory
cd "$(dirname "$0")"

# Execute commands
if [ "$1" == "logs" ]; then
    tail -f bot.log
elif [ "$1" == "watch" ]; then
    watch -n 1 "tail -n 20 bot.log"
elif [ "$1" == "stop" ]; then
    echo "Stopping AetherPerp-Node..."
    pkill -f main.py
    echo "Bot stopped."
else
    export PYTHONUNBUFFERED=1
    python3 main.py "$@"
fi
