# /competitor-scan - Bootstrap competitive analysis

When this command is invoked:

`/competitor-scan` is a backend helper that bootstraps competitor
research files for an idea that already has a brief. **The normal
flow is `/qualify <idea>`, which invokes competitive analysis as
part of Stage 4 · Research.** Use this command only if you
explicitly want to refresh the competitor map for an existing idea.

If the user genuinely wants to run a standalone competitor scan:

1. parse the idea name argument or ask for one
2. run `scripts/competitor-scan "{idea-name}"` and stream its output
3. follow the role prompt in
   `core/prompts/roles/competitive-analyst.md`

If the user has not yet qualified the idea, redirect to
`/qualify <idea>`.

Follow:

- `core/prompts/roles/competitive-analyst.md`
- `core/prompts/workflows/qualify-idea.md` (Stage 3 · Research)
