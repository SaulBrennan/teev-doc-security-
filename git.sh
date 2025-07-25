#!/bin/bash

# Usage: ./git.sh "Your commit message here"
# This script uploads all documentation content to git and auto-increments version

# Default commit message if none provided
COMMIT_MSG=${1:-"Update documentation"}

echo "🔢 Auto-incrementing version in retype.yml..."

# Extract current version from retype.yml
CURRENT_VERSION=$(grep "label: V" retype.yml | sed 's/.*V\([0-9.]*\).*/\1/')

if [ -z "$CURRENT_VERSION" ]; then
    echo "❌ Error: Could not find version in retype.yml"
    exit 1
fi

echo "📋 Current version: V$CURRENT_VERSION"

# Split version into major and minor parts
MAJOR=$(echo $CURRENT_VERSION | cut -d'.' -f1)
MINOR=$(echo $CURRENT_VERSION | cut -d'.' -f2)

# Increment minor version by 1 (pad with zero if needed)
NEW_MINOR=$(printf "%02d" $((10#$MINOR + 1)))
NEW_VERSION="V$MAJOR.$NEW_MINOR"

echo "⬆️  New version: $NEW_VERSION"

# Update the version in retype.yml using sed
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/label: V[0-9.]*/label: $NEW_VERSION/" retype.yml
else
    # Linux
    sed -i "s/label: V[0-9.]*/label: $NEW_VERSION/" retype.yml
fi

if [ $? -eq 0 ]; then
    echo "✅ Version updated to $NEW_VERSION in retype.yml"
else
    echo "❌ Error: Failed to update version in retype.yml"
    exit 1
fi

echo "📁 Adding all documentation content to git..."
git add .

echo "📝 Committing changes..."
git commit -m "$COMMIT_MSG (Version $NEW_VERSION)"

if [ $? -eq 0 ]; then
    echo "🚀 Pushing to origin main..."
    git push origin main
    echo "✅ Documentation successfully uploaded to git with version $NEW_VERSION!"
else
    echo "ℹ️  No changes to commit"
fi 