---
name: business-viability
description: Assess business idea viability in the AI-era software landscape
syntax: /business-viability
---

# Business Viability Assessment Command

**CRITICAL FIRST STEP** before investing significant development effort. Analyzes your software product idea against modern differentiation frameworks to identify strengths, weaknesses, and strategic positioning in an era where AI makes building software trivial.

## Purpose

Prevents wasted effort on "commodity trap" ideas by objectively evaluating:
- Sustainable competitive moats vs. easily-copied features
- Long-term defensibility in an AI-assisted development world
- Strategic positioning for 2026-2030 software landscape
- Risk of commoditization and competitive pressure

**Philosophy**: In 2026, features are no longer moats. Anyone with AI can clone Linktree, Typekit, or basic SaaS in a weekend. The differentiator is what happens AFTER you build: data accumulation, workflow integration, trust, and compounding learning.

This framework measures defensibility, not the full build decision. Always pair
it with `core/prompts/analysis/idea-qualification.md` before deciding
`Build now`, `Validate first`, `Park`, or `No-go`.

Beachhead strength, distribution realism, validation cost, and regulatory or
operational complexity are qualification questions, not extra moat dimensions.
This framework asks what becomes hard to copy after entry, not whether the
starting point is attractive enough to enter.

## Usage

```bash
/business-viability
```

The command will guide you through an interactive assessment of your business idea across 7 critical differentiation dimensions.

## The Modern Software Reality

### The Commoditization Shift (2026 Forward)

**Before AI Coding** (2015-2023):
- Feature development = competitive advantage
- Technical complexity = moat
- 6-12 months to build MVP
- Developer team = barrier to entry

**After AI Coding** (2024+):
- Features = commodity (built in days/weeks)
- Solo developer + AI = full product
- Weekend MVP builds are common
- Technical execution is table stakes

**The New Question**: *If anyone can build your features, what makes your product defensible?*

### The Delegation Shift

The most defensible vertical AI products are not tools the user operates — they
are workers the user delegates to. The professional sets direction and reviews
output; the AI does the work. This matters for defensibility because:

- **Delegation creates feedback data.** Every correction, approval, and edit is
  a structured signal that trains the AI on what "good" looks like in this
  specific domain, organization, and context. This is how proprietary data moats
  build naturally — through the act of reviewing the AI's work.
- **Delegation deepens embedding.** A tool you use is easy to swap. A worker
  you have trained and trust is not. The switching cost is not data migration —
  it is the accumulated calibration and domain context the AI has learned.
- **Delegation expands the market.** A tool competes with other tools
  (software spend). A delegated worker competes with headcount and outsourcing
  (services spend). The addressable market is fundamentally larger.

When scoring defensibility, consider whether the product earns trust through
accumulated evidence of competent work — the way a new hire earns trust — or
whether it must convince the user on day one. Products that earn trust through
delegation build compounding moats that wrappers and copilots cannot replicate.

## The 7 Differentiation Dimensions

### 1. Proprietary Data & Context Moats (0-15 points)

**What It Measures**: Your ability to accumulate unique data that improves the product and cannot be replicated by clones.

#### Scoring Rubric

**15 points - STRONG DATA MOAT**:
- Product generates proprietary behavioral data with every use
- Data creates compounding intelligence (gets smarter over time)
- Historical context is irreplaceable (years of user patterns)
- Network data effects (more users = better data for all)
- The domain produces **structured feedback signals**: the product can tell
  whether its output was good or bad automatically, not through manual labeling
  (e.g., a recruiting AI learns from hiring outcomes; a legal drafting AI learns
  from lawyer corrections)
- The data is **proprietary by default**: customers would never publish or share
  it (medical records, financial transactions, internal HR cases, legal filings)
- The domain has **high variance and local complexity**: every instance is
  different enough that a general-purpose model cannot solve it well, and an AI
  that has seen ten thousand domain-specific situations has a compounding
  advantage (e.g., every municipality has different collective bargaining terms,
  every construction project has unique subcontractor relationships)

Examples:
- Salesforce: 10 years of email metadata predicts client closing probability
- Netflix: Viewing patterns improve recommendations for all users
- Stripe/Plaid: Transaction history improves fraud detection
- Recruiting AI: Hiring outcomes feed back into screening models automatically

**10 points - MODERATE DATA MOAT**:
- Product collects useful data but it's not uniquely valuable
- Data improves product but doesn't compound dramatically
- Competitors could catch up with similar user base
- Some contextual advantage from history
- Feedback signals exist but are noisy, delayed, or confounded (e.g., marketing
  copy conversion depends on too many variables to isolate AI quality)
