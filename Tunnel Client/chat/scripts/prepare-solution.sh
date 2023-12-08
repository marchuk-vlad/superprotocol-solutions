#!/bin/bash
set -e

solution_path=$1
solution_name=$2

# cd to one directory up of current script
#!/bin/bash
set -e

solution_path=$1
solution_name=$2

# cd to one directory up of current script
REAL_PATH=$(realpath "$0")
LOCAL_PATH=$(dirname "$REAL_PATH")
cd "$LOCAL_PATH"
cd ..

npm ci
npm run build
cp -R .next dist node_modules public next.config.js package.json .env $solution_path


npm ci
npm run build
cp -R .next dist node_modules public next.config.js package.json .env $solution_path
