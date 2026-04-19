# Incoming Knowledge

Drop zone for **third-party reference material** you want the AI agent
to consider while qualifying ideas — industry reports, competitor
teardowns, market studies, podcast transcripts, analyst notes,
research PDFs, scraped articles, conference summaries, etc.

Everything in this folder is **gitignored by default** (except this
README). Contents stay on your machine. That keeps you safe when the
material is paywalled, copyrighted, NDA'd, or just messy.

## What to put here

Good fits:

- Industry or vertical reports (e.g. *"State of Legal AI 2026"*)
- Analyst notes (Gartner, Forrester, CB Insights, a16z essays)
- Competitor product teardowns and pricing-page snapshots
- Podcast / interview transcripts with operators in the space
- Customer-discovery interview notes
- Internal market research someone on the team did earlier
- Articles, blog posts, newsletters worth grounding the analysis in
- PDF whitepapers, slide decks exported as PDF

Not a fit:

- Your own qualified ideas → those live in
  [`docs/assessments/`](../assessments/)
- Your own vertical scans → those live in
  [`docs/research/vertical-scans/`](../research/vertical-scans/)
- Secrets, credentials, customer PII

## How to use it during qualification

When you start a `qualify <idea>` or `scan <vertical>` session, point
the agent at relevant material here. Examples of how to phrase it:

```text
qualify ai scribe for physical therapy clinics — also read
docs/incoming-knowledge/state-of-legal-ai-2026.pdf and
docs/incoming-knowledge/pt-clinic-interview-notes.md before scoring
```

```text
scan legaltech — base your defensibility analysis on the reports in
docs/incoming-knowledge/, especially the a16z piece on vertical AI
```

The agent will:

- read the documents you point to
- treat them as **evidence** (citing them in `sources.md`)
- weigh them against its own web research
- never assume contents are authoritative without sanity-checking

## File naming convention

Keep filenames descriptive and date-stamped where possible so future-you
knows what the material is and how stale it is:

```
YYYY-MM-DD-source-topic.ext

2026-03-12-a16z-vertical-ai-thesis.md
2026-03-15-gartner-rpa-market-quadrant.pdf
2026-04-02-pt-clinic-owner-interview-bob.md
2026-04-05-cb-insights-legaltech-funding-q1.pdf
```

Markdown is preferred over PDF when possible — the agent reads it
faster and quotes from it more precisely. If you have a PDF, dropping
it here is fine; the agent can read PDFs directly.

## Copyright and redistribution

This folder is gitignored on purpose. Imported third-party research
often comes with redistribution restrictions. **Do not move material
out of this folder into a tracked location** unless you have rights to
redistribute it. If you want to publish a derived insight, paraphrase
it and cite the source in your own assessment file.

## Cleaning up

This folder is meant to grow and shrink. Once a piece of research has
been consumed by an assessment and the verdict is shipped, you can
safely delete it from here — the citations in `sources.md` are the
durable record. Or keep it as a local reference cache. Your call.
