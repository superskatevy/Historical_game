#!/usr/bin/env bash
# Navigate to the folder where this script is located
cd "$(dirname "$0")"

# Start Python local server in the background
python3 -m http.server 8000 &
SERVER_PID=$!

# Give the server a split second to start, then open default browser
sleep 0.5
xdg-open http://localhost:8000

# Wait for user to press Enter in terminal (or close) to shut down the background server
echo "Game running at http://localhost:8000"
echo "Press [ENTER] in this window when you are done playing to stop the server..."
read -r
kill $SERVER_PID
