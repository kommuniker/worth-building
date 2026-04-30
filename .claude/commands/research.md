# /research - Bootstrap decision-critical market research

When this command is invoked:

`/research` is a backend helper for filling research files
(`docs/research/{idea-key}/`). **The normal flow is `/qualify <idea>`,
which invokes research only when an unknown actually changes the
verdict.** Do not run `/research` as a standalone exploration tool —
unbounded research is exactly what this project is designed to
prevent.

If the user genuinely needs to bootstrap research files for an idea
that already has a brief:

1. parse the idea name argument or ask for one
2. run `scripts/research "{idea-name}"` and stream its output
3. follow the role prompt in `core/prompts/roles/market-researcher.md`

If the user typed `/research` without an existing idea brief, redirect
to `/qualify <idea>`.

Follow:

- `core/prompts/roles/market-researcher.md`
- `core/prompts/workflows/qualify-idea.md` (Stage 3 · Research)
