# Contributing To Worth Building

Thank you for considering a contribution. This repo is a qualification
framework, not a product — so contributions that sharpen the decision
quality of the qualification are especially valuable.

## What Contributions Are Welcome

- **New or sharper frameworks.** If you have a better way to score moats,
  a new qualification dimension with evidence, or a more calibrated decision
  rule, open an issue or PR with the rationale.
- **Role prompts.** The roles in `core/prompts/roles/` (competitive-analyst,
  market-researcher, revenue-analyst, risk-assessor, report-generator,
  viability-scorer) can always be tightened.
- **Forcing questions.** New Socratic questions that force specificity,
  especially ones that caught you out on a real idea you were considering,
  belong in `core/prompts/workflows/qualify-idea.md`.
- **Pretotype methods.** Additions to `core/templates/research/pretotype-menu.md`
  — new cheap validation experiments with concrete cost / timeline / signal
  data — are directly useful to every `Validate first` verdict.
- **Language translations** of the glossary (`docs/glossary/README.md`).
  English is the current canonical version. Translations should preserve
  acronyms and stay plain-language.
- **Worked example assessments.** Clearly-fictional full assessments that
  demonstrate a particular framework or edge case (e.g. Hair-on-Fire
  problem, Future-Vision verdict, borderline council-deliberation).
- **Bug fixes in scripts**, portability fixes, and documentation
  improvements.

## What Contributions Are Out Of Scope

- **Product architecture, stack choice, or implementation details.** This
  repo stops at "should we build this?". Implementation belongs to the
  downstream build-repo/tool the user hands off to.
- **Pitch-deck templates, investor outreach, sales playbooks.** Those are
  downstream of the qualification verdict, not part of it.
- **Politically charged or speculative scoring rubrics** that cannot be
  backed by evidence or industry consensus.

## Proposing A Change

1. **Open an issue first** for anything beyond a typo, layout tweak, or
   straightforward bug fix. Describe the problem you're solving and the
   approach you have in mind. This saves you from writing a PR that gets
   redirected.
2. **One concern per PR.** If you're adding a forcing question AND
   translating the glossary AND fixing a script bug, that's three PRs.
3. **Link the reasoning.** If your change is based on a framework, cite
   the source. If it's based on a bad verdict you got in practice, describe
   the situation.
4. **Keep the philosophy.** Changes that dilute default-skepticism, team-fit
   filtering, research-only-what-changes-the-decision, or
   qualification-stops-at-decision will get pushed back or rejected.

## Reporting A Bad Verdict

If you ran `/qualify` on a real idea and got a verdict that proved
materially wrong — either the idea was actually good and got parked, or the
idea was a dud and got `Build now` — that is genuinely useful information.

Open an issue with:

- The verdict the tool produced (no need to share the idea itself if it's
  private — abstract descriptions are fine)
- Which dimension or gate you believe mis-scored
- What happened in reality (if known) that contradicted the verdict
- Which framework or reasoning step you think is flawed

Calibration feedback from real-world use is the most valuable input this
project can receive.

## Style

- **Markdown, not rich text.** All prompts, workflows, and outputs are
  Markdown — portable between AI tools.
- **Plain English.** No MBA jargon without an explanation. The glossary
  exists for a reason.
- **Short sentences.** Qualification is a decision tool; dense prose hides
  weak reasoning.
- **Cite sources.** Market claims, industry data, and framework
  attributions all deserve citations. Fabricated numbers get removed.
- **Examples over adjectives.** "Acme Clinic spends $8K/month on
  transcription" beats "significant budget for transcription".

## Local Setup For Development

```bash
git clone https://github.com/kommuniker/worth-building.git
cd worth-building

# Copy the example team profile so the workflow scripts have something to read
cp .worth-building/team-profile.example.yaml \
   .worth-building/team-profile.yaml

# Verify the manifest is intact
scripts/validate-manifest
```

Most work is on Markdown files (prompts, templates, docs) — no build step
required.

## Branch And PR Rules

- Never commit directly to `main`.
- Feature branches off `main`: `feature/short-description`.
- PR titles < 70 characters; use the body for detail.
- Include a test plan (even for doc changes — how should a reviewer
  verify?).
- No force-push to `main`, no `--no-verify`, no amending merged commits.

## License

By contributing, you agree that your contributions are licensed under the
repository's MIT license.

## Questions

Open an issue. Short, specific, and rooted in a real use case beats abstract
critique.
