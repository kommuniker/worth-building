# Workflow: Council Deliberation

Multi-perspective, debiased second-opinion workflow for high-stakes or
borderline qualification decisions.

Based on the LLM Council pattern: six distinct analytical personas evaluate
the idea independently, rank each other's work blind, and a chairman
synthesizes the final verdict. The **blind peer-ranking** step is the
debiasing mechanic — it removes persona-based anchoring and forces each
perspective to judge the substance of the others, not their label.

## When To Use

Invoke the council when:

- **Borderline verdict zone**: qualification score 65-75 or defensibility
  score 55-65 — slight adjustments change the verdict.
- **Validate-first with high validation cost**: before the team spends real
  time or money on the validation experiment, get multi-perspective read on
  whether the premise even deserves it.
- **Build-now with 1-2 gate concerns**: use the council to stress-test
  whether the concerns are truly fixable or are actually Blockers.
- **User explicitly requests a second opinion** on a specific idea.
- **High-stakes commitment** (significant capital, multi-quarter timeline,
  strategic pivot).

Do **not** invoke for:

- Clear No-go or strong Build now verdicts (qualification <40 or >80 with
  defensibility >70 and no gate concerns). The council's value is in the
  borderline zone; clear verdicts do not need it.
- Early intake when the premise has not been deconstructed yet. Run
  `deconstruct-premise.md` first; if the premise is malformed the council is
  just six voices on fog.

## The Six Personas

Each persona brings a distinct frame. They are not generic analysts — they
weigh the idea through their own lens and may reach different conclusions
from the same evidence.

| Persona | Primary Concern | Strongest Signal | Typical Blind Spot |
|---------|----------------|------------------|---------------------|
| **The Operator** | Execution and day-to-day delivery. Can this team actually run this business week after week? Where does friction pile up? What breaks first? | Operational feasibility, workflow realism, team capacity | Can undervalue breakthrough upside if the path is operationally messy |
| **The Financier** | Unit economics and capital return. Does the math work per customer and at scale? What's the capital path to proof and sustainability? | LTV/CAC, payback, gross margin, capital efficiency | Can dismiss strong ideas if early unit economics look rough, even when a clear path to improvement exists |
| **The Skeptic** | Reasons this will fail. Hunts for the fatal flaw, hidden competitor, weak assumption, adoption barrier. Defaults to no until evidence compels yes. | Risk identification, assumption stress-testing, competitor/substitute discovery | Can be pathologically pessimistic; may find flaws in every idea |
| **The Visionary** | Upside potential. What adjacent opportunities does this open? How big could this become? What new categories or behaviors does this unlock? | Category creation, platform potential, second-order effects | Can inflate long-shot optionality into present-day value |
| **The Customer Advocate** | Does the buyer actually want this, and why? Reads the buyer's world from the buyer's chair. Rejects founder-centric framing. | Buyer urgency, willingness to pay, willingness to switch, real pain vs. assumed pain | May overweight stated preferences vs. structural market forces |
| **The Strategist** | Positioning, timing, and competitive dynamics. Why this wedge, why now, and why does the idea still win in 3 years? | Positioning, moat path, timing, competitive response | Can overweight clever positioning over boring execution realities |

## Protocol

### Stage 1 — Independent Assessment

Each persona produces its own assessment **without seeing the others' work**.
Each follows the same template but weighs dimensions through its own frame.

For each persona:

1. Read the idea brief, research files, and current viability score.
2. Draft an assessment in the voice of the persona — this is not a generic
   analysis with a label on top. An Operator talks about workflow; a
   Financier talks about payback; a Skeptic talks about what breaks.
3. Output a single file per persona in
   `docs/assessments/{idea-key}/council/01-independent/`:
   - `operator.md`
   - `financier.md`
   - `skeptic.md`
   - `visionary.md`
   - `customer-advocate.md`
   - `strategist.md`

Each assessment contains:

