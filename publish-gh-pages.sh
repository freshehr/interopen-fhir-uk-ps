#!/bin/bash

# Exit on error
set -e

echo "Publishing IG output to gh-pages branch..."

# Store current branch
CURRENT_BRANCH=$(git branch --show-current)

# Check if output folder exists
if [ ! -d "output" ]; then
    echo "Error: output folder not found. Build the IG first."
    exit 1
fi

# Switch to gh-pages branch (create if it doesn't exist)
if git show-ref --verify --quiet refs/heads/gh-pages; then
    git checkout gh-pages
else
    echo "Creating gh-pages branch as orphan (no shared history with main)..."
    git checkout --orphan gh-pages
    git rm -rf .
fi

# Remove existing docs folder if it exists
if [ -d "docs" ]; then
    rm -rf docs
fi

# Copy output to docs
cp -r  output docs

# Stage and commit changes
git add docs
git commit -m "Publish IG output to gh-pages

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"

echo ""
echo "✓ Changes committed to gh-pages branch"
echo ""
echo "To publish to GitHub Pages, run:"
echo "  git push origin gh-pages"
echo ""
echo "Note: gh-pages is an orphan branch with no shared history with main."
echo "This prevents these changes from being merged back into main."
echo ""

# Switch back to original branch
git checkout "$CURRENT_BRANCH"

echo "✓ Switched back to $CURRENT_BRANCH"
