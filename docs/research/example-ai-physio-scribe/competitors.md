# Competitors (FICTIONAL EXAMPLE)

> Illustrative only. All company names, numbers, and characterizations are
> invented to demonstrate the framework.

## Competitor Map

| Competitor | Type | Pricing (specific) | Target Segment | Threat Level | One-line Note |
|------------|------|---------------------|----------------|--------------|---------------|
| ScribeMD Pro | Direct (horizontal) | $150/clinician/month | Primary care, specialist physicians | Medium | Dominant horizontal incumbent; PT module rumored but not shipped |
| NotePal | Direct (horizontal) | $99/clinician/month + usage | Mid-market clinics | Medium | Aggressive pricing; primary care focus |
| FlowState-PT | Direct (vertical) | Bundled in EHR, ~$250/therapist/month total | PT + chiropractic clinics | High | Closest overlap but EHR-first, scribing is secondary feature |
| Clinic-AI Note | Adjacent vertical | $120/user/month | Chiropractic primarily | Low | PT support weak; chiropractic-first roadmap |
| Manual typing / EHR macros | Substitute | $0 explicit | All PT clinics today | — | The real incumbent |
| Offshore human scribes | Substitute | $8-15/note | Large clinics only | Low | Cost prohibitive for <10 therapist clinics; HIPAA concerns |

## Benchmark Stress Test

Gate competitors through the 4 filters before deep teardown. A competitor
must pass all 4 to warrant a full teardown.

| Competitor | Profitable? | Understandable? | Executable for this team? | Revenue-focused? | Deep teardown? |
|------------|-------------|-----------------|---------------------------|------------------|----------------|
| ScribeMD Pro | Pass — reported $40M ARR (fictional) | Pass — clear enterprise+PLG mix | Fail — sales motion requires enterprise reps | Fail — learning would not change pricing/packaging for PT | No |
| NotePal | Pass — profitable after 2024 round (fictional) | Pass — PLG + content marketing well-documented | Pass — similar team size trajectory | Pass — clear lessons on PLG cadence + content strategy | **Yes** |
| FlowState-PT | Fail — still burning (fictional) | Partial — EHR+scribe bundling is opaque | Fail — EHR is a different product entirely | Partial | No |
| Clinic-AI Note | Partial — unknown | Pass — pricing + distribution visible | Pass — similar scale | Fail — primarily a chiropractic product, lessons don't transfer directly to PT | No |

Only **NotePal** passes all 4. Deep teardown below.

## Deep Teardown — NotePal

Precision matters. Record exact facts, not generic labels.

| Dimension | Their Approach | Gap vs. our hypothesis |
|-----------|----------------|------------------------|
| Price points and tiers | $99/clinician/month flat + $0.20/visit usage fee after 400 visits/month | We'd price $150-300/therapist/month. Our theory: vertical depth justifies higher price. Test. |
| Packaging and positioning | "The AI scribe that writes the note so you don't have to" — pain-focused headline, benefit-driven subheads | We'd lead with PT-specificity ("PT-native ambient scribe. Exercise prescription + CPT coding included.") |
| Primary acquisition channel | LinkedIn content (3 posts/week, founder-driven), SEO (ranks #1 for "AI scribe for doctors"), referrals | We'd copy the LinkedIn cadence; rank for "AI scribe for PT", which has far less competition |
| Content format and frequency | 3x/week LinkedIn, 1x/week blog, 1x/month case study video | Same cadence, PT-specific case studies when available |
| Content style and tone | Founder voice, direct, shows product in action, low on buzzwords | Same — plain language beats marketing speak in clinical markets |
| Free-to-paid conversion mechanism | 14-day free trial with real PHI after BAA signed, monthly self-serve | We'd match: 14-day pilot with real patient data once BAA signed |
| Delivery method | Mobile app + desktop app, EHR integrations for top 10 platforms | We'd prioritize mobile + deep integration with top 3 PT-specific EHRs |
| Retention and repeat-purchase tactics | Monthly therapist-facing metrics emails ("you saved 12 hrs this month"), quarterly owner-facing ROI reports | We'd copy; possibly add clinical outcome tracking as a retention hook |
| Visible tech stack | Deepgram for transcription, OpenAI + fine-tuned internal model, AWS HIPAA stack | Similar approach feasible; vertical fine-tune is the differentiator |

### What this teaches us

- PLG + founder-led LinkedIn content is a proven distribution motion for
  this category at our scale. Copy the cadence.
- $99/clinician/month is the horizontal benchmark. Our $150-300/therapist/
  month hypothesis positions us as a premium vertical. Defensible only if
  the vertical depth materially improves outcomes (code accuracy, note
  completeness, exercise prescription). Must prove at pilot.
- 14-day real-data trial requires BAA-compliant infrastructure from day
  one, not later. Budget compliance setup into the 30-day plan.
- EHR integration is a significant investment; start with 3 PT-specific
  EHRs (WebPT, Prompt, Jane) rather than 10 general medical EHRs.

## Key Takeaways

- **No direct PT-native competitor.** FlowState-PT is the closest, but it's
  EHR-first with scribing as a secondary feature. Room exists for a
  scribe-first PT product.
- **Horizontal players are the real threat**, not vertical players.
  ScribeMD Pro or NotePal adding PT is the risk. Mitigation: vertical depth
  via PT-specific fine-tuning + data flywheel needs a head start of
  6-12 months.
- **Distribution playbook is proven.** LinkedIn content + PLG + SEO is
  working for NotePal at our scale. Copy the motion.
- **Price premium must be earned.** $150-300/therapist/month vs. $99
  horizontal benchmark is defensible only with measurable outcomes
  (denial-rate reduction, documentation time savings) that ScribeMD Pro
  and NotePal cannot match without rebuilding.
