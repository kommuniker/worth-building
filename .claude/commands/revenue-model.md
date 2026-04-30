# /revenue-model - Bootstrap revenue and unit-economics analysis

When this command is invoked:

`/revenue-model` is a backend helper for filling
`docs/research/{idea-key}/revenue-model.md`,
`unit-economics.md`, and `financial-scenarios.md`. **The normal
flow is `/qualify <idea>`, which invokes revenue analysis as part
of Stage 4 · Research.** Use this command only to refresh the
revenue model for an idea that already has a brief.

If the user genuinely wants to run a standalone revenue analysis:

1. parse the idea name argument or ask for one
2. run `scripts/revenue-model "{idea-name}"` and stream its output
3. follow the role prompt in
   `core/prompts/roles/revenue-analyst.md`

If the user has not yet qualified the idea, redirect to
`/qualify <idea>`.

Follow:

- `core/prompts/roles/revenue-analyst.md`
- `core/prompts/workflows/qualify-idea.md` (Stage 3 · Research)