- Data is useful but not irreplaceable or unique to the product

Examples:
- Fitness trackers: Personal health data valuable but not network-enhanced
- Project management tools: Task history helps but doesn't create intelligence
- Basic analytics platforms: Data is valuable but easily replicated

**5 points - WEAK DATA MOAT**:
- Product collects data but it doesn't improve functionality
- Data is primarily for reporting/record-keeping
- No learning or intelligence layer
- Easy for users to export and switch
- Domain is uniform enough that a general-purpose model handles it well

Examples:
- Link-in-bio tools: No meaningful data accumulation
- Simple form builders: Forms don't get smarter with use
- Static content platforms: Content doesn't improve product

**0 points - NO DATA MOAT**:
- Pure utility with no data collection
- Users don't leave valuable context behind
- Switching has zero data cost
- No learning or improvement possible

Examples:
- PDF converters, image resizers, file format tools
- One-time use utilities
- Static template libraries

#### Assessment Questions
1. Does your product generate proprietary data with each use?
2. Does accumulated data make the product better over time?
3. Can competitors replicate your data advantage by building the same features?
4. Would users lose valuable context/history by switching to a competitor?
5. Does your data create network effects (more users = better product for all)?
6. Does the domain produce **structured feedback signals** — can the AI learn
   whether its output was good or bad automatically (hiring outcome, lawyer
   correction, claim approval), or is the signal noisy and delayed?
7. Is the data **proprietary by default** (records customers would never share
   publicly), or could a competitor train on similar public data?
8. Does the domain have **high variance and local complexity** (every instance
   is different), or is it uniform enough that a general model handles it well?
9. After 10,000 customers and two years of operation, would your AI be
   meaningfully better than a new entrant using the same foundation model? If
   the answer is only "we have a nicer UI", there is no data flywheel.

### 2. Workflow Embedding & Switching Costs (0-15 points)

**What It Measures**: How deeply integrated your product becomes into daily operations, making replacement painful.

#### Scoring Rubric

**15 points - MISSION CRITICAL**:
- Product becomes "central nervous system" of workflow
- Daily/hourly usage across teams
- Removal would halt operations
- Years of institutional knowledge embedded
- Complex integrations with other critical systems

Examples:
- Salesforce: All sales processes and customer data
- Notion/Basecamp: Company wiki + institutional memory
- Email platforms: Contact lists + message history
- ERP systems: Entire business processes

**10 points - DEEPLY EMBEDDED**:
- Regular daily usage
- Significant workflow disruption if removed
- Moderate switching costs (weeks to months)
- Some integrations with other tools
- Users have invested in learning/customization

Examples:
- Figma: Design files + component libraries
- GitHub: Code repositories + collaboration workflows
- Slack: Communication history + integrations

**5 points - CONVENIENT BUT REPLACEABLE**:
- Weekly usage or project-based
- Alternative tools exist with similar workflows
- Switching cost is inconvenient but manageable
- Limited integration depth
- Low learning curve for alternatives

Examples:
- Survey tools (Typeform, Google Forms)
- Simple scheduling tools
- Basic invoice generators
- Generic to-do list apps

**0 points - ZERO SWITCHING COST**:
- One-time or occasional use
- Instant replacement with competitor
- No workflow integration
- No learning investment
- Pure commodity utility

Examples:
- Link aggregators (Linktree clones)
- QR code generators
- Color picker tools
- File converters

#### Assessment Questions
1. How often do users interact with your product? (Hourly/Daily/Weekly/Monthly)
2. What would break if users stopped using your product tomorrow?
3. How long would migration to a competitor take? (Days/Weeks/Months/Years)
4. Does your product integrate with other critical business systems?
5. Do users invest significant time learning/customizing your product?

### 3. Trust, Compliance & Governance (0-15 points)

**What It Measures**: Regulatory barriers, liability coverage, and trust moats that take years to build.

Important: legislation and compliance complexity are not automatically good.
They count here only when the team can realistically clear them and then
benefit from the resulting trust barrier. If complexity mainly slows sales,
onboarding, or validation, score that downside in
`core/prompts/analysis/idea-qualification.md`.

#### Scoring Rubric

**15 points - TRUST IS THE MOAT**:
- Industry requires certifications (SOC2, HIPAA, PCI-DSS)
- Product handles financial transactions or PII
- Liability insurance required
- Regulatory compliance is complex and costly
- Brand reputation is critical (finance, healthcare, legal)
- Auditability and explainability requirements

