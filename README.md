# Kiliaan Vanvoorden

I build the verification layer for AI systems — the gates, tests and CI that decide
whether a system is actually right, and that fail loudly when it isn't.

**Open to AI engineering roles where the evaluation harness *is* the job.**
Based in Riemst, Belgium · open to remote roles · employment or contract.

📧 [bakerstreetbandit@zohomail.eu](mailto:bakerstreetbandit@zohomail.eu)

Every number below came out of a command you can run. The command sits next to the number.

## Currently building

- **elohim** — next measurement track (mutation survival, shard pinning), landing daily
- **harness** — v1.1.0 wheel and CI readiness floor; package release pending
- **terminal221b** — release tagging and install hardening

## Featured work

### [elohim](https://github.com/BoozeLee/elohim) — a gate for numerical claims · MIT

Six instruments measure hard mathematics, pin every result they claim, and refuse to pass
if anything moved — including the instrument itself. Break a file on purpose: the gate
names it.

```bash
python3 tests/test_all.py   # → ALL_SKILLS_PASS; verdict FAIL + PIN DRIFT on any tampered copy
```

**81 facts · 107 checksum-pinned values · 0 unclassified · 6/6 seeded tampering caught** ·
43 commits, 22,196 non-blank lines, measured at `a047ccd`

### [harness](https://github.com/BoozeLee/harness) — the AI engineering pipeline, measured against the agent it replaces · AGPL-3.0

`scan → task → verify → pr`. Protected-path writes and secret reads are blocked before an
agent's edit lands; a PR refuses to open unless the verdict is PASS — a skipped review
counts as not passed. The evaluation runs the same agent raw and harnessed against a
hidden acceptance suite: **11/13 graded PASS**, and the unflattering number is published
too (scope violations: raw 3, harnessed 4).

```bash
pip install git+https://github.com/BoozeLee/harness.git   # 1.1.0
pytest                                                     # → 88 passed
```

**88 tests · 11 subcommands · 48 commits** · `scan --fail-under 70` exits 1 below the
floor · wheel + sdist build via `uv build`

### [terminal221b](https://github.com/BoozeLee/terminal221b) — a coding CLI bounded to a workspace · AGPL-3.0

TypeScript CLI with a Rust `ratatui` TUI and an Expo client. Context is bounded by path,
not by a token budget; untrusted output is redacted before it reaches a stored
transcript; the test modules are the containment properties (`path-guard`,
`boundary-drift`, `scope`).

```bash
npm ci && npm test    # → 385 passed
cargo test            # → 60 passed
```

**445 tests total (385 TypeScript + 60 Rust) · 55 commits · 16,210 non-blank lines**

### [mcp-regression-lab](https://github.com/BoozeLee/mcp-regression-lab) — CI that catches silent agent breakage · ISC

A GitHub Action that diffs an MCP server's tool contract across releases, so a renamed or
narrowed tool fails CI instead of failing in production. Untrusted tool text is escaped
before it reaches a PR comment.

```bash
npm ci && npm test    # → 29 passed
```

**29 tests · 1,247 non-blank TypeScript lines**

**Also public:** [repotruth](https://github.com/Bakery-street-project/galacticfederation) —
CI that reads the repository, not just the diff: signed-webhook verification (replay →
idempotent 200, unsigned → 400 and nothing queued, tampered body rejected), one audit
core exposed as CLI, MCP server and fleet dashboard. 147 tests across 32 suites.

**Private, available to show on request:** capo (349 tests across five packages) ·
superbrain (298 passing tests) · beehive-studio (54,550 non-blank lines).

## How I work

Give an agent a task and it will report success whether or not it succeeded. The
interesting work is the part where you check. So I built the checks I wanted to exist:
instruments that re-derive their own numbers, gates tested by being broken on purpose, a
harness measured against the thing it replaces — including where the measurement is
unflattering. That is the work I want to be paid for.

## Honest scope

No degree or certifications, and no prior employment — this would be my first role.
`Bakery-street-project` is my personal project, not a company. Every public repo has
0 stars and no users; there is no adoption story. Docker, Kubernetes and Go appear
nowhere in my code. Everything above is verifiable by cloning the repository and running
the command shown.
