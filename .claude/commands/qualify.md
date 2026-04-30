# /qualify - Start Socratic Business Qualification

When this command is invoked:

1. parse the idea name argument or ask for one
2. bootstrap the workspace internally with `scripts/assess "{idea-name}"` if
   needed
3. follow `core/prompts/workflows/qualify-idea.md`
4. ask exactly one question at a time by default and update the assessment
   files as the user answers
5. open every reply with the status header defined in the **Response
   Format** section of `core/prompts/workflows/qualify-idea.md` (stage
   banner on entry, progress bar + counter on each question)
6. continue until the idea reaches a clear decision or the user pauses

Follow:

- `AGENTS.md`
- `project.manifest.yaml`
- `docs/runbooks/run-an-assessment.md`
- `core/prompts/workflows/qualify-idea.md`
