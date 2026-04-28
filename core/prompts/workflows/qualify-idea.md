# Workflow: Qualify Idea Socratically

Canonical conversational workflow for `qualify <idea>`.

This is the primary user interface for Worth Building. The user should not need
to run `scripts/assess` manually unless they explicitly want terminal-first
usage.

## Mission

Turn a rough idea into a real business decision through a guided conversation
that writes files as it goes.

The workflow is complete only when one of these outcomes is justified:

- `Build now`
- `Validate first`
- `Park`
- `No-go`

## Entry Trigger

Start this workflow when the user says something like:

- `qualify <idea>`
- `assess this idea`
- `help me evaluate this business idea`

## Operating Rules

- **Default stance: skeptical.** Assume the idea contains a fatal flaw until
  evidence proves otherwise. The job is not to validate the user's excitement —
  it is to find what would kill the idea, early and cheaply. Once the idea
  survives scrutiny, switch to earned praise and execution enablement.
- Bootstrap the workspace internally if it does not exist yet.
- Ask exactly 1 question at a time by default.
- Only ask more than 1 question in a turn if the user explicitly wants batch
  mode.
- After each answer, summarize what changed, update the files, and choose the
  single most decision-critical next question.
- Update the files after each meaningful user answer.
- Do not ask the user to restate information they already provided.
- Keep unknowns explicit in `idea-brief.md`.
- Research only when it changes the decision.

## Response Format (User-Facing Output)

Every reply in this workflow opens with a status header so the user
always knows where they are and how much is left. Use Markdown and
Unicode glyphs only — never ANSI escape codes (they do not render in
the Claude Code chat).

### Stage map (canonical, 6 stages)

| #   | Stage    | Emoji | Counted units                                |
| --- | -------- | ----- | -------------------------------------------- |
| 1   | Setup    | 🎯    | 4 team-profile questions                     |
| 2   | Premise  | 🔍    | single checkpoint                            |
| 3   | Intake   | 📋    | 9 fixed questions                            |
| 4   | Research | 🔬    | 4 areas: competitive, market, revenue, risk  |
| 5   | Verdict  | ⚖️    | single output                                |
| 6   | Export   | 🚀    | single output                                |

### Per-turn header

On every question turn, open with one line of this exact shape:

```
**{emoji} {Stage Name}** {bar} {done} / {total} · {pct}%
```

- `{bar}` uses `▰` for done and `▱` for remaining. Bar length equals
  `{total}` (so the intake bar is 9 chars wide, research is 4, setup
  is 4).
- `{pct}` is `done / total` rounded to the nearest integer.
- For single-step stages (Premise, Verdict, Export) skip the bar and
  show a status line instead, e.g. `**🔍 Premise Check** · deconstructing the idea`.

After the header, leave one blank line and then the question, with
the question title in **bold**:

```
**📋 Intake Wizard** ▰▰▰▱▱▱▱▱▱ 3 / 9 · 33%

**Q3 — Current alternatives & workarounds**

What is the user doing today to solve this problem? Spreadsheet?
Manual process? An incumbent tool they hate? Nothing at all?
```

### Stage banner

Print the stage banner **once**, on the turn that crosses into a new
stage. Subsequent turns within that stage use only the per-turn header.

```
╔══════════════════════════════════════════════╗
║  📋  STAGE 3 OF 6 · INTAKE WIZARD            ║
╚══════════════════════════════════════════════╝
```

Pad the banner so the right edge lines up; pick the same outer width
for every stage banner in a session for visual consistency.

### Style rules

- Use the emoji set above; do not invent new per-stage emoji.
- Bold for question titles; headers/banners only at stage transitions.
- Always recompute the bar from the canonical totals — do not let the
  bar drift if the user revisits an earlier question.
- If the user is on a font that mangles `▰ ▱ ╔ ═ ╗ ║ ╚ ╝`, fall back to
  ASCII (`#`, `-`, `+`, `|`) and keep the structure identical.

## Flow

### Stage 1: Start Quietly

> Print the **Stage 1 of 6 · Setup** banner on entry. Each team-profile
> question shows `**🎯 Setup** ▰…▱… N / 4 · …%`. If the team profile
> already exists and is current, skip to Stage 1.5 and start that
> banner instead.

1. Read `.worth-building/team-profile.yaml`. The team profile
   shapes all subsequent scoring — distribution realism, right-to-win,
   validation speed, and capital constraints are scored for *this specific
   team*, not a generic startup.

   **If `team-profile.yaml` does not exist, run the team-profile bootstrap
   before touching the idea.** Do not skip this step — scoring without a
   team profile produces weak verdicts.

   Bootstrap flow:

   a. Ask: **"Are you a solo developer, or do you have a team?"**
      Accept one answer at a time; do not batch this with other questions.

   b. **If solo** — copy
      `.worth-building/team-profile.example.yaml` (which is
      pre-filled with sensible solo-developer defaults) to
      `team-profile.yaml`. Then ask three short follow-ups to fill the
      personal fields that stay as placeholders in the example:
      - "What's your role — full-stack, AI/ML, design + frontend, or
        something else?"
      - "What are your top 2-3 strengths?"
      - "Any specific skill gaps you're aware of — for example,
        enterprise sales, regulatory navigation, native mobile?"
      Write those answers directly into team-profile.yaml.

   c. **If team** — run a short Socratic intake and write
      team-profile.yaml directly from the answers, using the example
      file's structure. Cover:
      - team size
      - each member's role and top 2-3 strengths
      - what the team can and cannot build without outside help
      - distribution strengths and weaknesses (which GTM motions this
        team can actually execute)
      - hard business constraints (bootstrap vs. funded, time horizon,
        validation budget)
      - known skill gaps
      - what an ideal idea looks like for this team

   d. **After writing** — show the user the resulting team-profile.yaml
      and ask: "Does this look right before we qualify the idea?" Allow
      edits before proceeding.