Examples:
- Coinbase: Crypto exchange in regulated space
- Healthcare SaaS: HIPAA compliance mandatory
- Financial platforms: PCI-DSS + regulatory oversight
- Legal tech: Liability for AI decisions

**10 points - COMPLIANCE REQUIRED**:
- Some regulatory requirements
- Data privacy regulations (GDPR, CCPA)
- Security certifications valuable
- Moderate audit requirements
- Industry-specific standards

Examples:
- Enterprise HR software: Employee data privacy
- Educational platforms: FERPA compliance
- Marketing tools: GDPR/email regulations
- B2B SaaS: SOC2 expected by enterprise

**5 points - BASIC TRUST FACTORS**:
- General security expectations
- Privacy policies required
- No specific certifications needed
- Reputation matters but not critical
- Low regulatory burden

Examples:
- Consumer productivity tools
- Social media platforms
- General collaboration software
- Content management systems

**0 points - NO TRUST BARRIERS**:
- No regulatory requirements
- No sensitive data handling
- No compliance needed
- Zero liability concerns
- Trust is not a purchasing factor

Examples:
- Font libraries
- Icon packs
- Link shorteners
- Simple utilities

#### Assessment Questions
1. Does your product handle sensitive data (financial, health, personal)?
2. Are industry certifications required or expected?
3. Could your product make mistakes with serious consequences?
4. Do customers need liability guarantees or insurance?
5. How long does it take to build trust/brand in your industry?

### 4. Vertical Integration & Niche Depth (0-15 points)

**What It Measures**: How specialized and deeply integrated into a specific industry's complex workflows.

#### Scoring Rubric

**15 points - DEEP VERTICAL SPECIALIST**:
- Solves problems unique to one industry
- Integrates with obscure legacy systems
- Understands weird industry workflows
- Pre-built integrations competitors won't build
- Domain expertise is the product

Examples:
- HVAC project management with supply chain integration
- Dental office software with insurance claim systems
- Construction management with local vendor networks
- Legal practice management with court filing systems

**10 points - INDUSTRY-FOCUSED**:
- Targets specific industry but broader application
- Some industry-specific features
- Moderate integration complexity
- Industry knowledge required but accessible
- Competitors could learn the domain

Examples:
- Restaurant POS systems
- Retail inventory management
- Salon booking systems
- Real estate CRM platforms

**5 points - CATEGORY-SPECIFIC**:
- Serves a category (e.g., "e-commerce") not industry
- General features with some customization
- Standard integrations
- Limited domain specialization
- Horizontal tool with vertical positioning

Examples:
- E-commerce platforms (Shopify)
- General CRM tools
- Marketing automation platforms
- Generic analytics dashboards

**0 points - HORIZONTAL/GENERALIST**:
- Solves problems across all industries
- No industry-specific features
- Generic workflows
- Maximum competition
- Pure commodity

Examples:
- Project management (Asana, Trello)
- Note-taking apps
- Link-in-bio tools
- File sharing platforms

#### Assessment Questions
1. Is your product specific to one industry or broadly applicable?
2. Does it integrate with industry-specific legacy systems?
3. How long would it take a competitor to learn your industry domain?
4. Are there workflow complexities that generalist tools can't handle?
5. Could your product work for multiple industries with minor changes?
6. Does the product perform work autonomously (agent) or assist a human (tool)?
   Agent-level products in deep verticals are harder for horizontal AI providers
   to replicate because they require domain data, legacy integrations, and
   regulatory compliance that general-purpose models lack.

### 5. Network Effects & Community (0-15 points)

**What It Measures**: Whether more users make the product better for everyone, creating exponential value.

#### Scoring Rubric

**15 points - STRONG NETWORK EFFECTS**:
- Product value grows exponentially with users
- Two-sided marketplace dynamics
- User-generated content improves product
- Social/collaboration features are core
- Leaving means losing connections/network

Examples:
- GitHub: Developers + employers + open source ecosystem
- Airbnb/Uber: Hosts/riders + guests/drivers
- LinkedIn: Professional network effects
- Figma: Shared components + hiring marketplace

**10 points - MODERATE NETWORK EFFECTS**:
- Some collaborative features
- User contributions add value
- Community creates stickiness
- Marketplace elements present
- Network size matters but not critical

Examples:
- Notion: Template marketplace + community
- Discord: Community-driven value
- Etsy: Seller-buyer network
- WordPress: Plugin ecosystem

