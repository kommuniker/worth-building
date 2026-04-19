# Pretotype Test Menu

Reference menu of cheap validation experiments. Use with `rat-experiment.md`
to pick the right test for the riskiest assumption.

Pretotyping measures **actual behavior**, not stated intent. People lie in
interviews (not maliciously — they're being polite, imagining a hypothetical
future, or answering what they think you want to hear). Behavior reveals truth.

## When To Use This Menu

- Filling out `rat-experiment.md` and need to pick a test method.
- Generating a `Validate first` recommendation and need to propose a concrete
  experiment to the team.
- Sizing validation effort and budget for the assessment.

## Test Types

| Test Type | Best For | Cost | Timeline | Primary Signal | Anti-Gaming |
|-----------|----------|------|----------|----------------|-------------|
| **Landing page + waitlist** | Desirability + messaging | $200-$500 ads | 5-7 days | Email signup rate on cold traffic (benchmark 3-5%) | Require email verification; filter bot traffic by geo/interest targeting |
| **Fake door** (button in an existing product or content piece that goes nowhere yet) | Feature demand within an audience you already have | $0 | 3-5 days | Click-through rate vs. control | Only count clicks from qualified users; compare against peer CTAs |
| **Concierge** (manually deliver the outcome the product would eventually deliver, by hand) | Solution quality + willingness to pay | $0 (time only) | 1-2 weeks | Retention after first cycle + willingness to pay for a second cycle | Charge real money; do not discount to "make it work" |
| **Explainer video + CTA** | Complex product where users need to understand the concept before reacting | $500-$1,000 | 7-10 days | Watch-through rate + CTA click rate | Segment viewers by source; ignore vanity metrics (views without watch depth) |
| **Wizard of Oz** (AI-looking product with humans doing the work behind the scenes) | Feasibility perception + whether the output is actually valuable | $0 (time only) | 1-2 weeks | Task completion rate + willingness to pay for the automated version | Measure whether users trust the output and would pay even knowing how it's built |
| **Manual prospecting email** | B2B demand + willingness to take a call | $0 | 3-5 days | Reply rate on cold outreach with named hypothesis (benchmark 5-10% for well-targeted lists) | Personalize; avoid spray-and-pray; track who replies "yes let's talk" vs. "interesting, send more info" (the second is soft) |
| **Pre-sale / founding customer offer** | Willingness to pay up-front for a not-yet-built product | $0 | 2-4 weeks | Paid signups or LOIs with real money | No refund guarantees; real invoicing; real contracts |

## Picking A Method

Match the test to what the RAT is actually measuring:

- **Desirability** (do they want it?) → Landing page, fake door, explainer video
- **Willingness to pay** (will they actually spend?) → Pre-sale, concierge with real invoice
- **Feasibility perception** (will they trust the output?) → Wizard of Oz
- **Buying process reality** (who decides, how long, at what price?) → Manual prospecting to decision-makers, concierge with B2B accounts
- **Solution quality** (does the outcome actually solve the problem?) → Concierge

Prefer the cheapest test that generates a real behavioral signal. A $200
landing page test beats three weeks of polite interviews.

## Sample-Size Targets

- **Interviews / prospecting**: 5-12 conversations for directional signal, 8-12
  for pattern detection
- **Landing page / fake door**: 100-500 qualified visitors minimum for
  conversion-rate confidence
- **Concierge**: 3-5 complete delivery cycles usually enough to see whether
  customers come back and pay for a second
- **Pre-sale**: 3-5 real paid orders or LOIs with real invoicing is a stronger
  signal than 100 waitlist signups

## Benchmarks

Rough ranges for sanity-checking results — adjust to your channel and domain:

- Cold LinkedIn/Twitter ad → landing page: **1-3% CTA conversion** is weak,
  **3-5%** is okay, **>5%** is strong
- Warm email list → landing page: **10-15% conversion** is okay, **>20%** is
  strong
- Cold B2B email prospecting: **2-5% reply rate** is normal, **>10%** means you
  found a real pain point or your targeting is excellent
- Concierge → paid repeat: **<30%** repeat means the solution is not sticky
  enough, **>60%** means you likely have something

## Principles

- **Behavior beats words.** A paid pre-order outranks 50 "sounds great, keep me
  posted" emails.
- **Speed beats precision.** A rough test this week teaches more than a
  perfect test in six.
- **Pass/fail criteria must be set in advance.** Define them in
  `rat-experiment.md` before you look at the data. Do not move goalposts.
- **Fakes must be real enough.** If your fake door, landing page, or concierge
  offer is obviously a test, the behavior you measure is not real buying
  behavior.
- **One experiment at a time.** Do not bundle tests. You will not be able to
  tell which signal came from what.
