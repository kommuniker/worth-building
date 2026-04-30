# Changelog

All notable changes to Worth Building are documented in this file.

The format is based on
[Keep a Changelog v1.1](https://keepachangelog.com/en/1.1.0/), and
this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] — 2026-04-29

First public release. Worth Building is now usable end-to-end as a
conversational AI idea-qualification tool with a complete worked
example, multi-tool adapters, and CI smoke tests.

### Added

- **Socratic `/qualify <idea>` workflow** — Claude-driven
  conversational qualification across 6 stages (Setup, Premise,
  Intake, Research, Verdict, Export) with 20 sub-steps.
- **`/scan <vertical>` workflow** — vertical opportunity scanning to
  find AI-native wedges before committing to a specific idea.
- **10-dimension qualification scorecard** (Problem, Buyer, Beachhead,
  Moat, Embedding, Revenue, Right-to-Win, Timing, Validation,
  Dependency).
- **7-dimension defensibility scorecard** (Data Moats, Switching
  Costs, Trust/Compliance, Niche Depth, Network Effects, Iteration
  Velocity, Hardware Integration).
- **6-persona council deliberation** for borderline verdicts (65-75
  qualification or 55-65 defensibility), with blind peer-ranking and
  chairman synthesis.
- **Riskiest-Assumption Test (RAT) experiment design** for `Validate
  first` verdicts, with pre-committed pass/fail criteria.
- **Tool-agnostic export bundle** (`scripts/export-bundle`) — produces
  a portable Markdown folder with `AI-PICKUP.md` so any downstream
  AI tool can consume the verdict without access to this repo.
- **Meta-template handoff** (`scripts/export-handoff`) for teams
  using the Meta-template build-repo convention.
- **Multi-tool adapters** — `.claude/`, `.codex/`, and `.gemini/`
  configurations, all thin wrappers over the shared rules in
  `AGENTS.md`.
- **Six sub-agents** under `.claude/agents/` — competitive-analyst,
  market-researcher, viability-scorer, revenue-analyst,
  risk-assessor, report-generator.
- **Three-line progress UI** in `/qualify` — Flow / Topic / Step
  with progress bars and stage banners, so users always know how
  many questions remain.
- **Worked example** at `docs/assessments/example-ai-physio-scribe/`
  — a complete `Validate first` qualification with all decision
  artifacts populated.
- **Public landing page** at [worthbuilding.dev](https://worthbuilding.dev/)
  with OG share card, 30-idea example carousel, and Plausible
  analytics gated by domain.
- **CI smoke tests** (`.github/workflows/ci.yml`) — manifest
  validation, worked-example assessment check, and export-bundle
  verification on every push and PR.
- **Operating runbooks** under `docs/runbooks/` —
  `run-an-assessment.md`, `compare-ideas.md`, `export-handoff.md`,
  `troubleshooting.md`, `council-deliberation.md`.
- **Quality-gate validation** via `scripts/check-assessment` and
  `scripts/validate-manifest`.
- **Public-facing project files** — `README.md`, `AGENTS.md`,
  `CLAUDE.md`, `GEMINI.md`, `CONTRIBUTING.md`,
  `CODE_OF_CONDUCT.md`, `SECURITY.md`, `LICENSE` (MIT),
  `NOTICE.md`.
- **Versioning baseline** — `VERSION` file, this `CHANGELOG.md`,
  and `scripts/release` for routine future tags.

[Unreleased]: https://github.com/kommuniker/worth-building/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/kommuniker/worth-building/releases/tag/v0.1.0
