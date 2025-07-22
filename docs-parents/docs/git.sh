#!/bin/bash

# Usage: ./git.sh "Your commit message here"

# Default commit message if none provided
COMMIT_MSG=${1:-"Auto-commit"}

git add .
git commit -m "$COMMIT_MSG"
git push origin main 