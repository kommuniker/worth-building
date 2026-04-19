# Backlog: VC Framework Integration

Items extracted from venture firm research (2026-04-03). Each item describes
a concept from a published VC framework that would strengthen this repo's
qualification system, and where it would fit.

Source key:
- **BVP-live** — extracted from bvp.com/atlas during this session
- **a16z-live** — extracted from a16z.com during this session
- **YC-live** — extracted from paulgraham.com during this session
- **P9-live** — extracted from christophjanz.blogspot.com during this session
- **Sequoia-live** — extracted from sequoiacap.com during this session
- **Training** — from training data (pre-May 2025), not freshly verified

---

## Priority 1: High value, clearly actionable

### 1.1 SaaS Metric Benchmarks For Revenue Analyst

**Source**: BVP-live (10 Laws of Cloud + Scaling to $100M)

The revenue analyst has a unit economics template but no reference benchmarks.
BVP publishes concrete thresholds that would give the analyst scoring anchors:

| Metric | Target | Context |
|--------|--------|---------|
| LTV:CAC ratio | >= 3x | Minimum viable |
| CAC payback (SMB) | 6-18 months | Beyond 18 = concern |
| CAC payback (Enterprise) | 24-36 months | Beyond 36 = red flag |
| Enterprise annual logo churn | < 7% | |
| Enterprise net retention | > 100% | Top quartile: 120-140% |
| SMB annual churn tolerance | ~20% | Acceptable if CAC is low |
| Gross margin | 65-70% | Consistent across stages |
| Efficiency score (FCF margin + growth) | > 40% | IPO-grade |
| BVP efficiency ratio (net new ARR / net burn) | > 1.5x | Pre-$30M ARR |
| Cash conversion score (ARR / total capital) | > 1.0x | Best-in-class |

**Growth rate benchmarks by ARR stage:**

| ARR | Average growth | Top quartile |
|-----|---------------|-------------|
| $1-10M | ~200% | 230%+ |
| $10-25M | ~115% | 135%+ |
| $25-50M | ~95% | 110%+ |
| $50-100M | ~60% | 80%+ |

**Where it fits**: Add as a reference benchmarks section in
`core/prompts/roles/revenue-analyst.md`. Not as hard rules, but as
"here's what good looks like" context for scoring revenue quality.

**AI-specific overlay** (BVP-live, State of Cloud 2024):
- Vertical AI gross margins: ~65% (lower than traditional SaaS 70-80%)
- AI model costs: ~10% of revenue, ~25% of COGS
- Vertical AI growth: ~400% YoY at $4M+ ARR
- AI companies reaching ~80% of traditional vertical SaaS ACV
- AI Centaur (time to $100M ARR): 5.7 years vs 7.5 years for Cloud 100

---

### 1.2 AI Agent Autonomy Scale (L0-L6)