**5 points - WEAK NETWORK EFFECTS**:
- Optional social/sharing features
- Community exists but isn't core value
- Network size has minimal impact on product quality
- Single-player mode is fully functional

Examples:
- Design tools with optional sharing
- Productivity apps with team features
- Apps with social sharing options
- Platforms with optional collaboration

**0 points - NO NETWORK EFFECTS**:
- Pure single-player product
- No collaboration or social features
- User count doesn't affect product value
- Isolated utility

Examples:
- PDF editors
- Link-in-bio pages
- Simple calculators/converters
- Static website builders

#### Assessment Questions
1. Does your product get better as more people use it?
2. Do users interact with or depend on other users?
3. Is there a marketplace, content library, or ecosystem?
4. Would users lose connections/network if they switched?
5. Can the product deliver full value to a single user in isolation?

### 6. Speed of Iteration & Learning Velocity (0-10 points)

**What It Measures**: Your ability to learn from users and improve faster than competitors can copy.

#### Scoring Rubric

**10 points - SPEED IS THE MOAT**:
- Weekly or more frequent deployments
- Real-time user feedback loops (hours, not days)
- A/B testing everything continuously
- Automated analytics and decision-making
- Product changes based on behavioral data
- "Worse but learning faster" strategy

Examples:
- High-velocity startups
- AI-first products with continuous model training
- Products with autonomous optimization
- Real-time personalization platforms

**7 points - FAST ITERATION**:
- Bi-weekly deployment cycles
- Regular user feedback incorporation
- Some A/B testing
- Data-informed decisions
- Quick response to market changes

Examples:
- Modern SaaS with agile teams
- Consumer apps with rapid updates
- Products with active beta programs

**4 points - MODERATE PACE**:
- Monthly updates
- Quarterly feature releases
- User feedback considered but slow to implement
- Some data analysis
- Traditional development cycles

Examples:
- Enterprise software with QA gates
- Products requiring extensive testing
- Regulated industry software

**0 points - SLOW/STATIC**:
- Quarterly or annual releases
- No user feedback loops
- Decisions based on planning, not data
- Long development cycles
- Waterfall methodology

Examples:
- Legacy enterprise software
- Heavily regulated products
- Hardware-dependent software

#### Assessment Questions
1. How often can you deploy changes? (Daily/Weekly/Monthly/Quarterly)
2. How quickly do you get user feedback? (Hours/Days/Weeks)
3. Do you A/B test features and iterate based on data?
4. Can you out-learn competitors even if they copy your features?
5. Is your development process optimized for speed or perfection?

### 7. Hardware Integration & Physical Bundling (0-10 points)

**What It Measures**: Barriers created by combining software with hardware or physical products.

#### Scoring Rubric

**10 points - HARDWARE-SOFTWARE INTEGRATION**:
- Software requires proprietary hardware
- Hardware provides unique data/capabilities
- Physical product distribution is complex
- Manufacturing and supply chain barriers
- Local processing advantages (edge computing)

Examples:
- Apple ecosystem (devices + software)
- Peloton (bike + classes + software)
- Medical devices (Dexcom, Abbott)
- IoT platforms (smart home hubs)
- Robotics with AI agents

**7 points - HARDWARE-ENHANCED**:
- Works better with hardware but not required
- Optional physical components
- Some hardware integration benefits
- Mixed revenue model (hardware + software)

Examples:
- Fitness apps with wearable integration
- Smart home software with sensors
- POS systems with terminals
- VR/AR experiences

**3 points - HARDWARE-COMPATIBLE**:
- Integrates with third-party hardware
- No proprietary hardware
- Software-first with device compatibility
- Commodity hardware partnerships

Examples:
- Apps with printer integration
- Software with generic IoT device support
- Platforms with third-party hardware APIs

**0 points - PURE SOFTWARE**:
- No hardware component
- Digital-only product
- Software can be copied entirely
- No physical barriers

Examples:
- Web apps
- Mobile apps
- SaaS platforms
- Digital services

#### Assessment Questions
1. Does your product require hardware to function?
2. Do you manufacture or distribute physical products?
3. Does hardware create unique data or capabilities?
4. Would hardware distribution create competitive barriers?
5. Is your product purely digital or has physical components?

## Scoring Summary

### Total Score Calculation

**Maximum Score**: 100 points
- Proprietary Data & Context: 0-15 points
- Workflow Embedding: 0-15 points
- Trust & Compliance: 0-15 points
- Vertical Integration: 0-15 points
- Network Effects: 0-15 points
- Iteration Speed: 0-10 points
- Hardware Integration: 0-10 points
- **Bonus - Multiple Strong Moats**: +5 points if 3+ categories score 10+

