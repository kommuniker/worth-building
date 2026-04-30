# 6-Persona Council Deliberation

For borderline verdicts, the council is a debiased second opinion.
Six personas evaluate the idea independently, then peer-rank each
other blind. A chairman synthesizes. The blind peer-ranking step is
what removes persona-based anchoring and surfaces perspectives the
surface-level consensus hid.

## When to invoke

Trigger the council in any of these situations:

- **Qualification score 65-75 or defensibility score 55-65** — the
  borderline verdict zone where small framing differences flip the
  call.
- **`Build now` candidate has 1-2 `Concern` gates** that need
  stress-testing before committing build effort.
- **`Validate first` verdict is about to trigger expensive or slow
  validation** — worth confirming the verdict before spending the
  budget.
- **The user explicitly asks for a second opinion.**

Skip the council for clear `Build now` (qualification ≥ 80) or clear
`No-go` (qualification < 50). It adds cost without changing the
decision.

## How to invoke

In the conversational flow, after intake but before writing the
verdict files, tell the agent:

```text
Run the 6-persona council on this idea before finalizing the verdict.
```

The agent loads `core/prompts/workflows/council-deliberation.md` and
runs the protocol. No script invocation is needed — the council is
prompt-orchestrated.

## The six personas

| # | Persona | Lens |
|---|---|---|
| 1 | **Operator** | Can this team actually execute this in their constraints? Does the work-shape match the team-shape? |
| 2 | **Financier** | Unit economics, capital fit, runway, payback. Will this make money in a way that justifies the risk? |
| 3 | **Skeptic** | Where is the fatal flaw? What is the founder not letting themselves see? |
| 4 | **Visionary** | What is the largest version of this if it works? Is the ceiling worth the climb? |
| 5 | **Customer Advocate** | Would the named buyer actually pay? Do they have budget, urgency, and switching willingness? |
| 6 | **Strategist** | Is the wedge defensible? What compounds? What does the moat look like in 24 months? |

Each persona evaluates independently — they do not see each other's
verdicts during the first pass.

## Output shape

The council produces:

1. **Six independent verdicts** — each persona writes its own
   verdict + reasoning (`Build now` / `Validate first` / `Park` /
   `No-go`) without seeing the others.
2. **Blind peer-ranking** — each persona ranks the *other five*
   verdicts from most-to-least convincing, without seeing whose was
   whose. Personas are anonymized as A/B/C/D/E/F.
3. **Chairman synthesis** — a final synthesis pass reads all six
   verdicts and the peer-rankings, surfaces points of agreement and
   disagreement, and writes a council-level recommendation.

The council does not override the standard verdict — it informs it.
The maintainer reads the synthesis and decides whether to accept,
modify, or reject.

## Where the output lands

Council outputs are written into the assessment folder as
supplementary files:

```
docs/assessments/{idea-key}/
  council/
    01-operator.md
    02-financier.md
    03-skeptic.md
    04-visionary.md
    05-customer-advocate.md
    06-strategist.md
    peer-rankings.md
    chairman-synthesis.md
```

The chairman synthesis should also be referenced from
`recommendations.md` under a `## Council Synthesis` section if it
materially affected the verdict.

## Cost and time

- **Cost:** zero — pure prompt orchestration, no external services.
- **Time:** ~10-20 minutes of LLM round-trip time depending on idea
  complexity. Each persona writes 200-500 words; chairman synthesis
  is 300-800 words.
- **Token cost:** noticeable but bounded. Council adds roughly 5-10x
  the token budget of a normal Stage 5 verdict. Worth it for
  borderline calls; overkill for clear ones.

## Provenance

The council protocol was adopted from
[Claude-Business-Evaluator](https://github.com/danielrosehill/Claude-Business-Evaluator)
by Daniel Rosehill. See `NOTICE.md` for full attribution. Worth
Building's contribution is wiring the council into the qualify
workflow as a borderline-verdict accelerator and surfacing it as an
explicit operator runbook.
