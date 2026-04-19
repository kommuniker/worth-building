# AGENTS.md - Worth Building Shared Instructions

Canonical shared instruction file for **all** AI coding agents working in this
repository. Tool-specific files (`.claude/`, `.gemini/`, `.codex/`) are adapters,
not policy stores.

## Project Scope

**Worth Building** is an AI-powered business idea qualification system. It
evaluates whether an idea is worth pursuing, with primary weight on
defensibility, buyer urgency, competitive pressure, initial beachhead quality,
distribution realism, and basic business quality.

The tool helps founders and product teams answer: *"Is this idea worth building
in an era where AI makes software trivial to create?"*

Worth Building stops at qualification and prioritization. It
does not own product architecture, implementation stack selection, or feature
delivery. If an idea earns `Build now` (or any verdict the team wants to
share), the next step is to export it — preferably as a generic
tool-agnostic bundle via `scripts/export-bundle`, or via
`scripts/export-handoff` into a specific build-repo template like
Meta-template when the team uses one.

## Conversational Entry Point

The canonical ways to start work in this repo are:

- `qualify <idea>` — evaluate a specific business idea
- `scan <vertical or theme>` — map one or more verticals to find where
  AI-native opportunities are strongest before choosing an idea

When the user types `scan <vertical>`:

- use `core/prompts/workflows/scan-verticals.md` as the workflow
- research the verticals using web search and available data
- save output to `docs/research/vertical-scans/`
- hand promising verticals to `qualify <idea>` if the user wants to go deeper

When the user types `qualify <idea>`:

- do not tell them to go run a script first
- bootstrap the assessment workspace internally if needed
- ask questions in a Socratic wizard flow
- ask exactly 1 question at a time by default
- only ask more than 1 question in the same turn if the user explicitly asks
  for a faster batch mode
- write the files as the conversation progresses
- use a clean slug-like idea key for paths even if the spoken idea name has
  spaces or non-ASCII characters

`scripts/assess` is a backend bootstrap helper, not the primary user interface.

## Core Capabilities

1. **Vertical Opportunity Scanning** - Proactively map industry verticals to
   identify which are ripe for AI-native disruption, before a specific idea
   exists. Use `core/prompts/workflows/scan-verticals.md`.
2. **Idea Qualification** - Decide whether an idea deserves pursuit, validation,
   parking, or rejection.
3. **Competitive Advantage Analysis** - Score whether the idea can become hard
   to copy after launch.
4. **Buyer And Market Validation** - Determine whether the pain is urgent
   enough and the market is attractive enough.
5. **Distribution Feasibility** - Judge whether the first customers are
   realistically reachable.
6. **Execution And Right-To-Win Analysis** - Judge whether the pursuing team
   has domain access, technical ability, or distribution leverage.
7. **Revenue And Capital Analysis** - Evaluate willingness to pay, pricing
   sanity, unit economics, and whether the capital path is realistic.
8. **Risk And Disqualifier Analysis** - Surface structural reasons the idea may
   fail even if it sounds attractive, including platform, regulatory, and
   AI reliability blockers.
9. **Decision Memo Generation** - Produce build / validate / park / no-go
   outputs that help the user decide what to pursue.

## Branch & PR Rules

- **main** is the stable branch. Never commit directly to main.
- Work on short-lived feature branches. Merge via PR after testing.
- Before a large merge to main, create a backup branch:
  `<date>-BAK-<description>`.
- No force pushes. No `--no-verify`.
- PR titles: short (<70 chars). Use the body for details.

## Secret Safety

- Never commit `.env`, API keys, tokens, passwords, or credentials.
- Never read or write files matching: `.env*`, `**/secrets/**`, `**/*.pem`,
  `**/*.key`, `**/*secret*`, `**/*credential*`.
- If a task requires secrets, document the expected env var names in
  `docs/runbooks/` without values.

## Working Rules

- **Straightforward solutions first.** Don't over-engineer.
- **Shared logic lives in `core/`.** Agent-specific files are thin wrappers.
- **Prompts are portable.** Write prompts that any AI agent can execute.
- **Be explicit about files.** Name paths, don't assume context.
- **Research before recommending.** Use web search, documentation, and data
  before making strategic recommendations.
- **Default to skepticism.** Assume every idea contains a fatal flaw — weak
  demand, hidden competitor, distribution failure, regulatory blocker, or no
  right to win — until evidence proves otherwise. Hunt for the flaw. Never
  validate an idea because it sounds clever or because the user is attached to
  it. If the idea survives rigorous scrutiny, give explicit earned praise and
  shift from flaw-hunting to execution enablement. The goal is not pessimism —
  it is to save the team from building something nobody wants.
- **Score honestly.** Never inflate viability scores to please the user.
- **Cite sources.** When presenting market data or competitive intelligence,
  note where it came from.
- **Preserve existing assessments.** Never overwrite a completed report without
  user confirmation. Archive the old version first.

## Documentation Output Locations

| Artifact                  | Location                                      |
|---------------------------|-----------------------------------------------|
| Viability assessments     | `docs/assessments/{idea-name}/`               |
| Portfolio comparisons     | `docs/assessments/portfolio/`                 |
| Market research           | `docs/research/{topic}/`                      |
| Competitive analysis      | `docs/research/{topic}/competitors.md`        |
| Runbooks & operations     | `docs/runbooks/`                              |
| Project meta              | `docs/meta/`                                  |

