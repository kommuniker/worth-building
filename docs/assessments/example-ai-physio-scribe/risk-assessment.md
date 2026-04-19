# Risk Assessment (FICTIONAL EXAMPLE)

> Illustrative only.

## Risk Register

| Risk | Category | Likelihood | Impact | Score | Priority |
|------|----------|------------|--------|-------|----------|
| PT documentation pain is real but not urgent enough to unlock $150-300/therapist/month budget | Market | 3 | 3 | 9 | Critical |
| Horizontal scribe (e.g. NotePal, ScribeMD Pro) adds PT-specific support within 12 months | Competitive | 2 | 3 | 6 | Moderate |
| 2-person team cannot realistically navigate HIPAA + BAA compliance without delay | Regulatory | 2 | 3 | 6 | Moderate |
| AI hallucination in a session note causes a denied insurance claim | AI Reliability | 2 | 3 | 6 | Moderate |
| No PT clinical network means first 50 outreach attempts have <10% reply rate | Execution | 3 | 2 | 6 | Moderate |
| Foundation model pricing changes make per-therapist economics unworkable | Model Dependency | 1 | 3 | 3 | Low |

## Gate Risks

| Gate | Status | Risk View |
|------|--------|-----------|
| Founder / Team Right To Win | Concern | Technical fit is strong, but lack of a PT network can block discovery and design-partner recruitment. |
| Capital Path And Funding Fit | Pass | Validation and concierge pilots fit a bootstrap budget. |
| Validation Cost And Reversibility | Pass | The highest-risk demand assumption is testable before product build. |
| Platform / Channel / Customer Dependency | Pass | No single channel or model provider is structurally required. |
| Regulatory / Legal / Operational Readiness | Concern | HIPAA and note-authenticity controls are known paths but cannot be deferred. |

## Critical Risks

### 1. PT documentation pain is real but not urgent

- **Description**: GP documentation pain is well-documented and urgent; PT
  notes are shorter and may be normalized as "just part of the job".
  Clinics may see the problem as real but not pay to solve it.
- **Likelihood**: High (3). We have no direct evidence beyond analogy to
  physicians.
- **Impact**: High (3). If this is false, there is no business — the tool
  solves a problem nobody will pay for.
- **Mitigation**: The RAT (see `rat-experiment.md`) is specifically
  designed to test this assumption with a landing page + LinkedIn ads
  before any real build investment.
- **Contingency**: On fail, either pivot to an adjacent vertical with
  measurably more urgent documentation pain (chiropractic? mental health
  therapy?) or kill the idea.

## Moderate Risks

### Horizontal scribe adds PT support

- **Mitigation**: Speed-to-market advantage via vertical depth + data
  flywheel. Every month of head start compounds.
- **Contingency**: If a well-funded horizontal adds PT during validation,
  pivot toward a deeper workflow layer (e.g. home exercise program
  generation + patient follow-up) where horizontal players are less
  willing to go.

### HIPAA + BAA compliance timeline

- **Mitigation**: Use a HIPAA-compliant infrastructure provider (AWS
  HIPAA-eligible services with signed BAA) from day one; no custom
  compliance work.
- **Contingency**: If compliance drags past 60 days, delay pilot launch
  and run the RAT landing page first so the idea is validated before
  compliance sunk cost.

### AI hallucination in clinical notes

- **Mitigation**: Therapist reviews and approves every note before EHR
  submission (human-in-the-loop). The product saves time by writing the
  first draft, not by bypassing review.
- **Contingency**: If correction rate is high (>20% of notes require
  substantial edits), the value prop collapses — therapist review time
  approaches typing time.

### No PT clinical network

- **Mitigation**: Deliberate outreach strategy: state PT association
  newsletters, clinic owner LinkedIn outreach, possibly an advisory role
  with a respected PT educator.
- **Contingency**: If unable to recruit 2-3 design partners in 90 days,
  park the idea — the distribution weakness would become the primary
  bottleneck, not the validation.

## Overall Risk Profile

**Medium.** The critical market-urgency risk dominates; every other risk
is moderate and has a plausible mitigation. The RAT test isolates the
one risk that could kill the idea, before the team commits real build
cost.

## Go / No-Go Risk View

Proceed to Validate-first. Do not skip the RAT. Do not build product
until the urgency signal passes.
