# Riskiest Assumption Test

Required artifact for any `Validate first` verdict. One RAT per idea — test the
single assumption that kills the idea if wrong. Do not bundle tests.

## Idea

[Idea name, one-line description]

## Assumption Map

List every non-trivial assumption the idea rests on. Categorize and rank.

**Categories:**

- **Desirability** — Do target customers want this? Will they use it?
- **Viability** — Can this become a real business? Do unit economics work?
- **Feasibility** — Can this team build and deliver it?

| # | Assumption (phrased as a testable belief) | Category | Confidence (Low / Med / High) | Importance (Low / Med / High) | Evidence So Far |
|---|-------------------------------------------|----------|-------------------------------|-------------------------------|------------------|
| A1 | [Fill in] | [Fill in] | [Fill in] | [Fill in] | [Fill in] |
| A2 | [Fill in] | [Fill in] | [Fill in] | [Fill in] | [Fill in] |
| A3 | [Fill in] | [Fill in] | [Fill in] | [Fill in] | [Fill in] |

## 2x2 Placement

Plot each assumption on the importance × confidence grid.

```
                    HIGH importance (kills the idea if wrong)
                         |
                         |
          VALIDATE       |       VALIDATE
          SECOND         |       FIRST <- RAT lives here
          (important     |       (important AND
           but we have   |        we don't know)
           some signal)  |
HIGH  -------------------|-------------------  LOW
confidence               |               confidence
          MONITOR        |       INVESTIGATE
          (important     |       (uncertain but
           and we know)  |        not fatal)
                         |
                    LOW importance
```

The **top-right quadrant** is the RAT. Pick ONE assumption from that quadrant.
If two or more fight for the spot, pick the one that can be tested cheapest
and fastest.

## The Riskiest Assumption

**Assumption:** [Restate the single assumption being tested]

**Category:** Desirability / Viability / Feasibility

**Why this one:** [Why is this the one that kills the idea if wrong?]

## Hypothesis

"We believe that [target user] will [expected behavior] because [reasoning]."

## Test Design

**Test method:** Interview / Landing page / Fake door / Concierge / Prototype /
Wizard of Oz / Explainer video + CTA / Pre-sale / Manual prospecting / Other

(See `core/templates/research/pretotype-menu.md` for a full menu with cost,
timeline, primary signal, and benchmarks for each method.)

**Why this method:** [Why is this the cheapest, fastest, most direct way to
learn?]

**Sample size target:**
- Interviews: typically 5-12 for directional signal
- Landing pages: typically 100-500 visits for conversion signal
- Concierge: 3-5 real deliveries usually enough

**Timeline:** [N days or weeks — keep it short]

**Budget:** [$X, or $0 if time-only]

**Owner:** [Name]

**Start date:** [Date]

**Review date:** [Date — when the team sits down to read the results]

## Success Criteria

Make these numeric and falsifiable in advance. Do not move the goalposts after
the data arrives.

**Pass:** [Specific threshold — e.g., "6 of 10 interviewees describe this
problem unprompted", or ">= 3% landing-page conversion to a qualified lead",
or "2 of 3 concierge customers agree to pay for a second cycle"]

**Fail:** [Specific result that means kill or pivot — e.g., "fewer than 3 of
10 interviewees mention this problem", or "< 1% conversion with qualified
traffic"]

**Inconclusive:** [Range that means the test was too noisy — decide now what
you will do next, e.g., re-run with a different audience, extend the window,
or collapse to a kill]

## Anti-Gaming Measures

- [How will you prevent false positives? e.g., require email, verify
  occupation, filter by geo]
- [How will you ensure traffic/interviewee quality?]
- [What self-fooling patterns are you watching for?]

## Result

Fill in after the test completes.

**What the data showed:** [Summary]

**Decision:** [Pass → proceed / Fail → kill or pivot / Inconclusive → next
step]

**What we learned that we did not expect:** [Honest surprises — often more
valuable than the primary signal]

**Next assumption to test (if idea survives):** [Fill in]
