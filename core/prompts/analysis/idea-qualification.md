# Idea Qualification Framework

Primary framework for deciding whether an idea is worth pursuing now.

This framework is broader than moat scoring alone. A strong idea must clear the
business bar, the execution bar, and the capital bar, not just sound
differentiated.

## Team Profile

Before scoring, read `.worth-building/team-profile.yaml`. The
team profile defines who is building this — their skills, distribution
strengths, constraints, and gaps. Every dimension should be scored through the
lens of *this specific team*, not a generic startup.

If the file does not exist yet, run the team-profile bootstrap from
`core/prompts/workflows/qualify-idea.md` Stage 1 — a short Socratic
intake that asks "solo developer or team?" and writes the file based
on the answer. Do not score without a team profile; team fit is a
first-class filter.

Key filters to apply throughout scoring:

- **Build feasibility**: Can this team actually build the hard parts? If the
  idea requires skills outside `can_build`, flag it. If it requires skills in
  `cannot_build_without_help`, assess whether the gap is closeable or fatal.
- **Distribution match**: Does the idea's go-to-market match this team's
  `distribution_strengths`? If it requires capabilities listed under
  `distribution_weaknesses`, score distribution realism (dim 3) lower and
  state why.
- **Skill gap risk**: If the idea requires expertise listed under
  `skill_gaps`, flag it as a concern in right-to-win (dim 7). Not every gap
  is fatal — some can be closed with contractors, advisors, or partners — but
  the gap must be named and the plan to close it must be credible.
- **Constraint compliance**: Check the idea against `business_constraints`.
  An idea that requires 18 months of pre-revenue development or significant
  upfront capital violates the bootstrap-first constraint and should be scored
  accordingly in validation speed (dim 9) and capital efficiency (dim 6).
- **Ideal fit signal**: If the idea matches the `ideal_idea_profile`, note
  that as a positive signal. This does not override weak scores but indicates
  the idea plays to the team's strengths.

## The Core Question

If this idea were built competently by **this team** (see team profile), with
capital that is actually available, would it become a good business or just a
clever product?

## The Delegation Model

The strongest vertical AI products do not feel like software to the user. They
feel like a competent junior colleague or an outsourced service that the
professional can delegate work to.

The user remains in charge: they set direction, review output, and make final
decisions. But the work itself — the drafting, the processing, the
reconciling, the classifying — gets done by the AI. The user's mental model is
delegation and review, not clicking buttons in a tool.

This distinction shapes how to evaluate an idea:

- **How you sell it.** You are replacing a cost line (headcount, outsourcing,
  manual hours), not selling a software subscription. The buyer compares the
  price to what they currently pay a person or a service provider to do that
  work.
- **What "good enough" means.** The AI does not need to be perfect. It needs to
  be good enough that reviewing its output is faster than doing the work from
  scratch — like reviewing a junior's first draft rather than writing it
  yourself.
- **Why trust scales.** The professional checks the AI's work the way they
  would check a new hire's work. As the AI proves reliable over time, the
  professional reviews less and delegates more. Trust is earned through
  accumulated evidence, not claimed upfront.
- **Where the data flywheel starts.** Every review, correction, and approval is
  a feedback signal. The AI learns what "good" looks like for this specific
  user, domain, and context. This is how the proprietary data moat builds —
  through the natural act of delegation and review.

When scoring an idea, ask: does the user experience feel like delegating work
to a capable worker, or like using a slightly smarter tool? The delegation
model commands higher willingness to pay, deeper embedding, and stronger
retention.

## Problem Archetype

Before scoring, classify the problem into one of three archetypes. The
archetype determines how to interpret the scores, not the scores themselves.

- **Hair on Fire**: The buyer has an urgent, obvious problem and is actively
  looking for a solution. Demand exists before the product does. This is the
  fastest path to revenue for a small team, but the problem is obvious so
  competition is higher. Defensibility matters most here.
