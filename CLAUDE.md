@AGENTS.md

## Claude-Specific Notes

- Keep shared project rules in `AGENTS.md`.
- Keep Claude-only commands, prompts, and settings under `.claude/`.
- The actual workflow logic lives under `core/`, not in Claude command files.
- Keep the Claude layer minimal. Prefer direct prompting unless a slash command
  materially exposes a shared workflow.
- Treat `project.manifest.yaml` and `.worth-building/project-context.json` as the
  shared machine-readable repo context.
- Use `scripts/validate-manifest` after manual manifest edits.
- Prefer `/qualify <idea>` as the primary user entry point.
- If the user types `qualify <idea>` in plain chat, begin the same workflow.
- Use `scripts/assess` only as internal bootstrap plumbing when needed.
- Use `scripts/check-assessment` before claiming an idea is decision-ready.
- Export decisions with `scripts/export-bundle`; use `scripts/export-handoff`
  only for teams that explicitly use Meta-template.
