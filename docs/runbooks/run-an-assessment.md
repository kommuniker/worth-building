# Run An Assessment

Use this repository as an idea qualification system, not just a research tool.

## Goal

For each idea, end with a clear decision:

- `Build now`
- `Validate first`
- `Park`
- `No-go`

## Recommended Flow

1. Start by telling the agent: `qualify <idea>`.
2. Let the agent bootstrap the workspace internally if needed.
3. Answer the wizard questions in small batches.
4. If the idea comes from another repo such as `Meta-template`, record the
   source and copy the raw brief into `docs/assessments/{idea-name}/idea-brief.md`.
5. Use `core/prompts/analysis/idea-qualification.md` first.
6. Fill only the research files needed to resolve decision-critical unknowns.
7. Score the idea in `docs/assessments/{idea-name}/viability-score.md`.
8. Write the final recommendation and report files.
9. Review the final recommendation against moat, competition, beachhead,
   distribution, and revenue quality.
10. Export the decision with `scripts/export-bundle <idea-name>`.
11. If the team explicitly uses Meta-template and the decision is `Build now`,
    complete `docs/assessments/{idea-name}/meta-template-handoff.md` and run
    `scripts/export-handoff <idea-name> <target-meta-template-repo>`.

## Terminal Fallback

If you explicitly want terminal-first bootstrapping, you can still run:

```bash
scripts/assess <idea-name>
```

## Non-Negotiables

- Cite sources for market and competitor claims.
- Separate facts, estimates, and assumptions.
- Score both business qualification and defensibility.
- Score the initial beachhead and expansion path explicitly.
- Score founder/team right-to-win, capital fit, validation cost, and dependency
  risk explicitly.
- Analyze at least 5 competitors or substitutes.
- End with a concrete build decision and next validation step.

## Decision Standard

Choose `Build now` only when all of the following are true:

- Qualification score is at least `70/100`.
- Defensibility score is at least `60/100`.
- The pain is real and specific.
- The buyer is identifiable and willing to switch.
- The initial beachhead is specific enough to win and reachable now.
- The wedge is defensible enough to survive cloning.
- The first distribution path is plausible.
- The team has a credible right to win.
- The capital path is acceptable for the likely upside.
- No gate blocker remains in regulatory, dependency, operational complexity, or
  validation risk.

Choose `Validate first` when the idea has promise but one core assumption is
still unproven or when a gate concern can be resolved with a bounded test.

Choose `Park` when the idea is interesting but timing, distribution, or moat is
currently weak, or when right-to-win and capital fit are not strong enough to
justify immediate pursuit.

Choose `No-go` when it is structurally easy to copy, hard to sell, or unlikely
to create compounding advantage.
