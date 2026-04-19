# Codex Context Index - Worth Building

## Read Order

1. `AGENTS.md` — canonical shared rules
2. `project.manifest.yaml` — project configuration
3. `docs/runbooks/run-an-assessment.md` — operator flow
4. `core/prompts/workflows/qualify-idea.md` — conversational wizard
5. `.worth-building/project-context.json` — machine-readable mirror

## Preferred Entry Points

| Phrase                   | Purpose                                   |
|--------------------------|-------------------------------------------|
| `qualify <idea>`         | Start the Socratic qualification wizard   |
| `scripts/assess`         | Backend bootstrap fallback                |
| `scripts/check-assessment` | Verify the idea is decision-ready       |
| `scripts/compare-ideas` | Rank completed assessments and pick one    |
| `scripts/research`      | Bootstrap decision-critical market research |
| `scripts/competitor-scan` | Bootstrap competitor and moat analysis   |
| `scripts/revenue-model` | Bootstrap pricing and unit economics       |
| `scripts/risk-check`    | Bootstrap risk scoring and disqualifiers   |
| `scripts/generate-report` | Bootstrap final decision memo outputs    |
| `scripts/export-bundle` | Export any verdict as a tool-agnostic bundle |
| `scripts/export-handoff` | Optional Meta-template handoff for Build-now ideas |

## Key Principle

Shared workflow logic lives in `core/prompts/`. Codex reads the same prompts
as Claude and Gemini. Do not duplicate business logic in Codex-specific files.
This repo stops at qualification; build execution belongs downstream of the
generic export bundle or an optional Meta-template handoff.
