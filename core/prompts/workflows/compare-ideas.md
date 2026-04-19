# Workflow: Compare Ideas

Canonical workflow for comparing multiple completed assessments and choosing
what to build next.

## Mission

Rank a set of candidate ideas and recommend a single priority.

## Required Inputs

For each idea:

- `docs/assessments/{idea-name}/executive-summary.md`
- `docs/assessments/{idea-name}/viability-score.md`
- `docs/assessments/{idea-name}/recommendations.md`
- `docs/assessments/{idea-name}/risk-assessment.md`

## Output

Save the comparison to:

- `docs/assessments/portfolio/{comparison-name}.md`

## Scoring Criteria

Use a 100-point weighted score:

- Defensibility: 20
- Customer urgency: 20
- Beachhead strength and distribution realism: 15
- Right to win: 15
- Capital efficiency: 10
- Speed to proof and reversibility: 10
- Strategic fit and opportunity cost: 10

## Decision Standard

Recommend one idea as the current priority and explain:

- Why it won now
- Why the runner-up lost
- What assumption must be validated next
- What would cause the ranking to change

## Constraints

- Do not let TAM dominate the ranking.
- Penalize ideas that depend on expensive distribution without a clear
  beachhead wedge.
- Penalize ideas that are easy to clone and hard to operationalize.
- Prefer ideas that can reach proof quickly without sacrificing long-term moat.
- Prefer ideas that are a better current use of founder time and scarce capital,
  not just ideas with slightly higher theoretical upside.
