#!/bin/bash
# Starts up Nginx within the container.

# Stop on error
#set -e

echo "source"
source ~/.bashrc

echo "install node"
nvm install 8

echo "install packages..."
cd /src && npm install

#echo "start"
node /src/app.js

echo "start with forever"
#forever -w start app.js
#cd /src && npm start
#/src/node_modules/.bin/forever -w start /src/app.js
