#!/bin/zsh

# Variables
CONFIG_REPO_PATH="$HOME/.config"
MAIN_BRANCH="main"
CONFLICT_THRESHOLD=5

# Function to get the current branch name
function git_current_branch() {
  git -C "$CONFIG_REPO_PATH" symbolic-ref --short HEAD 2>/dev/null
}

# Fetch the latest changes
git -C "$CONFIG_REPO_PATH" fetch &>/dev/null

# Get the current branch name
CURRENT_BRANCH=$(git_current_branch)

# Temporary merge to detect conflicts
git -C "$CONFIG_REPO_PATH" checkout -b temp-merge-branch "${CURRENT_BRANCH}" &>/dev/null
git -C "$CONFIG_REPO_PATH" merge "${MAIN_BRANCH}" --no-commit --no-ff &>/dev/null

# Count the number of conflicts
CONFLICT_COUNT=$(git -C "$CONFIG_REPO_PATH" ls-files -u | wc -l)

# Clean up temporary branch
git -C "$CONFIG_REPO_PATH" merge --abort &>/dev/null
git -C "$CONFIG_REPO_PATH" checkout "${CURRENT_BRANCH}" &>/dev/null
git -C "$CONFIG_REPO_PATH" branch -D temp-merge-branch &>/dev/null

# Display a warning message if the conflict count exceeds the threshold
if [ "${CONFLICT_COUNT}" -gt "${CONFLICT_THRESHOLD}" ]; then
  echo "Warning: There are ${CONFLICT_COUNT} potential merge conflicts between ${CURRENT_BRANCH} and ${MAIN_BRANCH} in the .config repository. Consider merging and resolving conflicts soon."
fi
