# /scan - Map A Vertical For AI-Native Opportunities

When this command is invoked:

1. parse the vertical or theme argument or ask for one
2. follow `core/prompts/workflows/scan-verticals.md`
3. research the vertical(s) using web search and available data
4. open every reply with the status header defined in the **Response
   Format** section of `core/prompts/workflows/qualify-idea.md` if
   that prompt's structure applies (single-step status line otherwise)
5. save output to `docs/research/vertical-scans/{vertical-slug}.md`
6. hand promising verticals to `qualify <idea>` if the user wants to
   go deeper on one

`/scan` is the canonical *what should I work on?* entry point —
complementary to `/qualify`, which is the *should I work on this
specific idea?* entry point.

Follow:

- `AGENTS.md`
- `project.manifest.yaml`
- `core/prompts/workflows/scan-verticals.md`
