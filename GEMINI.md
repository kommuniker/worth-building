# Gemini Project Instructions

Use `AGENTS.md` as the canonical shared project instructions for this
repository.

## Gemini-Specific Notes

- Keep Gemini CLI configuration in `.gemini/settings.json`.
- Do not duplicate shared project rules here unless Gemini requires a local shim.
- Treat `project.manifest.yaml` and `.worth-building/project-context.json` as the
  shared machine-readable repo context.
- Treat `qualify <idea>` as the primary user entry point.
- Use `scripts/assess` only as internal bootstrap plumbing when needed.
- Use `scripts/check-assessment` before claiming an idea is decision-ready.
- Export decisions with `scripts/export-bundle`; use `scripts/export-handoff`
  only for teams that explicitly use Meta-template.