2. Derive a clean internal idea key from the user-provided idea name.
3. If the assessment workspace does not exist, bootstrap it internally.
4. Start the conversation, not a script tutorial.

### Stage 1.5: Deconstruct The Premise

> Print the **Stage 2 of 6 · Premise Check** banner on entry. Single
> checkpoint, so use the status line `**🔍 Premise Check** · deconstructing the idea`
> rather than a progress bar.

Before intake, run the 4-layer deconstruction funnel from
`core/prompts/workflows/deconstruct-premise.md`:

1. **Language precision** — are the key terms in the idea defined concretely?
2. **Assumption audit** — what is being assumed that might not be true?
3. **Causal logic** — does the proposed reasoning actually hold?
4. **Evidence sufficiency** — is there enough data to justify the claims?

Skip intake if a layer reveals a malformed premise. Reframe with the user
first. A clean premise makes the rest of the workflow meaningful; a vague one
wastes effort.

For briefs that are already precise, well-reasoned, and evidenced, note that
the premise survived deconstruction in one line and proceed to Stage 2.

### Stage 2: Intake Wizard

> Print the **Stage 3 of 6 · Intake Wizard** banner on entry. Each
> question opens with `**📋 Intake Wizard** ▰…▱… N / 9 · …%` so the
> user always sees how many questions remain.

Gather the core inputs one question at a time:

1. Problem and urgency
2. Primary user and economic buyer
3. Current alternatives and workarounds
4. Why now
5. Initial beachhead and first distribution path
6. Willingness to pay and willingness to switch
7. Founder/team right to win
8. Fastest proof and capital constraints
9. Defensibility hypothesis

Write the answers into:

- `docs/assessments/{idea-key}/idea-brief.md`

If answers are weak or vague, convert the gaps into explicit open questions.

#### Forcing Questions

At any point where an answer is thin or generic, force specificity with one
of these. They override polite hedging and reveal whether the idea is real.

- **Desperate specificity.** "Name ONE specific person — title, company type,
  geography — who would pay for this *this week*. What is the consequence for
  them if they do not solve this problem?" If the user cannot name one person
  and a concrete consequence, the idea is too vague or the urgency is imagined.
  Surface this as a problem-severity red flag and work with the user to narrow
  the wedge before scoring.
- **Observation test.** "If you watched the target user try this without
  helping them — what would they actually do? Where would they get stuck?"
  Reveals UX and workflow assumptions the user has not tested.
- **Future-fit / anti-hype.** "Why does this product become *more* essential
  in three years, not less?" Ideas that ride temporary hype fail this question.
  Look for compounding — network effects, data moats, switching costs,
  embedded workflows — not just "the category is hot right now".

Use these as needed during intake, not as a fixed sequence. If the user
struggles with any of them, that is the information.

### Stage 3: Decision-Critical Research

> Print the **Stage 4 of 6 · Research** banner on entry. Track the
> four research areas (competitive, market, revenue, risk) with
> `**🔬 Research** ▰…▱… N / 4 · …%`, advancing the counter as each
> area reaches "decision-sufficient" evidence.

Only after intake is strong enough:

- fill the minimum market files needed to judge timing and market size
- identify at least 5 competitors or substitutes
- test whether the buyer, beachhead wedge, and distribution path look real
- model rough revenue quality and unit economics
- identify structural risks

Write into the standard assessment and research files as evidence develops.

### Stage 4: Decision

> Print the **Stage 5 of 6 · Verdict** banner on entry. Use the status
> line `**⚖️ Verdict** · drafting decision memo` while writing the
> output files.

Write:

- `viability-score.md`
- `red-green-flags.md`
- `recommendations.md`
- `risk-assessment.md`
- `full-report.md`
- `executive-summary.md`
- `one-pager.md`

Then give the user a clear verdict with the next best step.

#### Optional: Council Deliberation

Consider invoking the 6-persona council deliberation (see
`core/prompts/workflows/council-deliberation.md`) when:

- qualification score lands 65-75 or defensibility score 55-65 (borderline
  verdict zone),
- a `Build now` candidate has 1-2 `Concern` gates that need stress-testing,
- a `Validate first` verdict is about to trigger expensive or slow
  validation, or
- the user explicitly asks for a second opinion.

The council runs six personas independently, peer-ranks them blind, and
produces a chairman synthesis. Its value is in borderline or high-stakes
decisions; skip it for clear Build now or clear No-go verdicts.

### Stage 5: Export The Decision

> Print the **Stage 6 of 6 · Export** banner on entry. Use the status
> line `**🚀 Export** · packaging the decision bundle` while running
> the export.

Once the verdict is reached, offer the user the generic tool-agnostic
bundle as the default export path. It works for every verdict and produces
a portable Markdown folder that any AI agent or collaborator can consume:

```
scripts/export-bundle <idea-name>
```

Output lands at `exports/{idea-key}/` with a README, an AI-PICKUP guide for
downstream agents, and renamed copies of the assessment and research files
under generic names.

For teams using the Meta-template build-repo convention specifically, a
`Build now` verdict can additionally be exported via
`scripts/export-handoff <idea-name>` into that target repo. This requires
completing `meta-template-handoff.md` first.

Teams not using Meta-template should use the generic bundle and ignore the
Meta-template path.

## Conversation Pattern

Use this cadence:

1. ask one focused question
2. summarize what is now understood
3. identify the most important unknown
4. ask the next question

Avoid long surveys and multi-question dumps.