**Source**: BVP-live (Bessemer's AI Agent Autonomy Scale)

Seven levels of AI product maturity that directly sharpen our tool-vs-agent and
delegation model framing:

| Level | Name | Description |
|-------|------|-------------|
| L0 | No Agency | Manual/rules-driven |
| L1 | Chain-of-Thought | Self-review and logic traceability |
| L2 | Conditional Agency | Copilot — human-in-the-loop approval |
| L3 | High Autonomy | Autonomous execution with reliability guarantees |
| L4 | Full Job Performance | Autonomous employee-level capability |
| L5 | Agent Teams | Multi-agent collaboration |
| L6 | Meta-Coordination | Agents managing other agents |

Five criteria an agent must possess: State/Configuration, Intelligence/Logic,
Action Execution, Complex Task Capability, Reliability & Entitlements.

**Where it fits**: Reference in the Delegation Model section of
`idea-qualification.md` and in the Delegation Shift section of
`business-viability.md`. Helps score where on the autonomy spectrum a product
sits. L0-L1 = commodity, L2 = copilot (tool), L3+ = delegation model (agent).
Higher autonomy = higher pricing power and switching costs, but also higher
AI reliability risk.

---

### 1.3 Modality-Business Model-Market Fit (25x TAM Differential)

**Source**: BVP-live (Healthcare AI Roadmap)

The same problem solved as software vs. copilot vs. agent vs. full service can
have up to **25x TAM differential**. This is a powerful insight we don't
explicitly surface.

Example: automating medical billing could be a:
- **Software tool** (TAM = software spend on billing platforms)
- **Copilot** (TAM = software spend + some time savings)
- **Autonomous agent** (TAM = partial headcount replacement)
- **Full managed service** (TAM = entire outsourced billing spend)

Each step up the autonomy ladder expands the addressable market but increases
execution complexity, AI reliability requirements, and capital needs.

**Where it fits**: Add as a consideration in the market researcher's TAM
guidance (we already say "size against services spend, not just software
spend" — this makes it more precise). Also relevant to the revenue analyst's
pricing model assessment: the delivery modality choice determines the pricing
ceiling.

---

### 1.4 Opportunity Scoring For Vertical Scanning

**Source**: BVP-live (Healthcare AI Adoption Index)

Generalizable two-axis methodology for our `scan-verticals.md` workflow:

- **Opportunity score** = average of (pain point intensity + manual process %)
- **Adoption score** = weighted average across development stages

Plot verticals on a 2x2 matrix:
- **High opportunity, low adoption** = best targets (big pain, few solutions)
- **High opportunity, high adoption** = competitive but validated
- **Low opportunity, high adoption** = crowded, small upside
- **Low opportunity, low adoption** = avoid

Key benchmark: only 30% of AI POCs reach production. Top barriers: security
(50-61%), expertise gaps (41-52%), integration costs (43-51%).

**Where it fits**: Add the 2x2 matrix framing to
`core/prompts/workflows/scan-verticals.md` as an output structure option.
More rigorous than the current tier-based ranking.

---

### 1.5 Sequoia Arc PMF Framework (3 Problem Archetypes)

**Source**: Sequoia-live (sequoiacap.com/article/pmf-framework/)

Sequoia classifies the problem a product solves into three archetypes that
determine how you measure progress, how you acquire customers, and what kills
you:

| Archetype | Problem type | PMF metric | GTM | Primary risk |
|-----------|-------------|------------|-----|-------------|
| **Hair on Fire** | Urgent, known pain — buyer actively seeking | Retention from day 1 | Demand capture (SEO, direct sales) | Competition (obvious problem attracts many) |
| **Hard Fact** | Real pain buyer hasn't recognized yet | Activation rate (getting to "aha moment") | Demand creation (education, demonstration) | Sales cycle length, activation cost |
| **Future Vision** | New category/behavior that doesn't exist yet | Engagement depth in early cohort | Movement-building, community | Timing risk, category creation cost |

Key insight: "Hair on Fire" problems attract the most competition, so
**defensibility matters most when the problem is obvious.** "Future Vision"
ideas are hardest to validate but have the least competition if timing is right.

**Where it fits**: Add as a classification step early in the qualification
workflow. The archetype should inform how we score several dimensions:
- **Problem Severity (dim 1)**: Hair on Fire scores highest on urgency, but
  Hard Fact and Future Vision can still score well on severity if the
  underlying pain is real
- **Buyer Willingness (dim 2)**: Hair on Fire = buyers already looking;
  Hard Fact = need activation; Future Vision = need evangelism
- **Validation Speed (dim 9)**: Hair on Fire validates fastest; Future Vision
  is slowest and most expensive
- **Competitive Advantage (dim 4)**: Hair on Fire needs the strongest moat
  because competition is highest

This is not a new scoring dimension — it's a lens that sharpens how we
interpret several existing dimensions. Similar to how the delegation model
frames the user relationship.

---

### 1.6 Point Nine / Janz Customer Size Framework (Five Ways To $100M)

**Source**: P9-live (christophjanz.blogspot.com)

Maps ARPA to required customer count to realistic acquisition method:

| Customer type | ARPA/year | Customers needed for $100M | Acquisition method |
|---------------|-----------|---------------------------|-------------------|
| Elephants | $100K+ | 1,000 | Enterprise field sales |
| Deers | $10K+ | 10,000 | Inside sales, inbound |
| Rabbits | $1K+ | 100,000 | Inbound marketing, SEO |
| Mice | $100+ | 1,000,000 | Virality, network effects |
| Flies | $10+ (ads) | 10,000,000 | Inherent virality or UGC/SEO |

Specific benchmarks for rabbit hunting (SMB SaaS at ~$50-100/month):
- Need 0.5-2M trial signups for 100K customers
- Example CLTV: $2,700 (3-year avg lifetime, 90% gross margin)
- Target CLTV/CAC: 4x minimum → max CAC of $675
- At 10% signup-to-paying conversion: max $67.50 per signup

Key insight: rabbit hunting (SMB SaaS) is the hardest path. Companies often
start as rabbit hunters and expand to deer hunting, but that requires hiring
experienced sales leadership and changing the GTM motion.

**Where it fits**: Add to `core/prompts/roles/revenue-analyst.md` as a
sanity-check framework. When the analyst estimates pricing, they should check:
"Which animal are you hunting? Does the acquisition method match the ARPA?
Is the required customer count realistic for the distribution path?" This
catches a common failure: pricing like a rabbit but needing elephant-level
sales effort, or pricing like a mouse without viral mechanics.

---

### 1.7 YC Idea Quality Heuristics

**Source**: YC-live (paulgraham.com/startupideas.html)

Paul Graham's canonical essay on how to evaluate startup ideas. Contains
several frameworks now verified from the source:

**The Well vs Crater model**: Good startup ideas are narrow and deep (a well),
not broad and shallow (a crater). "Nearly all good startup ideas are of the
second type." A small number of people who want the product desperately is
better than a large number who want it mildly.

**Three qualities of the best startup ideas:**
1. Something the founders themselves want
2. That they themselves can build
3. That few others realize are worth doing

**The "who wants this RIGHT NOW?" test**: "Who wants this so much that they'll
use it even when it's a crappy version one made by a two-person startup
they've never heard of?" If you can't answer that, the idea is probably bad.

**Anti-patterns (verified):**
- **Sitcom ideas**: Sound plausible but nobody urgently needs them. "Social
  network for pet owners" — people say "maybe" but nobody uses it.
- **Schlep blindness**: Founders avoid ideas involving messy, tedious work
  (regulatory compliance, legacy integrations) — but those are often the best
  because competition is lower. Stripe is the canonical example.
- **Trying to think of startup ideas**: "Doubly dangerous: doesn't merely yield
  few good ideas; it yields bad ideas that sound plausible enough to fool you."
- **SISP (Solution in search of a problem)**: Building technology first, then
  looking for who needs it.

**Counter-intuitive insights:**
- Competitors almost never kill startups. "So rare you can almost discount the
  possibility."
- Crowded markets are a good sign — means demand exists and no solution is good
  enough.
- "Toys" are good signs — "has everything an idea needs except being important."

**Where it fits**: Multiple integration points:
- **Well vs Crater** → sharpens beachhead strength (dim 3). A well is a strong
  beachhead; a crater is a vague one.
- **"Who wants this RIGHT NOW?"** → sharpens buyer urgency (dim 2). If you
  can't name the person, score low.
- **Sitcom ideas** → new red flag in `business-viability.md`. Distinct from
  "pure feature play" — sitcom ideas sound plausible but lack urgency.
- **Schlep blindness** → sharpens the complexity-as-moat nuance. Our framework
  asks "Is that complexity a moat or just friction?" — Graham's answer is that
  complexity others avoid is usually a moat.
- **Organic vs made-up** → consideration for right-to-win (dim 7). Founders
  who experienced the problem themselves have a credibility advantage.

---

### 1.8 a16z Metric Definitions And Anti-Patterns

**Source**: a16z-live (a16z.com/16-startup-metrics/)

The 16 Startup Metrics article is primarily metric definitions, not an
evaluation framework. But it contains specific anti-patterns and common
mistakes that our revenue analyst should know:

**Common mistakes to catch:**
- Confusing bookings with revenue (bookings = contractual obligation;
  revenue = recognized per GAAP)
- Including one-time fees and services revenue in ARR/MRR
- Estimating LTV as revenue or gross margin instead of contribution margin
- Reporting blended CAC instead of paid CAC (investors want paid only)
- Using cumulative charts (always go up, even when business is shrinking)
- Reporting GMV as revenue for marketplace businesses

**CAC scaling warning**: "Typically costs go up as you scale: $1 for the first
1,000 users, $2 for the next 10,000, $5-10 for the next 100,000."

**Billings as a forward indicator**: Billings = revenue + change in deferred
revenue. Better forward-looking signal than revenue alone. Stable revenue can
mask declining health (working off billings backlog).

**Where it fits**: Add as a "common mistakes" checklist in the revenue analyst
prompt. Not a framework — a guardrail to prevent the analyst from making the
same errors founders make when presenting their numbers.

---

## Priority 2: Valuable, needs adaptation

### 2.1 Five Attributes Of Winning AI Systems Of Action

**Source**: BVP-live (Roadmap: AI Systems of Action)

Checklist for AI products that displace legacy systems of record:

1. Deliver a "10x better customer experience or magic AI moment"
2. Provide an initial wedge that lives alongside the incumbent (not
   rip-and-replace)
3. Tap into adjacent human labor/services spend alongside software budgets
4. Focus on niche or vertical-specific use cases for initial GTM
5. Start downmarket, move upmarket as feature parity is achieved

Key insight: "Pain of switching traditionally far outweighed the value
gained... today that equation is flipping quickly."

**Where it fits**: Partially covered by existing dimensions (beachhead, wedge,
services TAM). Items 2 and 5 are the gap — our framework doesn't explicitly
ask whether the product can coexist with incumbents vs. requiring
rip-and-replace. A downmarket-first strategy could be a consideration in
distribution realism.

---

### 2.2 Point Nine SaaS Napkin

**Source**: Training (Point Nine Capital blog — site refused connections)

The SaaS Napkin itself could not be fetched (pointninecap.com actively refused
connections). However, the Five Ways to $100M framework was retrieved from
Christoph Janz's blog and is now item 1.6. The SaaS Napkin's stage-specific
metric targets would complement the BVP benchmarks (item 1.1) but remain
unverified.

**Action**: Low priority given that BVP benchmarks (1.1) cover the same ground
with more granularity.

---

### 2.3 YC Idea Evaluation: Sitcom Ideas And Schlep Blindness

**Source**: YC-live (verified from paulgraham.com/startupideas.html)

Now verified from the source and promoted to item 1.7 with full details. The
key anti-patterns and heuristics are confirmed. See item 1.7 for the complete
extraction.

**Action**: Integrate as part of item 1.7.

---

### 2.4 Sequoia Business Plan Framework

**Source**: Sequoia-live (sequoiacap.com/article/writing-a-business-plan/)

Sequoia's canonical 10-point evaluation structure, verified live:

1. Company purpose (single declarative sentence)
2. Problem (customer pain + current solution shortcomings)
3. Solution (unique, compelling, enduring value prop — "why will it endure?")
4. Why now (timing catalyst)
5. Market potential (customer + market identification)
6. Competition/alternatives (direct + indirect, plan to win)
7. Business model (path to thriving)
8. Team (founder story)
9. Financials
10. Vision (5-year outcome)

Key Sequoia insight: "It wasn't really the slides we liked — it was their
ideas, the clarity of their thinking, and the scope of their ambition."

**Where it fits**: This is essentially what our qualification workflow already
does. Not worth adding as a separate framework, but useful as a completeness
cross-check: our output artifacts should cover every item on this list.

**Action**: Low priority. Could add as a completeness checklist.

---

## Priority 3: Reference data, not structural

### 3.1 Cloud 100 Valuation Benchmarks

**Source**: BVP-live (Cloud 100 Benchmarks 2025)

- Average Cloud 100 valuation: $11.2B
- Revenue multiple: 20x ARR (AI companies: 24x, non-AI: 19x)
- Revenue growth: 75% YoY average
- AI companies: $464B aggregate (42% of Cloud 100)

**Where it fits**: Reference data for the revenue analyst when modeling
financial scenarios or valuation expectations. Not a framework change.

---

### 3.2 Deep Tech Evaluation (Value-Capital Multiple)

**Source**: BVP-live (XB100 / State of Deep Tech)

Value-Capital Multiple (VCM) = Latest Valuation / Total Capital Raised.
Average: 5.5x. Range: 2.6x (agriculture) to 11.9x (aerospace).

50% of XB100 companies founded by PhDs. Average 122 patent documents per
company.

**Where it fits**: Only relevant if the idea being qualified has a deep tech
component (hardware, biotech, materials science). Not worth integrating into
the core framework, but could be noted as a reference for hardware-integrated
ideas (defensibility dimension 7).

---

## Not fetched — needs manual research

| Firm | Known frameworks | Potential value | Status |
|------|-----------------|-----------------|--------|
| a16z | Marketplace 100, AI market maps | Marketplace scoring, AI vertical maps (?) | 16 Metrics fetched; PMF article 404 |
| Accel | Euroscape → Globalscape 2025 | European market context, AI margin profiles (?) | Site restructured, old URLs 404 |
| Insight Partners | Periodic Table of SaaS, Onsite playbooks | Operational scaling benchmarks (?) | Index only, no article content (JS-heavy) |
| Lightspeed | Enterprise AI thesis | Enterprise adoption patterns (?) | URLs 404, site restructured |
| Point Nine | SaaS Napkin | Stage-specific metric targets (?) | Site refused connections; Janz blog fetched instead |
| SaaStr | Jason Lemkin's SaaS rules of thumb | SMB vs enterprise economics benchmarks (?) | 404 |
| Salesforce Ventures | Enterprise ecosystem thesis | Platform strategy context (?) | Not attempted |

---

## Integration status

### Integrated (2026-04-03)

These items were integrated into the framework, adapted for small teams
(1-2 person dev teams, not VC-backed companies):

- **1.5 PMF archetypes** → Added as "Problem Archetype" section in
  `idea-qualification.md`. Hair on Fire / Hard Fact / Future Vision
  classification with small-team guidance (avoid Future Vision unless you
  find a Hair on Fire wedge within it).
- **1.6 Customer size framework** → Added as "Customer Size Sanity Check" in
  `revenue-analyst.md`. Elephants/deers/rabbits/mice/flies with
  pricing-to-acquisition match check.
- **1.7 YC idea quality heuristics** → Baked into existing scoring dimensions:
  - "Who wants this RIGHT NOW?" → dim 1 (problem severity)
  - Well vs Crater → dim 3 (beachhead strength)
  - Schlep blindness → dim 4 (competitive advantage)
  - Organic vs made-up → dim 7 (right to win)
  - Sitcom idea → new red flag in `business-viability.md`
- **1.5 + 1.6** → Problem archetype and customer type added to output standard.

### Deprioritized — designed for large firms, not small teams

These items contain useful reference data but are aimed at companies raising
Series A-C rounds with dedicated finance and sales teams. They are preserved
here as reference but will not be integrated into the scoring framework.

- **1.1 SaaS metric benchmarks** — Growth rates by ARR stage, efficiency
  scores, CAC payback ranges. Useful if the team scales past $1M ARR but
  noise for a 2-person team deciding what to build.
- **1.2 AI autonomy scale (L0-L6)** — The delegation model already captures
  this distinction well enough for qualification purposes.
- **1.3 Modality-BMM fit (25x TAM)** — Interesting insight but already
  partially captured by the delegation model and services TAM guidance.
- **1.4 Opportunity scoring matrix** — Adds overhead to vertical scanning
  without changing decisions at small-team scale.
- **1.8 a16z metric anti-patterns** — Investor presentation hygiene. Not
  relevant when you have 5 customers, not 5 investors.
- **2.1 Five attributes of winning AI SoR** — Partially covered by existing
  dimensions (beachhead, wedge, services TAM).
- **2.2 Point Nine SaaS Napkin** — Unverified, and BVP benchmarks cover the
  same ground.
- **2.4 Sequoia business plan framework** — Our qualification workflow already
  covers all 10 items.
- **3.1 Cloud 100 benchmarks** — Reference data for revenue modeling at scale.
- **3.2 Deep tech VCM** — Only relevant for hardware/biotech ideas.