### Defensibility Interpretation

#### 🔴 COMMODITY TRAP (0-30 points)

**Reality Check**: Your idea is highly vulnerable to AI-powered clones. Features can be replicated in days/weeks.

**Characteristics**:
- Pure utility with no data accumulation
- Easy to switch to competitors
- No regulatory barriers
- Horizontal/generalist solution
- Pure software with no integration depth

**Examples**:
- Link-in-bio pages (Linktree)
- Font libraries (Typekit)
- Simple form builders
- File converters
- QR code generators

**Recommendation**:
> ⚠️ **HIGH RISK - Reconsider or Pivot**
>
> This idea will face extreme competition. Either:
> 1. **Pivot to add moats**: Add data loops, vertical specialization, or network effects
> 2. **Speed strategy**: Plan to out-iterate competitors (10+ feature score required)
> 3. **Acquisition play**: Build to be acquired quickly before market saturates
> 4. **Find a different idea**: Explore concepts with stronger natural moats

**Questions to ask**:
- Can you add proprietary data collection?
- Can you specialize in a vertical niche?
- Can you build network effects?
- Can you move fast enough to always stay ahead?

#### 🟡 MODERATE DEFENSIBILITY (31-60 points)

**Reality Check**: You have some defensibility, but need to execute well and continuously strengthen moats.

**Characteristics**:
- 1-2 moderate moats (data, workflow, or niche)
- Some switching costs
- Competitive but not commoditized
- Requires strong execution to win

**Examples**:
- Industry-specific CRM
- Workflow tools with integrations
- Niche vertical SaaS
- Platforms with modest network effects

**Recommendation**:
> ✅ **VIABLE WITH FOCUS**
>
> Your idea has potential but requires:
> 1. **Double down on strongest moat**: Identify your best 1-2 moats and invest heavily
> 2. **Add compounding elements**: Build data loops and learning systems
> 3. **Fast iteration**: Ship weekly, learn continuously, stay ahead of copycats
> 4. **Plan moat expansion**: Map how to add additional moats over time
>
> **Success depends on**: Execution quality and continuous moat strengthening

**Strategic priorities**:
1. Strengthen your top-scoring moat
2. Add 1-2 additional moats within 12 months
3. Build switching costs early
4. Establish category leadership quickly

#### 🟢 STRONG DEFENSIBILITY (61-85 points)

**Reality Check**: You have multiple strong moats. This is a defensible business in the AI era.

**Characteristics**:
- 2-3 strong moats (scoring 10+ each)
- High switching costs
- Compound advantages over time
- Difficult for competitors to replicate even with AI

**Examples**:
- Salesforce (data + workflow + trust)
- Stripe (data + trust + compliance)
- Netflix (data + content + network)
- Vertical SaaS in regulated industries

**Recommendation**:
> 🎯 **EXCELLENT POSITIONING**
>
> You have strong competitive advantages:
> 1. **Exploit moat synergies**: Your moats reinforce each other
> 2. **Focus on growth**: Scale before competitors catch up
> 3. **Build brand**: Reputation becomes an additional moat
> 4. **Expand systematically**: Add adjacent moats strategically
>
> **Key risks to watch**:
> - New entrants with different moat strategies
> - Platform shifts that invalidate current advantages
> - Regulatory changes in your favor or against you

**Growth priorities**:
1. Scale user base to compound data advantages
2. Deepen integrations to increase switching costs
3. Build trust/brand in your category
4. Defend against well-funded competitors

#### 🔵 EXCEPTIONAL MOAT (86-100 points)

**Reality Check**: You have rare, multi-layered defensibility. This is a potential category-defining business.

**Characteristics**:
- 3+ strong moats (10+ each)
- Synergistic advantages that compound
- Near-impossible to replicate entirely
- Winner-take-most dynamics likely

**Examples**:
- Apple (hardware + ecosystem + brand + data)
- Amazon (network + data + infrastructure + trust)
- Coinbase (trust + compliance + brand + network)
- Deep vertical platforms (data + workflow + compliance)