## Qualification Workflow

When a user asks to assess a business idea:

1. **Gather context** - Ask clarifying questions if the idea is vague.
   Prefer the conversational `qualify <idea>` wizard flow.
2. **Run qualification scoring** - Use
   `core/prompts/analysis/idea-qualification.md` and
   `core/prompts/analysis/business-viability.md` to score the idea.
3. **Research only what changes the decision** - Use the role prompts to
   validate or reject the important assumptions.
4. **Competitive mapping** - Identify who already owns the workflow and how the
   idea could still win.
5. **Beachhead, distribution, switching, and execution sanity check** -
   Evaluate whether the first narrow wedge is good, the first customers are
   reachable, likely to switch, and realistically reachable by this team.
6. **Revenue and capital sanity check** - Evaluate whether the business can
   fund its path to proof and sustainability.
7. **Risk assessment** - Identify structural disqualifiers and decision-critical
   risks, especially dependency, regulatory, and operational complexity
   blockers.
8. **Generate decision memo** - Compile findings into a structured assessment in
   `docs/assessments/{idea-name}/`. For borderline verdicts (qualification
   65-75, defensibility 55-65), `Build now` candidates with gate concerns, or
   user-requested second opinions, invoke the 6-persona council deliberation
   workflow at `core/prompts/workflows/council-deliberation.md`.
9. **Recommend next steps** - Provide `build now`, `validate first`, `park`, or
   `no-go` with explicit reasoning. Every decision memo must close with one
   concrete, time-bound "first action" the team can do within 7 days
   (specific, named, doable — not "validate demand" or "think about X").
10. **Export the decision** - Once the verdict is reached, the default
    export path is the **generic tool-agnostic bundle** via
    `scripts/export-bundle <idea-name>`. It works for every verdict (Build
    now, Validate first, Park, No-go) and produces a self-contained
    Markdown folder at `exports/{idea-key}/` that any AI agent or
    collaborator can consume without access to this repo. The bundle
    includes an `AI-PICKUP.md` that tells whichever downstream AI tool is
    used exactly what to do (execute the verdict) and what not to do (do
    not re-qualify, do not re-score, do not invent new positioning). See
    `core/templates/export-bundle/` for the bundle structure.
11. **Meta-template handoff is optional** - For teams using the
    Meta-template build-repo convention specifically, `Build now` verdicts
    can also be exported via `scripts/export-handoff <idea-name>` which
    writes into the target repo's `docs/business-point-of-departure/`.
    This requires a completed
    `docs/assessments/{idea-name}/meta-template-handoff.md` artifact.
    Teams not using Meta-template should prefer the generic bundle above.

## Portfolio Comparison Workflow

When a user asks to compare multiple business ideas:

1. Complete or collect assessments for each candidate idea.
2. Compare them on defensibility, customer urgency, beachhead strength and
   distribution realism, right to win, capital efficiency, speed to proof and
   reversibility, and strategic fit plus opportunity cost.
3. Recommend a single current priority unless the evidence is truly tied.
4. Save the comparison artifact to `docs/assessments/portfolio/`.

## Quality Gates

Before marking any assessment as complete:

- [ ] Team profile read and team fit assessed (build feasibility, distribution
  match, skill gaps, constraint compliance)
- [ ] Problem, buyer, and current alternatives clearly defined
- [ ] Why now, beachhead, and distribution path clearly defined
- [ ] Demand verified with at least 3 quantified signals (search volume,
  keyword difficulty, competitor traffic, CPC, trend velocity, existing spend,
  community evidence) — each with a cited source and pull date
- [ ] Founder/team right-to-win assessed explicitly
- [ ] Willingness to switch assessed explicitly
- [ ] Competitive advantage and moat path scored with justification
- [ ] Data flywheel assessed: does the product accumulate proprietary data that
  improves the AI, or is it an LLM wrapper with no compounding advantage?
- [ ] At least 5 competitors or substitutes identified and analyzed
- [ ] Revenue quality, capital requirements, and validation cost assessed
- [ ] Platform/channel/customer dependency assessed
- [ ] Regulatory and operational complexity blockers assessed explicitly
- [ ] Critical assumptions documented
- [ ] Red flags and green flags documented
- [ ] Final verdict follows the written decision rule across qualification,
  defensibility, and gate risks
- [ ] Build / validate / park / no-go recommendation with reasoning
- [ ] Every decision memo ends with one concrete, time-bound "first action"
  (specific + named + doable this week — not "think about X" or "validate
  demand")
- [ ] `Validate first` verdicts include a completed `rat-experiment.md`
  (riskiest assumption named, test designed, pass/fail criteria set
  numerically in advance)
- [ ] Report saved to `docs/assessments/{idea-name}/`
- [ ] `Build now` ideas include a completed `meta-template-handoff.md`

## Definition of Done

An assessment is done when:
1. The qualification report is complete and saved.
2. All quality gates pass.
3. The user has reviewed the findings.
4. Next steps are documented.

---

**Remember**: In 2026, building software is trivial. Defending it is hard.
Qualify aggressively, research only what changes the decision, and never rely on
features alone.
