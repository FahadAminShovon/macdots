#!/bin/bash

# GitHub CLI aliases setup

gh alias set co "pr checkout"
gh alias set ps '!git push -u origin HEAD'
gh alias set pf '!git push --force-with-lease origin HEAD'
gh alias set up '!git pull --rebase'
gh alias set start '!gh up && git switch -c "$1"'
gh alias set cleanup '!git branch | grep -vE "^\*|^[[:space:]]*(main|master|staging|qa)[[:space:]]*$" | xargs git branch -D'
gh alias set cleanup-worktree '!git worktree list --porcelain | awk "/^worktree /{print \$2}" | tail -n +2 | while read -r wt; do git worktree remove --force "$wt"; done; git worktree prune'
gh alias set cleanup-all '!git worktree list --porcelain | awk "/^worktree /{print \$2}" | tail -n +2 | while read -r wt; do git worktree remove --force "$wt"; done; git worktree prune; git branch | grep -vE "^\*|^[[:space:]]*(main|master|staging|qa)[[:space:]]*$" | xargs git branch -D'

echo "gh aliases installed successfully!"
