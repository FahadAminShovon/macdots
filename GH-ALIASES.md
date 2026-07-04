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
| `gh up` | `git pull --rebase` | Pull with rebase |
| `gh start <branch>` | `gh up && git switch -c "$1"` | Pull and create new branch |
| `gh cleanup` | `git branch \| grep -vE ... \| xargs git branch -D` | Delete all branches except main, master, staging, qa, and current |

## Usage Examples

```bash
# Checkout PR #42
gh co 42

# Push current branch and set upstream
gh ps

# Update current branch with latest main
gh up

# Create new feature branch from latest main
gh start feature/new-feature

# Delete all local branches except main, master, staging, qa, and current branch
gh cleanup
```
