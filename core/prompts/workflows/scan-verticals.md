# Workflow: Scan Verticals For AI-Native Opportunity

Proactive opportunity radar that identifies which industry verticals are ripe
for AI-native disruption, rather than waiting for ideas to be brought in.

## Mission

Map a set of industry verticals and surface the ones most likely to produce
strong AI-native business opportunities, so the user can decide where to focus
idea generation and qualification.

## When To Use

- The user wants to find opportunities rather than evaluate one they already
  have.
- The user wants to understand which verticals are under-served, ripe for
  disruption, or entering an AI-native transition.
- As a precursor to `qualify <idea>` when the user has not yet chosen a
  vertical.

## Scanning Criteria

For each vertical, assess:

### 1. Incumbent Software Age And Quality

- Is the dominant software on-premise, legacy, or poorly maintained SaaS?
- Are buyers frustrated with current tools?
- Is the vertical under-digitized (still running on spreadsheets, paper, or
  phone calls)?

### 2. Manual Cognitive Work Density

- How much of the workflow involves repetitive cognitive tasks (reading,
  classifying, drafting, reviewing, reconciling, routing)?
- Could an AI agent realistically perform these tasks end-to-end, not just
  assist?
- Is the volume high enough that automation creates meaningful value?

### 3. Data Richness And Proprietary Potential

- Does the vertical generate structured or semi-structured data that compounds
  in value over time?
- Can a new entrant accumulate proprietary data that horizontal AI providers
  cannot easily replicate?
- Are there domain-specific data standards, formats, or systems (DICOM, HL7,
  EDI, MISMO, etc.) that create integration depth?

### 4. Regulatory And Trust Barriers

- Are there compliance, certification, or licensing requirements that slow
  down new entrants but protect incumbents once cleared?
- Is the barrier clearable by a startup, or does it require years and millions?
- Would trust and compliance become a moat after entry?

### 5. Buyer Willingness And Budget

- Do buyers in this vertical already spend significantly on software or
  services for this workflow?
- Is there a clear budget holder?
- Would outcome-based pricing (per claim, per contract, per report) be natural
  and attractive in this vertical?

### 6. Horizontal AI Exposure

- How likely is it that OpenAI, Google, Anthropic, or Microsoft will build a
  good-enough vertical solution as a feature of their horizontal platform?
- Does the vertical require deep integration with legacy systems, obscure data
  formats, or industry-specific workflows that horizontal players are unlikely
  to prioritize?

### 7. Timing Signal

- Is there a recent shift in regulation, technology, buyer behavior, or market
  structure that opens a window?
- Are early AI-native startups already appearing in this vertical? Are they
  gaining traction or struggling?

## Output

Save the scan to `docs/research/vertical-scans/{scan-name}.md`.

### Output Structure

```markdown
# Vertical Opportunity Scan: {scan-name}
**Date**: {date}
**Verticals scanned**: {count}

## Summary

[2-3 sentence overview of which verticals look most promising and why]

## Vertical Rankings

### Tier 1: High Opportunity
[Verticals with strong signals across most criteria]

### Tier 2: Worth Investigating
[Verticals with some strong signals but open questions]

### Tier 3: Weak Or Premature
[Verticals that scored poorly or are too early]

## Per-Vertical Assessments

### {Vertical Name}
- **Incumbent software quality**: [Poor / Adequate / Strong]
- **Manual cognitive work density**: [Low / Medium / High]
- **Data richness and proprietary potential**: [Low / Medium / High]
- **Regulatory and trust barriers**: [None / Moderate / High] — clearable: [Yes/No]
- **Buyer willingness and budget**: [Low / Medium / High]
- **Horizontal AI exposure**: [Low / Medium / High]
- **Timing signal**: [Weak / Moderate / Strong]
- **Overall opportunity signal**: [Weak / Moderate / Strong]
- **Notes**: [Key insight or caveat]

## Recommended Next Steps

[Which verticals to explore further, what to validate, whether to proceed to
`qualify <idea>` for specific opportunities]
```

## Constraints

- Read `.worth-building/team-profile.yaml` first. If it
  does not exist, run the team-profile bootstrap from
  `core/prompts/workflows/qualify-idea.md` Stage 1 — a short Socratic
  intake that asks "solo developer or team?" and writes the file based
  on the answer. Do not scan verticals without a team profile; the
  filter is meaningless without one. Filter verticals through the
  team's actual capabilities — deprioritize verticals that require
  skills the team cannot build, distribution the team cannot execute,
  or regulatory expertise the team does not have.
- Research before ranking. Use web search and available data, do not rank from
  general knowledge alone.
- Cite sources for market claims and timing signals.
- Do not inflate scores to make results look exciting.
- Be explicit about which verticals are exposed to horizontal AI platform risk.
- This scan identifies where to look, not what to build. Hand promising
  verticals to `qualify <idea>` for full assessment.
- Flag verticals where the team profile shows a right-to-win advantage
  — e.g., the team's unique combination of skills, domain access, or
  distribution leverage is unusually strong for that vertical.
