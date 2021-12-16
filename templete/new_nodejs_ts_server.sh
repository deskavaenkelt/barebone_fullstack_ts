#!/bin/sh
#rm -rf server
SERVER_FOLDER="server"

mkdir $SERVER_FOLDER
mkdir $SERVER_FOLDER/src/
#npm init -y
#cp server/package.json ../../server/package.json
#cp server/tsconfig.json ../../server/tsconfig.json
#cp server/server.ts ../../server/src/index.ts
#cp server/Dockerfile ../../server/Dockerfile
#echo "# Node.js Server" >> ../../server/README.md

cd $SERVER_FOLDER || exit

#npm i express && npm i --save-dev typescript ts-node-dev @types/express @types/node

echo "Start server with:"
echo "cd $SERVER_FOLDER"
echo "npm run start"
#npm run start

# Dockerfile
#docker build -t server-test .

#npm install json



#pwd && ls -l

#npx tsc --init