- Persona's summary read of the idea (2-4 sentences)
- Three strongest-signal observations from this persona's frame
- Three most-concerning observations from this persona's frame
- A persona-weighted verdict (Build now / Validate first / Park / No-go) with
  one-sentence reasoning
- The persona's recommended "first action this week" for the team

### Stage 2 — Blind Peer Ranking

The six assessments are anonymized — labeled **Council-A** through
**Council-F** in a random order. The persona-to-label mapping is stored
separately (see `council/02-mapping.md`, written but not read during
ranking).

Each persona then receives the anonymized bundle of all six assessments
(including its own, but it does not know which is its own) and ranks them
1-6 on merit.

Ranking criteria (make these explicit to each persona before it ranks):

- **Evidence quality**: is the assessment backed by specific facts or just
  opinion?
- **Decision utility**: does reading this change the team's next move?
- **Pressure-testing rigor**: does the assessment actually stress the idea,
  or just restate it?
- **Blind-spot detection**: does the assessment surface things other frames
  would miss?

Each persona's ranking output goes to
`docs/assessments/{idea-key}/council/03-rankings/` as one file per persona:

- `operator-ranking.md`
- `financier-ranking.md`
- etc.

Each ranking file contains the ordered list (1-6) with a one-sentence
justification per position — no access to the persona mapping.

### Stage 3 — Chairman Synthesis

The chairman reads:

- All six assessments (with the mapping now applied)
- All six rankings (now cross-referenced to personas)

Produces a final council artifact at
`docs/assessments/{idea-key}/council-deliberation.md` (template:
`core/templates/assessments/council-deliberation.md`) containing:

1. **Executive read**: 3-5 sentences stating the council's overall position.
2. **Convergence map**: where do 4+ personas agree? These are the robust
   findings.
3. **Divergence map**: where do personas disagree, and what does that
   disagreement reveal about the idea? Divergence is usually more informative
   than agreement.
4. **Blind-rank surprises**: which persona was ranked highest by peers? Which
   was ranked lowest? Does the highest-ranked assessment agree or disagree
   with the surface-level consensus? Peer rankings often rescue under-weighted
   frames (e.g., the Skeptic ranked high by the Visionary signals the idea's
   risks are real, not pessimism).
5. **Final verdict**: Build now / Validate first / Park / No-go, with the
   specific reasoning the council converged on.
6. **First action this week**: one concrete, named, time-bound action
   endorsed by the council.

The chairman is allowed to override the numerical majority if the blind
rankings or evidence quality warrant it. State the override explicitly with
reasoning.

## File Layout

For one council run on idea `{idea-key}`:

```
docs/assessments/{idea-key}/
├── council/
│   ├── 01-independent/
│   │   ├── operator.md
│   │   ├── financier.md
│   │   ├── skeptic.md
│   │   ├── visionary.md
│   │   ├── customer-advocate.md
│   │   └── strategist.md
│   ├── 02-mapping.md           # persona → anonymized label (A-F)
│   └── 03-rankings/
│       ├── operator-ranking.md
│       ├── financier-ranking.md
│       ├── skeptic-ranking.md
│       ├── visionary-ranking.md
│       ├── customer-advocate-ranking.md
│       └── strategist-ranking.md
└── council-deliberation.md     # final synthesis
```

## Principles

- **Blindness matters.** The anonymization step is not ceremonial. It
  prevents each persona from anchoring on the others' labels and is the
  mechanic that produces unexpected signal.
- **Persona voice, not generic analysis.** If all six assessments read the
  same, the council has failed. Each persona must weigh the evidence
  through its own frame.
- **Divergence > convergence.** Four personas agreeing is useful; one
  persona standing alone against five is often the most informative signal
  in the run.
- **Chairman judges, does not average.** The verdict is not the mean of
  persona votes. The chairman weighs evidence quality and blind rankings.
- **One council run per decision.** Do not re-run the council on slight
  adjustments. If the council didn't resolve it, the underlying evidence is
  too thin — go gather more data.
