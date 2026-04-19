# Workflow: Deconstruct The Premise

Pre-qualification filter that runs before the Socratic intake wizard. Its job
is to catch malformed, vague, or assumption-laden briefs *before* the team
invests effort in full qualification.

Most business "problems" fall apart under scrutiny. Language is vague, causal
chains are assumed not tested, evidence is anecdotal, or the premise itself
contains the answer. Surfacing this early prevents wasted analysis.

## When To Use

- Before Stage 2 (Intake Wizard) in `qualify-idea.md`.
- When the user presents a vague goal ("build something in AI", "find a SaaS
  opportunity", "something with data").
- When the user's framing contains undefined terms ("the right audience",
  "product-market fit", "scale", "good content").
- When a returning user says "this isn't working" about an existing idea.

## Core Philosophy

**Deconstruct before you prescribe.** Do not jump to frameworks, dimensions, or
scoring. First check whether the problem as stated actually exists, is
precisely defined, and is supported by real evidence. If the premise is
malformed, the answer is to reframe — not to run a full assessment on fog.

Process each layer in order. Stop and discuss with the user as soon as a layer
catches an issue. Do not run all four layers on autopilot.

## Layer 1: Language Precision

Identify every vague, subjective, or unmeasurable term in the user's idea or
problem statement. Ask the user to define each one concretely.

Common vague terms that mask real issues:

| Vague Term             | Why It's Dangerous                              | Better Question                                                                 |
|------------------------|-------------------------------------------------|---------------------------------------------------------------------------------|
| "A good opportunity"   | No defined criteria                             | "What would make this a good opportunity for *you* specifically?"               |
| "The right audience"   | No defined buyer                                | "Describe one real person who would pay. Title, company, what they do all day." |
| "Scale" / "big"        | Means different things                          | "From what baseline to what target, by when?"                                   |
| "Product-market fit"   | Abstract concept                                | "What specific behavior would prove it? Retention? Referrals? Willingness to pay?" |
| "Not working"          | Could mean 100 things                           | "Which specific metric is below which specific target?"                         |
| "AI-powered"           | Tautology in 2026                               | "What does the AI do that the user could not do alone in five minutes?"         |

**If all key terms can be defined precisely:** premise may be real. Move to
Layer 2.

**If key terms cannot be defined:** the problem is clarity, not opportunity.
Help the user define terms, then reassess whether the original idea still
stands.

## Layer 2: Assumption Audit

List every implicit assumption in the idea as stated. Propose the opposite for
each and ask "what if *this* is true instead?"

Common hidden assumptions in idea framing:

| Statement                             | Hidden Assumption                                       | Challenge                                                                             |
|---------------------------------------|---------------------------------------------------------|---------------------------------------------------------------------------------------|
| "Customers will pay for this"         | Stated interest = actual payment                         | "Has anyone paid for a worse version of this? Who and how much?"                      |
| "This market is huge"                 | TAM = addressable market for this team                   | "What slice of that TAM is reachable by a 2-person team in year one?"                 |
| "Competitors are bad"                 | Bad competitor = opening                                 | "Why have the incumbents not been displaced? What are they good at that you underrate?" |
| "Nobody's doing this"                 | No competitor = untapped market                          | "Is nobody doing this because it's untapped, or because it doesn't work?"             |
| "AI makes this possible now"          | Foundation models solve the hard part                    | "What specifically is now possible that wasn't 18 months ago? How central is that to the value?" |
| "We'll figure out distribution later" | Distribution is separable from product                   | "Name the first 10 customers and how you would reach them."                           |

**If the major assumptions hold up:** premise may be real. Move to Layer 3.

**If assumptions break:** the real idea is different from what the user stated.
Reframe and re-enter Layer 1 with the revised premise.

## Layer 3: Causal Logic

Trace the user's reasoning. For every claim of the form "A causes B" or "if X
then Y", ask: *how do you know?*

Common logic errors:

- **Correlation is not causation.** "Vertical AI companies are raising big
  rounds, therefore vertical AI is a good opportunity." (Funding is a proxy for
  VC fashion, not end-customer demand.)
- **Survivorship bias.** "Successful founders in this space all did X."
  (How many failed founders also did X?)
- **Effort is not outcome.** "I'll just grind harder on this." (Direction of
  effort matters more than volume.)
- **Single-cause fallacy.** "This idea will win because it's cheaper." (Most
  real buying decisions have multiple drivers — price alone rarely wins.)
- **Recency bias.** "This category is dead." (Said about every category in the
  trough of its hype cycle.)

**If logic holds:** move to Layer 4.

**If logic breaks:** help the user see the actual causal chain. The idea may
still be worth pursuing, but the *reasoning* has to be rebuilt before the
assessment is meaningful.

## Layer 4: Evidence Sufficiency

Does the user have enough data to justify the claims they are making? Or are
they pattern-matching on a handful of anecdotes?

Test:

1. How many data points is this claim based on? (Fewer than ~10 conversations
   or ~30 quantitative signals is usually too few.)
2. How long has the observed pattern existed? (Under 30 days is usually too
   short for stable business metrics.)
3. Did the user isolate variables, or change many things at once?

**If evidence is sufficient:** proceed to full qualification (Stage 2 of
`qualify-idea.md`).

**If evidence is insufficient:** do not over-assess. Either:

- frame the assessment as "under current evidence, here is the most likely
  read", and list the data gaps explicitly, or
- propose a short, cheap measurement plan before running the full assessment.

## Output

After running the funnel, write a short summary into
`docs/assessments/{idea-key}/premise-deconstruction.md` with:

- original problem statement
- which layer caught any issues (language / assumption / logic / evidence)
- restated premise, if it was reframed
- whether to proceed to full qualification, gather more evidence, or kill the
  idea now

If nothing was caught, one paragraph noting the premise survived deconstruction
is enough.

## Principles

- **Questions beat answers.** One sharp question often dissolves an idea faster
  than an hour of analysis.
- **Precision over politeness.** Vague encouragement wastes the user's time.
- **One layer at a time.** Stop the funnel at the first layer that reveals an
  issue. Fix that before moving on.
- **The goal is not to kill ideas.** It is to make sure the ideas that reach
  full qualification are actually qualifiable.
