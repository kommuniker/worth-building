# Export Handoff To Meta-template

Use this after an idea has earned `Build now`.

## Goal

Copy a standardized business handoff package into the target `Meta-template`
repo so product specification can start from a qualified wedge.

## Inputs

- Completed assessment in `docs/assessments/{idea-name}/`
- Completed research in `docs/research/{idea-name}/`
- Filled `docs/assessments/{idea-name}/meta-template-handoff.md`

## Command

```bash
scripts/export-handoff <idea-name> [target-meta-template-repo]
```

For public clones, pass the target repo path explicitly. Teams can set
`handoff.build_repo_template` in `project.manifest.yaml` if they want a
local default.

## Exported Package

The script copies these artifacts into:

`docs/business-point-of-departure/{idea-name}/`

- `business-context.md`
- `export-manifest.json`
- `idea-brief.md`
- `viability-score.md`
- `recommendations.md`
- `full-report.md`
- `executive-summary.md`
- `risk-assessment.md`
- `market-overview.md`
- `competitors.md`
- `revenue-model.md`
- `sources.md`

It also refreshes:

`docs/business-point-of-departure/business-context.md`

to match the exported idea's handoff file.

The package-level `export-manifest.json` records what was exported, from where,
and when.

## Rules

- Export only `Build now` ideas.
- Refuse to export if qualification score is below `70/100`.
- Refuse to export if defensibility score is below `60/100`.
- Refuse to export if blocker gates remain in the viability score or risk
  assessment.
- Refuse to export if the handoff file still has placeholders.
- Refuse to overwrite an existing exported package.