**Recommendation**:
> 🚀 **CATEGORY-DEFINING POTENTIAL**
>
> You have exceptional positioning:
> 1. **Think winner-take-most**: This could be a category-defining company
> 2. **Raise capital strategically**: Moats justify premium valuations
> 3. **Move fast on distribution**: Your moats protect market share
> 4. **Plan for scale**: Infrastructure to support rapid growth
>
> **Don't get complacent**:
> - Strong moats attract strong competitors
> - Platform shifts can still disrupt
> - Maintain iteration speed despite moats
> - Continue adding moats (there's always more)

**Strategic imperatives**:
1. Dominate your category before competition consolidates
2. Build ecosystem lock-in (developers, partners, users)
3. Expand to adjacent markets leveraging moats
4. Prepare for well-funded competitor attacks

## Red Flags: Automatic Disqualification

Regardless of score, these factors indicate serious issues:

### 🚩 Pure Feature Play
- **Description**: No moat beyond "we do X better"
- **Why it fails**: AI can copy "better" in weeks
- **Example**: "It's like Notion but with better tables"

### 🚩 Undifferentiated Marketplace
- **Description**: Two-sided marketplace in saturated category
- **Why it fails**: Chicken-egg problem + network effects favor incumbents
- **Example**: "Uber for X" in established category

### 🚩 Better UI/UX as Only Moat
- **Description**: Same features with prettier design
- **Why it fails**: Design is easily copied
- **Example**: "Calendly but beautiful"

### 🚩 "We'll Build It Better"
- **Description**: No structural advantages, just execution confidence
- **Why it fails**: Incumbents have resources to out-execute
- **Example**: Competing with established player on pure quality

### 🚩 LLM Wrapper Without Data Flywheel
- **Description**: Takes user input, sends it to an LLM API, returns output with
  prompt engineering on top. No proprietary data accumulation, no feedback loop,
  no domain-specific learning.
- **Why it fails**: The moment the foundation model improves, your value-add
  shrinks. The moment a competitor copies your prompt template, you are
  identical. There is no compounding advantage after 10,000 customers.
- **Example**: "AI marketing copy generator" that calls GPT with a system prompt
  and has no way to learn which copy actually converts

### 🚩 Sitcom Idea
- **Description**: Sounds plausible when described, but nobody urgently needs it.
  People say "yeah, I could see using that" but nobody actually would. Often
  generated by brainstorming rather than lived experience.
- **Why it fails**: Broad shallow interest is not demand. You need a small number
  of people who want this desperately, not a large number who think "maybe."
- **Example**: "Social network for pet owners", "AI-powered meal planner for
  busy parents" — sounds reasonable, but who would use a rough v1 from an
  unknown team?

### 🚩 Ignoring Distribution Challenges
- **Description**: "Build it and they will come"
- **Why it fails**: Distribution is harder than building
- **Example**: Great product with no go-to-market strategy

## Green Flags: High-Potential Indicators

These patterns suggest strong potential regardless of current score:

### ✅ Data Flywheel Design
- Product does work → work generates domain-specific data → data improves the
  AI → better AI does better work → more customers → more data
- Domain produces structured feedback signals (AI can learn from outcomes
  automatically, not through manual labeling)
- Data is proprietary by default (customers would never share it publicly)
- Domain has high variance and local complexity (general models cannot solve it
  well, accumulated experience compounds)
- After two years and thousands of customers, a new entrant using the same
  foundation model cannot catch up because they lack the dataset
- **Example**: Every claim processed improves denial prediction; every lawyer
  correction fine-tunes contract drafting; every hiring outcome sharpens
  candidate screening

### ✅ 10x Better in Regulated Industry
- Dramatic improvement in industry with compliance barriers
- Incumbents are complacent due to moats
- **Example**: Modern banking software vs. legacy systems

### ✅ Category Creation
- Solving problem people don't know they have
- No direct competitors (yet)
- First-mover advantage in new category
- **Example**: Notion's "all-in-one workspace" concept

### ✅ Unbundling Play with Moats
- Taking one feature from bloated incumbent
- Adding structural moats incumbents lack
- **Example**: Stripe unbundling payments from banks + adding API-first

### ✅ AI-Native Intelligence
- Uses AI not just to build faster but as product differentiator
- AI creates proprietary insights from data
- **Example**: AI that learns specific industry workflows over time

### ✅ Agent-Level Value Capture
- Product does the work, not just supports it (agent, not tool)
- Replaces human task execution, enabling outcome-based pricing
- Deep vertical integration makes the agent hard to replicate with horizontal AI
- **Example**: AI billing agent that submits claims, follows up on denials, and
  resolves discrepancies autonomously — priced per claim, not per seat

## Strategic Recommendations by Archetype

### Archetype 1: Pure Utility (0-20 points)

**Reality**: You're selling a commodity. AI will clone you in days.

**Options**:
1. **Pivot to Vertical**: Specialize for one industry + deep integrations
2. **Add Data Layer**: Make it smarter with use
3. **Build Network**: Add collaborative/social features
4. **Speed Play**: Ship so fast you're always 6 months ahead
5. **Consider Different Idea**: This may not be venture-viable

### Archetype 2: Niche Player (21-40 points)

**Reality**: You have one moat (usually vertical focus). Can build a business but needs strengthening.

**Strategy**:
1. **Deepen the Niche**: Become THE solution for your vertical
2. **Add Workflow Integration**: Become indispensable to daily operations
3. **Build Data Loops**: Collect data that improves product
4. **Create Community**: User network effects if possible
5. **Move Fast**: High iteration speed to compensate for single moat

### Archetype 3: Platform Builder (41-60 points)

**Reality**: Multiple moderate moats. Viable business with execution risk.

**Strategy**:
1. **Identify Strongest Moat**: Double down on your #1 advantage
2. **Add Compound Moats**: Stack 2-3 moats that reinforce each other
3. **Growth Focus**: Scale before competitors emerge
4. **Ecosystem Strategy**: Developers, integrations, partners
5. **Brand Building**: Reputation becomes additional moat

### Archetype 4: Category Leader (61+ points)

**Reality**: Strong multi-moat position. Category-defining potential.

**Strategy**:
1. **Dominate Category**: Winner-take-most positioning
2. **Moat Expansion**: Add moats in adjacent areas
3. **Ecosystem Lock-in**: Build platform dependencies
4. **Defend Actively**: Well-funded competitors will emerge
5. **Plan for Scale**: Infrastructure for 10x-100x growth

## Assessment Workflow

### Step 1: Score Each Dimension
Work through each of the 7 dimensions, honestly assessing your business idea:
- Proprietary Data (0-15)
- Workflow Embedding (0-15)
- Trust & Compliance (0-15)
- Vertical Integration (0-15)
- Network Effects (0-15)
- Iteration Speed (0-10)
- Hardware Integration (0-10)

### Step 2: Calculate Total
Add scores and apply bonus if applicable (+5 for 3+ strong moats).

### Step 3: Check Red/Green Flags
Review disqualifying red flags and high-potential green flags.

### Step 4: Identify Archetype
Determine which strategic archetype matches your score.

### Step 5: Action Planning
Based on your archetype and weakest dimensions:
1. **Keep**: Which moats are strong? Protect and deepen them.
2. **Add**: Which moats can you realistically add? (12-month plan)
3. **Strengthen**: Which weak moats can be improved?
4. **Accept**: Which moats are impossible for your idea?

### Step 6: Final Decision Handoff

Use this defensibility score as one input into the final verdict.

- **Score 60+**: Strong moat signal. Still requires qualification score `>=70`
  and no gate blockers to earn `Build now`.
- **Score 45-59**: Moderate moat signal. Usually `Validate first` unless the
  wedge can be sharpened quickly.
- **Score 30-44**: Weak moat signal. Usually `Park` unless a narrower wedge
  materially changes the score.
- **Score 0-29**: `No-go` signal. Find a different angle or abandon the idea.

Never let defensibility alone override weak buyer urgency, weak distribution,
poor right-to-win, or bad capital fit.

## Example Assessment

### Example: "AI-Powered HVAC Project Management"

**Dimension Scores**:
- **Proprietary Data**: 12/15 (learns installation patterns, predicts issues)
- **Workflow Embedding**: 14/15 (manages entire project lifecycle)
- **Trust & Compliance**: 8/15 (some licensing/safety regulations)
- **Vertical Integration**: 15/15 (deep HVAC industry specialization + supply chain)
- **Network Effects**: 5/15 (limited contractor network effects)
- **Iteration Speed**: 7/10 (modern development, weekly deploys)
- **Hardware Integration**: 7/10 (integrates with HVAC sensors, not required)

**Total**: 68/100 (🟢 STRONG DEFENSIBILITY)
**Bonus**: +5 (4 dimensions score 10+) = **73/100**

**Archetype**: Category Leader

**Analysis**:
- **Strengths**: Deep vertical (15), workflow embedding (14), data moats (12)
- **Opportunities**: Add contractor marketplace (network effects)
- **Risks**: Larger competitors entering niche

**Recommendation**:
> 🎯 **STRONG BUSINESS POTENTIAL**
>
> This has category-defining potential in HVAC vertical:
> 1. Triple-moat advantage (data + workflow + vertical)
> 2. AI creates unique insights incumbents lack
> 3. Add contractor marketplace for network effects
>
> **Next Steps**:
> - Build MVP with 10-20 HVAC contractors
> - Focus on data collection and AI learning
> - Develop supply chain integrations
> - Plan for category dominance (not feature parity)

### Example: "Beautiful Link-in-Bio Tool"

**Dimension Scores**:
- **Proprietary Data**: 0/15 (no data accumulation)
- **Workflow Embedding**: 2/15 (occasional use, trivial to switch)
- **Trust & Compliance**: 0/15 (no regulatory requirements)
- **Vertical Integration**: 0/15 (horizontal tool for all creators)
- **Network Effects**: 3/15 (weak social sharing features)
- **Iteration Speed**: 8/10 (fast iteration possible)
- **Hardware Integration**: 0/10 (pure web app)

**Total**: 13/100 (🔴 COMMODITY TRAP)

**Archetype**: Pure Utility

**Red Flags**:
- ✅ Pure feature play ("better design")
- ✅ Better UI/UX as only moat
- ✅ Easily AI-cloneable in one weekend

**Analysis**:
- **Strengths**: Only iteration speed (8)
- **Fatal Flaws**: Zero structural moats
- **Competition**: Linktree + 1000 clones

**Recommendation**:
> ⚠️ **HIGH RISK - PIVOT REQUIRED**
>
> This is a classic commodity trap:
> 1. Anyone can clone in one weekend with AI
> 2. Zero switching costs
> 3. No defensibility
>
> **Pivot Options**:
> 1. **Vertical Specialist**: Link-in-bio for musicians with Spotify integration + fan data analytics
> 2. **Data Product**: Collect creator analytics, provide AI insights
> 3. **Network Play**: Build creator marketplace/community
> 4. **Different Idea**: This category is saturated
>
> **Don't Build This**: Unless you have massive distribution advantage or exit strategy within 6 months.

## Integration with Project Workflow

### When to Run Assessment

1. **Before Starting Development**: Validate idea before building
2. **Before Fundraising**: Understand moat story for investors
3. **Quarterly Review**: Track moat development progress
4. **Competitive Analysis**: Compare moats vs. competitors
5. **Pivot Decisions**: Evaluate new directions

### After Assessment

**If Score is 60+**:
```text
Treat this as a strong moat signal, not an automatic green light.
Confirm qualification score, founder/team right-to-win, capital fit, and risk
gates before calling it Build now.
```

**If Score is 45-59**:
```text
Use this as a validate-first signal.
1. Sharpen the wedge
2. Add one concrete compounding advantage
3. Re-assess after bounded validation
```

**If Score is Under 45**:
```text
Treat this as a park or no-go signal.
1. Reframe the wedge
2. Change vertical or distribution path
3. Re-assess only if the structural story changes
```

## Output Format

The assessment generates a detailed report:

```markdown
# Business Viability Assessment
**Date**: 2026-01-02
**Qualification Score**: 78/100
**Defensibility Score**: 73/100
**Final Verdict**: Build now

## Overall Assessment: 🟢 STRONG DEFENSIBILITY

### Dimension Scores
- Proprietary Data & Context: 12/15 ⭐⭐⭐
- Workflow Embedding: 14/15 ⭐⭐⭐
- Trust & Compliance: 8/15 ⭐⭐
- Vertical Integration: 15/15 ⭐⭐⭐
- Network Effects: 5/15 ⭐
- Iteration Speed: 7/10 ⭐⭐
- Hardware Integration: 7/10 ⭐⭐

### Archetype: Category Leader

### Decision Rule Applied
- Qualification `78 >= 70`
- Defensibility `73 >= 60`
- No gate blockers in founder/team, capital, validation, dependency, or
  regulatory readiness

### Strategic Recommendations
[Detailed recommendations based on scores]

### Next Steps
1. [Specific actionable steps]
2. [Moat development plan]
3. [Risk mitigation strategies]

---
**Generated by**: Business Viability Assessor
**Report saved to**: `.claude/viability-reports/assessment-2026-01-02.md`
```

## Related Resources

- **[Shared Agent Instructions](../../../AGENTS.md)** - Core operating rules
- **[Idea Qualification Rubric](idea-qualification.md)** - Qualification score
- **[Qualify Idea Workflow](../workflows/qualify-idea.md)** - End-to-end flow

---

**Remember**: In 2026, building software is trivial. Defending it is hard. Score honestly, build moats strategically, and never rely on features alone.
