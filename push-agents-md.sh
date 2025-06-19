#!/bin/bash

# 🚀 Auto-script to add and push AGENTS.md to GitHub

# Check if file exists
if [ ! -f AGENTS.md ]; then
  echo "❌ AGENTS.md not found in this directory. Aborting."
  exit 1
fi

# Add the file
echo "📄 Adding AGENTS.md to git..."
git add AGENTS.md

# Commit the change
echo "📝 Committing..."
git commit -m "📄 Add AGENTS.md – AI architecture roles"

# Push to main branch
echo "🚀 Pushing to GitHub..."
git push origin main

# Done
echo "✅ AGENTS.md pushed successfully!"
