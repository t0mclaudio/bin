#!/bin/bash
echo "Creating project..."

if [ $# -eq 0 ];
then
  echo "Please provide DIR name"
  exit 1
else 
  mkdir $1
  cd $1
  npm init -y
  npm install express dotenv cors bcryptjs jsonwebtoken
  npm install -D typescript nodemon ts-node @types/express @types/node @types/cors @types/bcryptjs @types/jsonwebtoken
  npx tsc -init
  mkdir src
  mkdir src/routes
  mkdir src/controllers
  mkdir src/middlewares
  mkdir src/config
  echo "Project created success!"
fi