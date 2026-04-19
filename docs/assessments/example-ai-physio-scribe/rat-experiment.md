# Riskiest Assumption Test (FICTIONAL EXAMPLE)

> Illustrative only.

## Idea

AI scribe for physical therapy clinics — ambient AI that writes the
session note, codes the visit, and generates the home exercise
prescription.

## Assumption Map

| # | Assumption | Category | Confidence | Importance | Evidence So Far |
|---|------------|----------|------------|------------|------------------|
| A1 | PT clinic owners experience documentation pain with urgency similar to physicians | Desirability | Low | High | Analogy only. No direct interviews. |
| A2 | Clinics will pay $150-300/therapist/month for a PT-specialist scribe | Viability | Low | High | Analogous physician tools price $150-250/month. PT budgets untested. |
| A3 | PT sessions produce speech clean enough for AI transcription without heavy cleanup | Feasibility | Medium | Medium | General ambient scribe technology works in clinical settings. PT-specific sessions (with exercise instructions, patient chatter) not tested. |
| A4 | Horizontal scribes will not add PT-specific features in 12 months | Competitive | Medium | Medium | Informed guess from their 2024-25 roadmaps; no explicit signal either way. |
| A5 | 2-3 clinic owners will agree to be design partners within 90 days | Execution | Medium | High | No direct network, but state PT associations exist and can be reached. |
| A6 | HIPAA-compliant infrastructure is stand-up-able in under 30 days by a 2-person team | Feasibility | High | Medium | AWS HIPAA-eligible services are well-documented. BAA process is mechanical. |

## 2x2 Placement

- **Top-right (Validate first — high importance, low confidence)**: A1, A2
- **Top-left (Validate second — high importance, medium-high confidence)**: A5
- **Bottom-right (Investigate — uncertain but not fatal)**: A3
- **Monitor (important but known)**: A6

A1 and A2 are tied as the riskiest. We can test both in the same
landing-page test if we design the CTA correctly (interest + willingness
to enter a sales conversation at an implied price point).

## The Riskiest Assumption

**Assumption A1+A2 combined:** Independent PT clinic owners experience
documentation pain severely enough to click through to a paid early-access
waitlist at a price point implying $150-300/therapist/month.

**Category:** Desirability + Viability.

**Why this one:** If it's false, there is no business. The rest of the
moat analysis, team fit, and product design depend on this being true.
Every other risk has a mitigation path if A1+A2 passes; none have a path
if A1+A2 fails.

## Hypothesis

"We believe that US independent PT clinic owners (2-5 therapists) will
click through from a targeted LinkedIn ad to an early-access landing
page at a rate of at least 5% — because the documentation pain is real
enough and specific enough that a clearly PT-focused solution feels
materially different from horizontal scribes they've seen."

## Test Design

**Test method:** Landing page + LinkedIn ads (see
`core/templates/research/pretotype-menu.md` for the method menu).

**Why this method:** Fastest and cheapest behavioral signal. Measures
actual clicking and email submission — not interview politeness.
Quantitative pass/fail threshold is possible from ~100-500 qualified
visitors.

**Sample size target:** Minimum 100 qualified ad clicks through to
landing page. Target 300 for signal confidence.

**Timeline:** 2 weeks total — 2 days to build landing page + ad setup,
10 days to run the campaign, 2 days to analyze.

**Budget:** $500 LinkedIn ad spend + $0 landing page (Framer or Carrd
free tier).

**Owner:** Founder 1 (UX + landing page).

**Start date:** Monday, week 1.

**Review date:** Friday, week 2.

## Success Criteria

**Pass:** ≥ 5% click-through from qualified ad impressions to landing
page, AND ≥ 10% of landing page visitors submit the early-access form.
Combined: roughly 0.5% of targeted impressions convert to a qualified
lead with email — benchmark for a real B2B problem.

**Fail:** < 2% CTA click-through OR < 3% landing page → form submission
rate. Either indicates the targeting is right but the pain is not
urgent, or the targeting is wrong (in which case re-test with tighter
targeting once before killing).

**Inconclusive:** 2-5% CTA click-through, or 3-10% landing page
conversion, with fewer than 100 qualified clicks. In that case, extend
the campaign by 1 week with the same budget to gather more data.
Decide decisively at end of week 3.

## Anti-Gaming Measures

- **Require a business email** on the early-access form. Filter out
  consumer emails, students, and obvious tire-kickers.
- **LinkedIn targeting**: clinic owner OR clinical director OR
  "owner/operator" at a physical therapy clinic in the US. Exclude
  hospital systems (those are a different segment).
- **Landing page shows explicit price range** ("starts at $X/therapist/
  month — early-access pricing"). Filters out visitors who have no
  budget reality check. A free-only signup would inflate numbers without
  measuring willingness to pay.
- **Track completion funnel separately for cold traffic** (LinkedIn ads)
  vs. warm traffic (any direct shares from association newsletters).
  Only count cold-traffic signals toward pass/fail — warm traffic is
  biased.

## Result

Not run in this fictional example. In a real assessment, this section is
completed after the experiment and the verdict is updated only if the
pre-committed thresholds were met.

**What the data showed:** Not applicable in the illustrative example.

**Decision:** Validate first remains the correct verdict until the test is
actually run.

**What we learned that we did not expect:** Not applicable in the
illustrative example.

**Next assumption to test (if idea survives):** A5 — can we recruit 2-3
clinic owners as design partners within 90 days? Method: direct founder-led
outreach using the email list captured in the RAT as initial warm contacts,
plus state PT association newsletter placement.
