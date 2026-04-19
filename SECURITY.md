# Security Policy

## Supported Versions

The public `main` branch is the supported version.

## Reporting A Vulnerability

Do not open a public issue for a vulnerability or accidental secret
exposure. Email the maintainer listed on the GitHub profile, or use
GitHub's private vulnerability reporting if it is enabled for the
repository.

Include:

- A short description of the issue
- Steps to reproduce
- Files or scripts involved
- Whether any private data, credentials, or assessment content may be
  exposed

## Secret Handling

Never commit `.env` files, API keys, tokens, passwords, private team
profiles, private assessments, or customer data. The repository is
configured to ignore common secret files and private assessment outputs,
but contributors are still responsible for checking their diffs before
opening a PR.

## AI Agent Permissions

The committed agent settings are intentionally conservative for a public
repository.

**Claude Code** (`.claude/settings.json`) allows reading project files
and running the read-only validation scripts, but does not pre-approve
broad shell, GitHub, git-push, or file-editing permissions. If you want
a smoother local workflow, copy `.claude/settings.local.json.example`
to `.claude/settings.local.json` and opt in to the convenience allows.
The `.local.json` file is gitignored, so local trust decisions do not
become the public default.

**Codex** (`.codex/config.toml`) sets `approval_policy = "on-request"`
and `sandbox_mode = "workspace-write"`. Codex will prompt before
escalations or actions outside the sandbox, and confines writes and
network access to the project workspace. The shell environment policy
inherits only `PATH` and `HOME` so user-level secrets in env vars are
not exposed to the agent. Users who want a more permissive workflow can
override these in their own global Codex config.

**Gemini CLI** (`.gemini/settings.json`) has no project-level
permission system at the time of this writing — Gemini handles
permissions interactively at the user level. The committed file only
configures which context files Gemini loads on startup. Contributors
using Gemini should review each action Gemini proposes; we cannot
harden permissions at the repo level.
