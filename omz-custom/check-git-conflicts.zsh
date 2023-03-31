#!/bin/zsh

# Variables
MAIN_BRANCH="master"
CONFLICT_THRESHOLD=5

# Function to get the current branch name
function git_current_branch() {
  git symbolic-ref --short HEAD 2>/dev/null
}

# Fetch the latest changes
git fetch

# Get the current branch name
CURRENT_BRANCH=$(git_current_branch)

# Temporary merge to detect conflicts
git checkout -b temp-merge-branch "${CURRENT_BRANCH}"
git merge "${MAIN_BRANCH}" --no-commit --no-ff

# Count the number of conflicts
CONFLICT_COUNT=$(git ls-files -u | wc -l)

# Clean up temporary branch
git merge --abort
git checkout "${CURRENT_BRANCH}"
git branch -D temp-merge-branch

# Display a warning message if the conflict count exceeds the threshold
if [ "${CONFLICT_COUNT}" -gt "${CONFLICT_THRESHOLD}" ]; then
  echo "Warning: There are ${CONFLICT_COUNT} potential merge conflicts between ${CURRENT_BRANCH} and ${MAIN_BRANCH}. Consider merging and resolving conflicts soon."
fi

