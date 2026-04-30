# /assess - Backend bootstrap (use /qualify instead for normal flow)

When this command is invoked:

`/assess` exists for users who explicitly want a terminal-first
bootstrap. **For the normal conversational qualification flow, use
`/qualify <idea>` instead** — the agent invokes the bootstrap for you.

If the user genuinely wants the terminal-first path:

1. parse the idea name argument or ask for one
2. run `scripts/assess "{idea-name}"` and stream its output
3. then offer to continue conversationally with the
   `/qualify <idea>` flow, or hand control back to the user

If the user typed `/assess` by mistake (most likely), redirect them
gently to `/qualify <idea>`.

Follow:

- `docs/runbooks/run-an-assessment.md` → "Terminal Fallback"
- `core/prompts/workflows/qualify-idea.md`
