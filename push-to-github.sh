#!/bin/bash

# === CONFIG ===
REPO_NAME="ai-movie-studio-reimaginer"
GITHUB_USERNAME="Rvanschie"
GIT_REMOTE_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

echo "🚀 Initializing Git and pushing to GitHub..."

# Init git if not already
if [ ! -d ".git" ]; then
  git init
  echo "✅ Git initialized."
else
  echo "🔁 Git already initialized."
fi

# Remove incorrect remote if exists
if git remote get-url origin &> /dev/null; then
  echo "⚠️  Removing existing remote..."
  git remote remove origin
fi

# Add correct remote
git remote add origin "$GIT_REMOTE_URL"
echo "✅ Remote set to: $GIT_REMOTE_URL"

# Set branch to main
git branch -M main

# Stage & commit
git add .
git commit -m "🚀 Initial commit – AI Movie Studio" || echo "ℹ️ Already committed."

# Push to GitHub
git push -u origin main

echo "🎉 All done! Check your repo at: https://github.com/$GITHUB_USERNAME/$REPO_NAME"