# {{IDEA_INPUT}}

Business idea assessment bundle. Self-contained, tool-agnostic. Any AI agent
or human can read the files in this folder and understand what has been
decided and why.

**Verdict:** {{VERDICT}}

See `decision.md` for the reasoning.

## What This Is

This folder is a **business idea qualification bundle**. A separate tool
(Worth Building) evaluated this idea across market, customer,
competition, economics, risks, and team right-to-win. The bundle contains the
reasoning behind the verdict, the plan of action, and the context needed to
execute it.

The bundle is deliberately tool-agnostic. There is no dependency on any
specific code editor, AI model, or framework. An agent using Claude, ChatGPT,
Copilot, Cursor, Windsurf, Gemini, or any other tool can read these files and
pick up the work.

## How To Use This Bundle

### If you are implementing the idea

Read in this order and stop when you have enough context:

1. `decision.md` — what was decided and why
2. `idea.md` — one-page concept overview
3. `validation-plan.md` — the immediate plan (experiment or build step)
4. `risks.md` — what to watch for during execution
5. `competition.md` and `market.md` — external context
6. `scoring.md`, `economics.md`, `full-report.md`, `sources.md` — deeper reference

### If you are an AI agent consuming this bundle

Read `AI-PICKUP.md` first. It explains what to do and — just as importantly —
what not to do.

### If you are deciding whether to commit real time or money

Read `decision.md` and `risks.md`. Those two files carry the decision signal.

## Files In This Bundle

| File | Contents |
|------|----------|
| `README.md` | This file |
| `AI-PICKUP.md` | Instructions for AI agents picking up the bundle |
| `idea.md` | One-page overview: concept, customer, value |
| `decision.md` | Verdict, reasoning, what must stay true |
| `scoring.md` | Full dimensional scorecard with justifications |
| `recommendations.md` | Action plan and next steps |
| `validation-plan.md` | Designed experiment (Validate-first verdicts) |
| `risks.md` | Decision-critical risks and mitigations |
| `flags.md` | Red flags and green flags surfaced during assessment |
| `market.md` | Market context, demand signals, timing |
| `competition.md` | Competitive landscape |
| `economics.md` | Pricing and unit economics |
| `sources.md` | Citations for factual claims |
| `full-report.md` | Complete original assessment |
| `export-manifest.json` | Machine-readable metadata about the export |

Not every file is present in every bundle:

- `validation-plan.md` is only written for `Validate first` verdicts.
- Some research files (`market.md`, `competition.md`, `economics.md`,
  `sources.md`) may be absent if research was light or not decision-critical.
- `flags.md` is optional and may not exist for every assessment.

If a file referenced above is missing, assume it was not needed for the
decision or was deemed out of scope. The core verdict (`decision.md`) and
plan (`recommendations.md` / `validation-plan.md`) are always present.

## Origin

- Idea key: `{{IDEA_KEY}}`
- Exported: `{{EXPORT_DATE}}`
- Source tool: Worth Building
- Bundle format: v1.0

## Sharing This Bundle

This folder is self-contained. Zip it and send it, commit it into the
receiving repo, drop it into a shared drive, or paste the contents into a
chat thread. An AI agent anywhere can read the files in order and understand
what has been decided.

If you iterate on the idea (scoping changes, validation results, new risks),
re-export the bundle rather than editing these files in place. The bundle is
a snapshot, not a living document.
