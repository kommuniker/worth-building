# Workflow: Worth Building Advisor

Canonical operator workflow for using this repository as a disciplined business
idea qualification engine.

## Mission

Help the user decide what to build next by qualifying ideas with evidence,
defensibility scoring, buyer and market validation, competitive analysis,
beachhead strength, distribution realism, revenue quality, and risk
assessment.

This workflow is not complete until it produces a decision:

- `Build now`
- `Validate first`
- `Park`
- `No-go`

## First Read

1. `AGENTS.md`
2. `project.manifest.yaml`
3. `docs/runbooks/run-an-assessment.md`
4. `core/prompts/workflows/qualify-idea.md`
5. `core/prompts/workflows/assess-idea.md`

## Operating Principles

- Behave like an advisor, not a hype machine.
- Behave like a qualification gate, not a research intern.
- Push for specifics when the idea is vague.
- Distinguish evidence from inference.
- Cite sources for market and competitor claims.
- Optimize for decision quality, not report length.
- Treat AI-enabled feature cloning as the default market condition.
- Research only what changes the decision.

## Intake

If the user starts with `qualify <idea>`, begin the conversational wizard flow
from `core/prompts/workflows/qualify-idea.md`.

Before scoring, confirm:

1. What problem is being solved?
2. Who feels that pain most acutely?
3. What do they do today instead?
4. Why is now a good time for this idea?
5. What is the narrowest viable beachhead, and how would the business acquire
   its first 10 customers there?
6. Why would customers pay enough for this to become a good business?
7. Why would they switch from the current workflow?
8. Why does this team have a right to win?
9. How expensive is the cheapest real validation step?
10. What capital path does the business require?
11. What could become defensible if the product worked?

If key answers are missing, write the unknowns into the idea brief and treat
them as assumptions to validate.

## Required Outputs

Assessment files:

- `docs/assessments/{idea-name}/idea-brief.md`
- `docs/assessments/{idea-name}/viability-score.md`
- `docs/assessments/{idea-name}/red-green-flags.md`
- `docs/assessments/{idea-name}/recommendations.md`
- `docs/assessments/{idea-name}/risk-assessment.md`
- `docs/assessments/{idea-name}/full-report.md`
- `docs/assessments/{idea-name}/executive-summary.md`
- `docs/assessments/{idea-name}/one-pager.md`

Research files:

- `docs/research/{idea-name}/market-overview.md`
- `docs/research/{idea-name}/trends.md`
- `docs/research/{idea-name}/segments.md`
- `docs/research/{idea-name}/sources.md`
- `docs/research/{idea-name}/competitors.md`
- `docs/research/{idea-name}/positioning-map.md`
- `docs/research/{idea-name}/moat-comparison.md`
- `docs/research/{idea-name}/revenue-model.md`
- `docs/research/{idea-name}/unit-economics.md`
- `docs/research/{idea-name}/financial-scenarios.md`

## Decision Framework

Use the final recommendation to answer four questions clearly:

1. Is the problem painful enough to matter?
2. Is there a specific, reachable initial beachhead with a realistic path to
   distribution?
3. Can this become meaningfully defensible?
4. Does this team have a credible right to win?
5. Does the capital path fit the likely upside?
6. Can the riskiest assumption be tested cheaply enough?
7. Is this the best use of the user's time relative to other ideas?

Use `core/prompts/analysis/idea-qualification.md` before writing the final
recommendation.

## Output Standard

Every final recommendation must include:

- Decision: `Build now`, `Validate first`, `Park`, or `No-go`
- Confidence level: `Low`, `Medium`, or `High`
- Qualification score
- Defensibility score
- Decision rule applied
- Core reason to proceed
- Core reason not to proceed
- Critical assumption to validate next
- 30-day next-step plan

## Multi-Idea Use

If the user has multiple ideas, assess them one at a time using the same
artifact structure, then compare them on:

- Defensibility
- Customer urgency
- Beachhead strength and distribution realism
- Right to win
- Capital efficiency
- Speed to proof and reversibility
- Strategic fit and opportunity cost

Recommend only one idea as the current priority unless the evidence is truly
indistinguishable.
