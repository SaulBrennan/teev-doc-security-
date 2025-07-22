#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${YELLOW}🔧 Starting Retype documentation server...${NC}"

# Kill any processes running on port 5000
echo -e "${YELLOW}🔍 Checking for processes on port 5000...${NC}"
PORT_PID=$(lsof -ti:5000)

if [ ! -z "$PORT_PID" ]; then
    echo -e "${RED}⚠️  Found process(es) running on port 5000. Killing them...${NC}"
    kill -9 $PORT_PID
    echo -e "${GREEN}✅ Processes killed successfully${NC}"
else
    echo -e "${GREEN}✅ Port 5000 is free${NC}"
fi

# Wait a moment for the port to be fully released
sleep 1

# Change to the overview directory where retype.yml is located
cd overview

# Build and start the Retype server
echo -e "${YELLOW}🚀 Starting Retype server on localhost:5000...${NC}"
npx retype start --host localhost --port 5000

echo -e "${GREEN}🎉 Retype server should now be running at http://localhost:5000${NC}" 