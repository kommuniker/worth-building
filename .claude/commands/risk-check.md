# /risk-check - Identify and score decision-critical risks

When this command is invoked:

`/risk-check` is a backend helper that fills the risk register at
`docs/assessments/{idea-key}/risk-assessment.md`. **The normal flow
is `/qualify <idea>`, which scores risks as part of Stage 4 ·
Research and Stage 5 · Verdict.** Use this command only to refresh
the risk register for an idea that already has a brief.

If the user genuinely wants to run a standalone risk pass:

1. parse the idea name argument or ask for one
2. run `scripts/risk-check "{idea-name}"` and stream its output
3. follow the role prompt in `core/prompts/roles/risk-assessor.md`

If the user has not yet qualified the idea, redirect to
`/qualify <idea>`.

Follow:

- `core/prompts/roles/risk-assessor.md`
- `core/prompts/workflows/qualify-idea.md` (Stages 3 & 4)
