# Troubleshooting

Concrete recovery flows for the most common things that go sideways
during a `/qualify` session or while running the workflow scripts.
If your problem isn't listed, open an issue at
[github.com/kommuniker/worth-building/issues](https://github.com/kommuniker/worth-building/issues).

## I want to abandon a `/qualify` run partway through

Safe to do — the entire idea workspace under
`docs/assessments/{idea-key}/` and `docs/research/{idea-key}/` is
gitignored by default, so deleting it loses no committed work.

```bash
rm -rf docs/assessments/<idea-key>/
rm -rf docs/research/<idea-key>/
```

The `<idea-key>` is the slugified name (lowercase, hyphens). If
you're not sure what slug the bootstrap created, run
`ls docs/assessments/` to see.

To preserve a partial run as a learning artifact rather than
deleting, archive it instead:

```bash
mv docs/assessments/<idea-key> docs/assessments/<idea-key>-2026-04-29-abandoned
```

## `scripts/check-assessment` flagged template placeholders

The script fails when a research file still contains the literal
string `[Fill in]` (or similar template markers from
`core/templates/research/`). This means the qualify wizard
bootstrapped the file but did not finish populating it before the
verdict was attempted.

Canonical fill order — fix in this sequence:

1. `docs/assessments/{idea}/idea-brief.md` — must be complete.
2. `docs/research/{idea}/sources.md` — at least 5 entries.
3. `docs/research/{idea}/competitors.md` — at least 5 competitors.
4. `docs/research/{idea}/market-overview.md` — must include `## TAM`,
   `## SAM`, `## SOM`, `## Market Timing` sections.
5. `docs/research/{idea}/revenue-model.md`,
   `docs/research/{idea}/unit-economics.md`,
   `docs/research/{idea}/financial-scenarios.md` — must have
   `## Runway And Funding View` (financial-scenarios) and capital-fit
   notes (revenue-model).
6. `docs/assessments/{idea}/viability-score.md` — qualification +
   defensibility scores in `73/100` format (no spaces around `/`).
7. `docs/assessments/{idea}/recommendations.md` — `**Recommendation**:
   <Build now|Validate first|Park|No-go>` and `**Confidence**:
   <Low|Medium|High>` exactly, no extra parenthetical text.

Run `scripts/check-assessment <idea-key>` again after each fix —
the script reports per-gate pass/fail so you can see progress.

## `scripts/validate-manifest` failed

Most common causes:

- **Missing required field.** The script lists the missing field by
  name. Open `project.manifest.yaml`, add the field, re-run.
- **Indentation drift.** YAML is whitespace-sensitive. Run a YAML
  linter or paste into [yamlchecker.com](https://yamlchecker.com/) to
  spot the offending line.
- **Tab characters.** Use spaces only, two per indent level.
- **Stray trailing colon or duplicate key.** The script's grep-based
  check is liberal; YAML parsers are strict.

If validation passes locally but fails in CI, suspect a portable-grep
difference. The script is written to handle macOS BSD grep and Linux
GNU grep but edge cases exist; report them.

## I want to re-qualify an idea I already assessed

Do not overwrite the existing folder. Archive with a date suffix
first:

```bash
mv docs/assessments/<idea-key> docs/assessments/<idea-key>-2026-04-29
mv docs/research/<idea-key> docs/research/<idea-key>-2026-04-29
```

Then run `/qualify <idea>` again — the bootstrap creates fresh
folders. Compare the two assessments side by side to see what
changed.

## `/qualify` feels different than yesterday

A recent prompt edit may have changed the workflow's behavior. Check:

```bash
git log --oneline core/prompts/workflows/qualify-idea.md | head -5
```

If a recent commit looks suspicious, revert temporarily and re-run:

```bash
git diff <suspicious-sha>~1 <suspicious-sha> -- core/prompts/workflows/qualify-idea.md
```

The CI `validate-prompts` job catches structural regressions (missing
stages, removed sections) automatically — but it can't catch *tone*
or *pacing* drift.

## The export bundle is missing files

`scripts/export-bundle <idea-key>` only ships files that exist in
`docs/assessments/{idea}/` and `docs/research/{idea}/`. If a file
isn't there, it isn't exported. Run `scripts/check-assessment` first
to confirm completeness, then re-export.

## My team profile got out of date

`.worth-building/team-profile.yaml` is gitignored — your profile is
local and editable. To re-bootstrap from scratch, delete it and the
next `/qualify` run will recreate it via the wizard:

```bash
rm .worth-building/team-profile.yaml
```

Existing assessments scored against the old profile remain valid
artifacts — they reflect *the team you were when you ran the
assessment*, which is the right historical record. New assessments
will use the new profile.

## CI is red but I don't know why

Open the failing job in GitHub Actions and look for the first
`FAIL:` line — both `validate-manifest` and `check-assessment`
print specific per-check failures. The new `validate-prompts` job
prints which structural section is missing if a prompt edit
removed one.

## I want to make a release but don't know how

Maintainer flow:

```bash
scripts/release --patch --dry-run    # preview the version bump
scripts/release --patch               # stage VERSION + CHANGELOG changes
git commit -m "Release v0.1.1"
git tag v0.1.1
git push origin <branch> v0.1.1
```

The release script never pushes for you — review the staged
changes and run `git push` yourself.
