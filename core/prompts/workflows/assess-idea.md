# Workflow: Assess Business Idea

Backend assessment workflow used underneath the conversational
`qualify <idea>` flow.

End-to-end workflow for qualifying whether a business idea is worth pursuing.

Use this workflow together with:

- `core/prompts/workflows/worth-building.md`
- `core/prompts/workflows/qualify-idea.md`
- `core/prompts/analysis/idea-qualification.md`

The real objective is not broad analysis. It is deciding whether the user
should build, validate, park, or reject the idea.

This workflow stops before product specs or implementation planning.
Completed decisions export through `scripts/export-bundle`; teams that
explicitly use Meta-template can additionally run `scripts/export-handoff`
for `Build now` ideas.

## Prerequisites

- A business idea to evaluate (can be vague — the workflow will refine it)
- Read `AGENTS.md` first

## Steps

### Step 1: Gather Context

Ask the user to describe their business idea. If vague, ask clarifying questions:

1. What problem does it solve?
2. Who is the target customer?
3. How would they use it?
4. What exists today (alternatives, workarounds)?
5. Why now? What changed that makes this possible/needed?
6. What is the initial beachhead and how would the first 10 customers be
   acquired there?
7. Why would customers switch from current behavior?
8. Why does this team have a right to win?
9. What is the cheapest way to test the riskiest assumption?
10. What capital is needed to reach proof and sustainability?
11. What could become defensible over time?

Start from `core/templates/assessments/idea-brief.md` and save the completed
brief to `docs/assessments/{idea-name}/idea-brief.md`.

### Step 2: Market Research

Use `core/prompts/roles/market-researcher.md` to:
- Estimate TAM/SAM/SOM
- Identify market trends and timing
- Segment the customer base

Start from templates in `core/templates/research/`.

Only do as much market research as needed to resolve decision-critical unknowns.

### Step 3: Competitive Analysis

Use `core/prompts/roles/competitive-analyst.md` to:
- Identify 5+ competitors (direct + indirect)
- Map the competitive landscape
- Find strategic gaps and positioning opportunities
- Judge whether incumbents can absorb the wedge quickly

### Step 4: Viability Scoring

Use `core/prompts/roles/viability-scorer.md` to:
- Score the idea with `core/prompts/analysis/idea-qualification.md`
- Score all 7 differentiation dimensions
- Apply the explicit final decision rule across qualification, defensibility,
  and gate risks
- Check red flags and green flags
- Determine the strategic archetype
- Write the honest build decision pressure test

### Step 5: Revenue Model

Use `core/prompts/roles/revenue-analyst.md` to:
- Identify pricing model
- Calculate unit economics
- Model financial scenarios
- Assess capital requirements and funding fit
- Judge whether this is a good business, not only a useful product

### Step 6: Risk Assessment

Use `core/prompts/roles/risk-assessor.md` to:
- Identify risks across all 7 categories
- Identify platform, channel, customer concentration, regulatory, and
  operational complexity blockers
- Score and prioritize risks
- Develop mitigation strategies

### Step 7: Generate Report

Use `core/prompts/roles/report-generator.md` to:
- Compile all findings into a full report
- Create executive summary and one-pager
- Deliver go/no-go/pivot recommendation
- State the final operating decision: build now, validate first, park, or no-go

### Step 8: Review with User

Present the findings and discuss:
- Does the score feel right?
- Any dimensions scored differently than expected?
- Does the final verdict follow the written decision rule?
- What are the next steps if proceeding?

### Step 9: Export The Decision

Export every final decision with `scripts/export-bundle <idea-name>`.

If the final decision is `Build now` and the team uses Meta-template,
complete `docs/assessments/{idea-name}/meta-template-handoff.md` and run
`scripts/export-handoff <idea-name> <target-meta-template-repo>`.

## Output

All files saved to `docs/assessments/{idea-name}/`:
- `idea-brief.md`
- `viability-score.md`
- `red-green-flags.md`
- `recommendations.md`
- `risk-assessment.md`
- `full-report.md`
- `executive-summary.md`
- `one-pager.md`

Research files saved to `docs/research/{idea-name}/`:
- `market-overview.md`
- `trends.md`
- `segments.md`
- `sources.md`
- `competitors.md`
- `positioning-map.md`
- `moat-comparison.md`
- `revenue-model.md`
- `unit-economics.md`
- `financial-scenarios.md`
