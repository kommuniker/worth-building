# Workflow: Merge to Main

Create a PR and merge the current branch to main.

## Prerequisites

- All changes committed on feature branch
- Tests/quality gates passing
- Ready for merge

## Steps

1. Create backup branch: `<date>-BAK-<description>` from main.
2. Push feature branch to remote with `-u` flag.
3. Create PR using `gh pr create` with:
   - Short title (<70 chars)
   - Summary of changes in body
   - Test plan
4. Verify PR checks pass.
5. Merge PR.
6. Return to development branch.

## Rules

- Always create a backup branch before merging to main.
- Never force push.
- Never skip hooks.
- Verify CI/CD outcome before claiming success.