- **Hard Fact**: The buyer has a real problem but has not recognized how acute
  it is, or has normalized workarounds. The product must reveal a "hard fact"
  — data or insight that makes the pain undeniable. Longer to validate but
  less competition. The risk is that activation (getting the buyer to the "aha
  moment") takes too long or costs too much.
- **Future Vision**: The buyer does not yet have the problem because the market
  or behavior does not exist yet. This is category creation. Hardest and
  slowest to validate, highest timing risk. A 1-2 person team should rarely
  pursue a Future Vision idea unless they can find a Hair on Fire wedge
  within it.

State the archetype in the assessment output. If the archetype is Future
Vision, apply extra scrutiny to validation speed (dim 9) and capital
efficiency (dim 6) — small teams cannot afford multi-year category creation.

## Qualification Dimensions

Score each dimension honestly. Use evidence when available and explicit
assumptions when not.

Qualification score measures whether the opportunity is worth pursuing now. It
must be paired with the defensibility score from
`core/prompts/analysis/business-viability.md`.

Qualification captures the things moat scoring does not: whether there is a
specific beachhead worth starting in and whether complexity is investable or
just friction. Beachhead quality, distribution realism, validation cost, and
regulatory or operational complexity belong here, not as extra moat
dimensions.

### 1. Problem Severity And Urgency (0-15)

- Is the pain real, frequent, and costly?
- Does the customer already spend time, money, or headcount on it?
- Is this a must-fix problem or a nice-to-have improvement?
- **The "who wants this RIGHT NOW?" test**: Can you name a specific person or
  company who wants this so badly they would use a rough version one from a
  tiny team they have never heard of? If you cannot answer that, the idea is
  probably too mild. Score low.

### 2. Buyer Clarity, Budget, And Switching Willingness (0-15)

- Is the buyer obvious?
- Does the buyer control budget?
- Is there a credible reason they would pay enough for this to become a healthy
  business?
- Will they actually switch from the current workflow, vendor, or workaround?
- If the product uses AI to automate work, is it automating a **core workflow**
  (defines the professional's identity and expertise) or a **supporting
  workflow** (busywork ancillary to their real job)? Supporting workflows face
  far less adoption resistance. A doctor will happily automate notetaking but
  resist AI diagnosing patients. An investment banker will automate slide
  creation but never let AI present to clients. Technical feasibility of
  automation is not the same as customer acceptance — score lower if the product
  automates work the buyer considers central to their professional identity or
  client relationships.

### 3. Beachhead Strength And Distribution Realism (0-10)

- Is there a narrow, painful starting wedge where the product can win?
- Is there a believable path to the first 10 customers in that beachhead?
- Can the business reach buyers without enterprise-level CAC?
- Are partnerships, communities, or channels available and relevant?
- Is there a credible expansion path from the initial niche?
- **Well or crater?** A good beachhead is narrow and deep (a well) — a small
  number of people who want this desperately. A bad beachhead is broad and
  shallow (a crater) — many people who think "yeah, maybe." Nearly all good
  startup ideas start as wells, not craters. Score higher for depth of need in
  a narrow group than for mild interest across a broad audience.

### 4. Competitive Advantage And Moat Path (0-10)

- Why does this idea not get crushed by incumbents or fast followers?
- What compounds after launch: data, switching costs, trust, vertical depth,
  network effects, or operational embedding?
- If the only advantage is "better UX" or "AI", score low.
- Is there a **data flywheel**? Does the product do work that generates
  domain-specific data, which improves the AI, which does better work, which
  attracts more customers? If so, does the domain produce structured feedback
  signals, proprietary data, and high local variance? If not, the product may
  be an LLM wrapper with no compounding advantage.
- **Schlep blindness check**: Is this idea in a space that involves messy,
  tedious work (regulatory compliance, legacy integrations, ugly industries)?
  If so, that is often a *strength* — most founders avoid these areas, which
  means less competition. Complexity others avoid can be a moat if this team
  can realistically clear it.

### 5. Workflow Embedding And Retention Potential (0-10)

- Does the product become part of a recurring workflow?
- Will customers have a reason to stay beyond initial novelty?
- Does the product create operational memory or decision dependence over time?
- Is the product a **tool** (helps humans do the work) or an **agent** (does the
  work autonomously)? Agent-level products that replace entire tasks tend to
  embed deeper and retain better, but carry higher reliability and trust
  requirements. Score higher if the product owns a complete outcome, not just a
  step in someone else's workflow.

### 6. Revenue Quality And Capital Efficiency (0-10)

- Are unit economics likely to work?
- Is the revenue recurring, expansion-friendly, or otherwise durable?
- Is this a good business if it works, not just a product people like?
- Can the idea reach proof and sustainability without implausible capital?
- If the product does work a human used to do, can it price on outcomes or
  value delivered (per claim, per contract, per report) rather than per seat?
  Outcome-based pricing can unlock revenue that scales beyond headcount, but
  requires measurable, trustworthy results.

### 7. Founder / Team Right To Win (0-10)

- Does the pursuing team have domain knowledge, relationships, or distribution
  access that materially help?
- Can the team build the hard parts credibly?
- If the team lacks an edge today, is there a realistic near-term plan to close
  the gap?
- **Organic or made-up?** Did this idea come from the team's own experience and
  frustration (organic), or was it generated by brainstorming "what would be a
  good business" (made-up)? Organic ideas carry built-in domain knowledge and
  credibility. Made-up ideas are more likely to be sitcom ideas — plausible
  on paper but lacking the urgency that comes from lived experience.

### 8. Timing And Market Pull (0-5)

- Why now?
- Is there a meaningful shift in technology, regulation, buyer behavior, or
  market structure?
- Is this vertical being re-mapped by AI-native products the way cloud-native
  SaaS displaced on-premise software? If foundation models have commoditized
  the AI capability itself, does the team's domain expertise and vertical
  integration become the real competitive edge?

### 9. Validation Speed And Cost (0-10)

- How quickly can the riskiest assumption be tested?
- How much money, time, and complexity are required to learn something real?
- Can the idea be validated before large sunk cost accumulates?

### 10. Dependency, Regulatory, And Operational Complexity (0-5)

- Does the idea depend on a single platform, channel, integration partner, or
  concentrated buyer set?
- Could a dominant platform or distributor squeeze the business?
- Does legislation, procurement, compliance, or legacy workflow complexity
  slow sales, onboarding, or validation?
- Is that complexity a moat the team can realistically clear, or just friction
  right now?

## Automatic Disqualifiers

Default to `Park` or `No-go` if any of the below are true:

- The buyer is vague and budget ownership is unclear.
- Distribution depends on expensive channels and there is no credible
  beachhead wedge.
- The idea is easy to copy and has no credible compounding advantage.
- The likely ACV cannot support the required sales or onboarding effort.
- The product solves a mild problem better, not a meaningful problem
  differently.
- The product is an LLM wrapper with no proprietary data accumulation: it sends
  user input to a foundation model API and returns the output with prompt
  engineering on top, with no feedback loop, no domain-specific learning, and no
  compounding advantage after thousands of customers.
- The pursuing team has no credible right to win and no realistic plan to gain
  one.
- Success depends on one external platform, one channel, or a tiny set of large
  buyers with no mitigation.
- Regulatory or legal risk is critical and there is no credible mitigation
  plan.
- Operational complexity makes learning too slow or too expensive for this
  team.
- The idea requires core capabilities the team cannot build and cannot
  realistically close the gap (check `cannot_build_without_help` and
  `skill_gaps` in the team profile).
- The idea's only viable distribution path requires capabilities listed under
  the team's `distribution_weaknesses` with no credible alternative channel.

## Qualification Bands

These bands describe the qualification signal only. They are not the final
verdict.

- `0-39`: No-go candidate
- `40-54`: Park candidate
- `55-69`: Validate-first candidate
- `70-100`: Build-candidate

## Final Decision Rule

Qualification score does not overrule defensibility, and defensibility does not
rescue weak qualification.

- `Build now` requires:
  - qualification score `>=70`
  - defensibility score `>=60`
  - no automatic disqualifier
  - no `Blocker` in founder/team, capital, validation, dependency, or
    regulatory or operational-complexity gates
- `Validate first` is the default when:
  - qualification score is `55-69`, or
  - defensibility score is `45-59`, or
  - one or two gate concerns can be resolved with a bounded validation plan
- `Park` is appropriate when:
  - qualification score is `40-54`, or
  - defensibility score is `30-44`, or
  - the opportunity looks interesting in theory but right-to-win, capital fit,
    or distribution access are weak without a short learning loop
- `No-go` is appropriate when:
  - qualification score is `<40`
  - defensibility score is `<30`
  - any automatic disqualifier is true
  - critical regulatory or dependency blockers make the idea non-viable right
    now

## Output Standard

Every qualification output must state:

- Problem archetype (Hair on Fire / Hard Fact / Future Vision)
- Customer type (elephant / deer / rabbit / mouse / fly)
- Team fit (strong / adequate / weak — with specific gaps named)
- Qualification score
- Defensibility score
- Final decision
- Decision rule applied
- Core reason to proceed
- Core reason not to proceed
- Critical assumption to validate next
