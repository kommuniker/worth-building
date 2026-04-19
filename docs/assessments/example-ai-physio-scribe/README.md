# FICTIONAL EXAMPLE — AI Scribe For Physical Therapy Clinics

> **This is an illustrative example, not real market research.**
>
> All competitor names, numbers, and findings are invented to demonstrate
> what a complete qualification output looks like. Do not use any content
> in this folder for actual business decisions.

## What This Shows

A full qualification pass producing a **Validate first** verdict — the
most interesting case to illustrate because it ships with a designed RAT
experiment and a concrete next action.

Files in this directory:

- `idea-brief.md` — the Socratic intake, completed
- `one-pager.md` — the concept overview
- `executive-summary.md` — short decision memo
- `viability-score.md` — scored dimensions + decision rule applied
- `red-green-flags.md` — summary of positive and concerning signals
- `risk-assessment.md` — risk register
- `recommendations.md` — verdict + first action this week
- `rat-experiment.md` — designed validation experiment with pass/fail
- `full-report.md` — consolidated decision memo

Accompanying research (in `docs/research/example-ai-physio-scribe/`):

- `market-overview.md` — market context + quantified demand signals
- `trends.md` — trend read and implications
- `segments.md` — customer segment map
- `competitors.md` — 4-filter benchmark stress test + deep teardown
- `revenue-model.md` — pricing and unit economics
- `unit-economics.md` — core SaaS economics table
- `financial-scenarios.md` — best/base/worst case scenarios
- `positioning-map.md` — strategic positioning gap
- `moat-comparison.md` — defensibility comparison
- `sources.md` — fictional citation register

## How To Read It

For orientation: start with `executive-summary.md`, then `recommendations.md`,
then `rat-experiment.md`. The rest is reference detail that supports the
verdict.

For framework study: start with `viability-score.md` to see how the 10
qualification dimensions + 7 defensibility dimensions are scored and how the
decision rule combines them.

## Fictional Team Assumed

The scoring assumes a plausible 2-person technical team: one frontend/UX,
one AI/ML backend. Bootstrap-first. No enterprise sales experience. This
matches the default example in `team-profile.example.yaml`.

## How To Generate Your Own

```text
qualify <your idea>
```

The agent will produce the same structure for your real idea. Your
assessment will be gitignored by default (see `.gitignore`) — this
example is force-tracked so strangers can see what the output looks like.
