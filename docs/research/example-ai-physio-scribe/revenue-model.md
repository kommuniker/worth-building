# Revenue Model (FICTIONAL EXAMPLE)

> Illustrative only. All numbers invented to demonstrate the framework.

## Customer Size Classification

Average clinic buys ~3.5 therapist seats at launch. At a $2,400/year
midpoint ARPA (= $200/therapist/month × 3.5 therapists × 12):

| Customer type | ARPA | Target clinic | Acquisition method |
|---------------|------|---------------|---------------------|
| Deer | ~$7-8K/year for a 3-5 therapist clinic | Our beachhead | Inside sales + inbound |

Classification: **Deer** — aligns with inbound + founder-led sales, which
matches the team's distribution strengths. Pricing does not require
enterprise field sales.

## Pricing Model

- **Base**: $200/therapist/month, month-to-month or annual (10% discount
  annual).
- **Early-access pricing** during first 12 months: $150/therapist/month
  locked for 24 months, used as a wedge for design partners.
- **Free trial**: 14 days with real patient data (after BAA signed).
- **No setup fees**.

Pricing-to-acquisition sanity check (see `core/prompts/roles/revenue-analyst.md`):
Deer-level ARPA ($7-8K) fits inside-sales or strong inbound. The team can
execute via PLG + founder-led outreach without a sales hire. Pricing and
acquisition motion match.

## Unit Economics (Base Case)

| Metric | Value | Assumption |
|--------|-------|------------|
| Monthly price | $200/therapist | Midpoint of $150-300 range |
| Annual price | $2,160/therapist | 10% discount on annual |
| Clinic average seats | 3.5 therapists | Beachhead average |
| ARPA (annual) | $7,560 | $2,160 × 3.5 |
| CAC (target) | $600/clinic | Founder-led outreach + LinkedIn ads, 2% ad-to-paid |
| Monthly churn | 3% at 12 months | Assumed (comparable to vertical SaaS) |
| Average lifetime | 33 months | 1 / churn |
| LTV | ~$20,000/clinic | ARPA × (lifetime / 12) × 0.95 gross margin |
| LTV:CAC | ~33:1 | Strong if CAC assumption holds |
| Payback period | ~0.9 months | Month 1 almost covers acquisition |
| Gross margin | ~70% | Infrastructure + AI inference costs ~$60/therapist/month |

## Comparison To Benchmark (NotePal)

| Metric | NotePal (est) | Us (hypothesis) | Gap |
|--------|----------------|-----------------|-----|
| Monthly price | $99/clinician | $200/therapist | 2x — must justify with vertical depth |
| Gross margin | ~75% | ~70% | Slightly worse due to fine-tuning costs |
| LTV:CAC | ~20-25:1 (rumored) | ~33:1 projected | Higher if premium pricing holds |

Premium pricing is the riskiest assumption on this sheet. If it collapses
to $99/therapist, LTV drops to ~$10K and LTV:CAC to ~17:1 — still healthy
but much tighter.

## Scenario Analysis

| Scenario | ARPA | 3-yr SOM clinics | Year-3 ARR |
|----------|------|-------------------|------------|
| Best | $9,000 | 1,000 | $9M |
| Base | $7,560 | 660 | $5M |
| Worst (price collapse to horizontal) | $4,200 | 500 | $2.1M |

## Capital Needed

- **To first paid pilot**: ~$3K (landing page + ads + BAA-compliant infra
  setup cost).
- **To 10 paying clinics** (~$75K ARR): ~$15K (ongoing infra + 2 founders'
  time for 6 months).
- **To sustainability** (~$500K ARR, 65 clinics): ~$60K cash burn, mostly
  infrastructure + fine-tuning costs. Founder salaries from revenue after
  month 12.

Bootstrap-compatible. No funding required.

## Capital Requirements And Funding Fit

The idea fits a bootstrap-first capital path. The first real demand
signal costs about $500. The first paid pilot requires only modest
compliance and infrastructure spend. The product does not need a sales
team, inventory, hardware, or long implementation projects before proof.

The main capital risk is hidden compliance cost. If BAA-covered
infrastructure, logging, and clinical review workflows push first-pilot
setup above $10K or beyond 60 days, the team should pause until the RAT
shows demand clearly enough to justify that spend.

## Validation Cost And Reversibility

- RAT landing-page test: ~$500
- 3 concierge pilots at break-even: ~$2K setup + time
- Total pre-build validation spend: ~$3K

Every step is reversible until real product commit at ~month 4.

## Validation Budget

| Validation Step | Budget | Decision Signal |
|-----------------|--------|-----------------|
| Landing page plus LinkedIn ads | $500 | CTA and email conversion from qualified PT clinic-owner traffic |
| Discovery outreach to 50 owners | $0-200 | Reply rate and willingness to discuss paid pilots |
| BAA-covered concierge pilot setup | $2,000-3,000 | Ability to process real sessions safely enough for design partners |
| Three paid concierge pilots | Break-even target | Willingness to pay and note-correction burden |

## Revenue Quality Assessment

- **Recurring**: Yes. Monthly/annual subscription.
- **Expansion-friendly**: Yes. Clinics add therapists → seat growth.
  Additional modules (patient intake AI, home exercise app) available later.
- **Durable**: Moderate. Data flywheel + embedded workflow make churn
  meaningful friction once installed. Trust risk if accuracy degrades.
- **Capital-efficient**: Yes. Bootstrap-compatible; no venture scaling
  required.

## Summary

Unit economics are healthy under the base case. The critical lever is
whether premium pricing ($150-300/therapist/month) holds vs. horizontal
benchmark ($99). If it collapses, the business is still workable but
margin and growth slow. Price sensitivity should be a second-priority
validation after the urgency RAT.
