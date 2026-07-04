# GitHub CLI Aliases

Custom `gh` aliases for faster workflow.

## Installation

```bash
~/.macdots/gh-aliases.sh
```

## Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `gh co` | `pr checkout` | Checkout a PR |
| `gh ps` | `git push -u origin HEAD` | Push and set upstream |
| `gh pf` | `git push --force-with-lease origin HEAD` | Force-push HEAD (with lease) |
| `gh up` | `git pull --rebase` | Pull with rebase |
| `gh start <branch>` | `gh up && git switch -c "$1"` | Pull and create new branch |
| `gh cleanup` | `git branch \| grep -vE ... \| xargs git branch -D` | Delete all branches except main, master, staging, qa, and current |
| `gh cleanup-worktree` | `git worktree list ... \| git worktree remove --force` | Remove all linked worktrees (keeps the main working tree), then prune |
| `gh cleanup-all` | worktree removal + branch cleanup | Remove all linked worktrees, then delete all branches except main, master, staging, qa, and current |

## Usage Examples

```bash
# Checkout PR #42
gh co 42

# Push current branch and set upstream
gh ps

# Force-push the current branch safely (rejects if remote moved)
gh pf

# Update current branch with latest main
gh up

# Create new feature branch from latest main
gh start feature/new-feature

# Delete all local branches except main, master, staging, qa, and current branch
gh cleanup

# Remove all linked worktrees (keeps the main working tree)
gh cleanup-worktree

# Remove all linked worktrees, then delete all branches except main, master, staging, qa, and current
gh cleanup-all
```
