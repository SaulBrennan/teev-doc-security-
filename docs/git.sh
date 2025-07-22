#!/bin/bash

# Usage: ./git.sh "Your commit message here"
# This script uploads docs and everything under the docs directory to git

# Default commit message if none provided
COMMIT_MSG=${1:-"Update documentation"}

# Get the script directory (docs/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Go to the project root (parent of docs)
cd "$SCRIPT_DIR/.."

echo "📁 Adding docs directory and all contents to git..."
git add docs/

echo "📝 Committing changes..."
git commit -m "$COMMIT_MSG"

if [ $? -eq 0 ]; then
    echo "🚀 Pushing to origin main..."
    git push origin main
    echo "✅ Documentation successfully uploaded to git!"
else
    echo "ℹ️  No changes to commit"
fi 