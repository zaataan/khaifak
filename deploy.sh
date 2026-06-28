#!/bin/zsh
set -e

cd "$(dirname "$0")"

git add index.html

if git diff --cached --quiet; then
  echo "No changes to deploy."
  exit 0
fi

message=${1:-"update site"}
git commit -m "$message"
git push origin main

echo "Deployed: https://zaataan.github.io/khaifak/"
