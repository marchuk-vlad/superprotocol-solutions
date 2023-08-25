#!/bin/bash
set -e

solution_path=$1
#solution_name=$2

# cd to one directory up of current script
REAL_PATH=$(realpath "$0")
LOCAL_PATH=$(dirname "$REAL_PATH")
cd "$LOCAL_PATH"
cd ..

echo "Install dependencies for client & sever module"
yarn dependencies-scripts
yarn build:all

echo "Make logs dir"
mkdir "$solution_path"/logs

echo "Copy files"
cp -R dist node_modules package.json yarn.lock server client "$solution_path"