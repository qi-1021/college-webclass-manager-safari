#!/bin/bash
set -e
TOKEN="$1"
if [ -z "$TOKEN" ]; then
  echo "Usage: bash push.sh <YOUR_GITHUB_PAT>"
  exit 1
fi
git init -b main
git add .
git commit -m "Add extension source and Safari conversion workflow"
# Try classic PAT format first, fallback to oauth2 format
git push "https://qi-1021:${TOKEN}@github.com/qi-1021/college-webclass-manager-safari.git" main:main -u
echo "SUCCESS! Now go to GitHub repo -> Actions -> Run workflow"
