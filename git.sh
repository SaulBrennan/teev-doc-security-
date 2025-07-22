#!/bin/bash

# Usage: ./git.sh "Your commit message here"
# This script uploads all documentation content to git

# Default commit message if none provided
COMMIT_MSG=${1:-"Update documentation"}

echo "📁 Adding all documentation content to git..."
git add .

echo "📝 Committing changes..."
git commit -m "$COMMIT_MSG"

if [ $? -eq 0 ]; then
    echo "🚀 Pushing to origin main..."
    git push origin main
    echo "✅ Documentation successfully uploaded to git!"
else
    echo "ℹ️  No changes to commit"
fi 