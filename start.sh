#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${YELLOW}🔧 Starting Retype documentation server...${NC}"

# Use port 3000 instead of 5000 (5000 is often used by AirPlay on macOS)
PORT=3000

# Kill any processes running on the port
echo -e "${YELLOW}🔍 Checking for processes on port ${PORT}...${NC}"
PORT_PID=$(lsof -ti:${PORT})

if [ ! -z "$PORT_PID" ]; then
    echo -e "${RED}⚠️  Found process(es) running on port ${PORT}. Killing them...${NC}"
    kill -9 $PORT_PID
    echo -e "${GREEN}✅ Processes killed successfully${NC}"
else
    echo -e "${GREEN}✅ Port ${PORT} is free${NC}"
fi

# Wait a moment for the port to be fully released
sleep 1

# Build and start the Retype server
echo -e "${YELLOW}🚀 Starting Retype server on localhost:${PORT}...${NC}"
npx retype start --host localhost --port ${PORT}

echo -e "${GREEN}🎉 Retype server should now be running at http://localhost:${PORT}${NC}" 