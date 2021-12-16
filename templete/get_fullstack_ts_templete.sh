#!/bin/sh
# Variabels
SERVER_FOLDER="server"
CLIENT_FOLDER="client"


# Create project folder based on project name
read -p 'Project name: ' PROJECT_NAME
mkdir "$PROJECT_NAME" && cd "$PROJECT_NAME" || exit

# Create server folder
cd "$SERVER_FOLDER" || exit
mkdir src && cd src || exit

# Download template server
# server
# +-
URL_TEMPLATE_SERVER="https://raw.githubusercontent.com/deskavaenkelt/barebone_fullstack_ts/main/templete/server"
wget "$URL_TEMPLATE_SERVER"/src/server.ts
cd ..
wget "$URL_TEMPLATE_SERVER"/Dockerfile
wget "$URL_TEMPLATE_SERVER"/package.json
wget "$URL_TEMPLATE_SERVER"/README.md
wget "$URL_TEMPLATE_SERVER"/tsconfig.json

#rm -rf server
#SERVER_FOLDER="server"

#mkdir $SERVER_FOLDER
#mkdir $SERVER_FOLDER/src/
#npm init -y
#cp server/package.json ../../server/package.json
#cp server/tsconfig.json ../../server/tsconfig.json
#cp server/server.ts ../../server/src/index.ts
#cp server/Dockerfile ../../server/Dockerfile
#echo "# Node.js Server" >> ../../server/README.md

#cd $SERVER_FOLDER || exit

#npm i express && npm i --save-dev typescript ts-node-dev @types/express @types/node

#echo "Start server with:"
#echo "cd $SERVER_FOLDER"
#echo "npm run start"
#npm run start

# Dockerfile
#docker build -t server-test .

#npm install json



#pwd && ls -l

#npx tsc --init
