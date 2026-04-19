# Workflow: Commit to Dev Branch

Stage and commit changes to the current development branch.

## Prerequisites

- On a feature branch (not main)
- Changes ready to commit

## Steps

1. Run `git status` to see all changes.
2. Run `git diff` to review staged and unstaged changes.
3. Run `git log --oneline -5` to see recent commit style.
4. Stage relevant files (prefer specific files over `git add -A`).
5. Draft a concise commit message following repo conventions.
6. Commit the changes.
7. Verify with `git status`.

## Rules

- Never commit `.env`, secrets, or credentials.
- Never commit to main directly.
- Use descriptive commit messages (what + why).
- Prefer specific file staging over blanket adds.
