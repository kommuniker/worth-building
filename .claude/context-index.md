# Claude Context Index - Worth Building

## Read Order

1. `AGENTS.md` — canonical shared rules
2. `project.manifest.yaml` — project configuration
3. `docs/runbooks/run-an-assessment.md` — operator flow
4. `core/prompts/workflows/qualify-idea.md` — conversational wizard
5. `.worth-building/project-context.json` — machine-readable mirror

## Preferred Commands

| Command               | Purpose                                      |
|-----------------------|----------------------------------------------|
| `/qualify`            | Start the Socratic qualification wizard      |
| `/assess`             | Backend bootstrap fallback                   |
| `scripts/check-assessment` | Verify the idea is decision-ready       |
| `scripts/compare-ideas` | Rank completed ideas and choose one        |
| `/research`           | Bootstrap decision-critical market research  |
| `/competitor-scan`    | Bootstrap competitor and moat analysis       |
| `/revenue-model`      | Bootstrap pricing and unit economics         |
| `/risk-check`         | Bootstrap risk scoring and disqualifiers     |
| `/generate-report`    | Bootstrap final decision memo outputs        |
| `scripts/export-bundle` | Export any verdict as a tool-agnostic bundle |
| `scripts/export-handoff` | Optional Meta-template handoff for Build-now ideas |

## Preferred Agents

| Agent                 | Purpose                                      |
|-----------------------|----------------------------------------------|
| `@market-researcher`  | Deep market analysis and TAM/SAM/SOM         |
| `@competitive-analyst`| Competitor mapping and positioning            |
| `@revenue-analyst`    | Pricing strategy and unit economics           |
| `@viability-scorer`   | Business viability dimension scoring          |
| `@report-generator`   | Compile research into structured reports      |
| `@risk-assessor`      | Technical, market, and regulatory risk eval   |

## Key Principle

Shared workflow logic lives in `core/prompts/`. Claude agents and commands are
thin wrappers that invoke those shared prompts. Do not duplicate business logic
in Claude-specific files. This repo stops at qualification; build execution
belongs downstream of the generic export bundle or an optional Meta-template
handoff.
