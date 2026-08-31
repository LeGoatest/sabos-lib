# Changelog

All notable changes to the agent-operations governance domain will be documented here.

## [Unreleased]

### Added

- Agent-operations governance domain for context engineering, repository recovery, task continuity, and approval semantics.
- Binding contracts separating context retrieval from authority and preserving approved task state across execution phases.
- `context-freshness.md` contract governing current-vs-historical context, supersession, contradiction reconciliation, documentation gardening, and mechanical freshness checks where practical.
- `task-checkpointing.md` contract for proportional durable state on multi-session, handed-off, paused, staged, or otherwise materially resumable work.
- Binding `execution-verification.md` contract translating the research findings into practical execution controls: observable outcomes/acceptance criteria, dependency-aware impact inspection, authoritative commands, prerequisite-gated checks, mechanical enforcement, independent validation, and completion reconciliation.
- Optional `patterns/` layer with lightweight durable decision-record and resumable task-checkpoint patterns; patterns remain non-mandatory and may be replaced by ADRs, RFCs, issues, plans, or equivalent repository artifacts.
- `scoped-agent-entrypoint.md` pattern for concise, operationally specific persistent instructions containing architecture/ownership, exact command sources, high-risk constraints, workflow routing, and escalation boundaries without duplicating deep documentation.
- `task-contract.md` pattern for material work covering requested outcome, impact surface, approved scope/non-goals, acceptance criteria, authoritative commands, prerequisite ordering, validation evidence, and completion reconciliation.
- `verification-matrix.md` pattern mapping governed requirements to mechanical enforcement, independent observation, manual review, or guidance-only status, including prerequisite/failure behavior.
- `fresh-context-review.md` pattern for independently reviewing substantial or high-risk agent-authored changes against the task, governing contracts, diff, and validation evidence rather than relying on the implementer's summary.
- Practitioner positions for progressive disclosure and conversational continuity.
- Evidence synthesis covering DORA, OpenAI, GitHub, Google/Gemini, Anthropic, empirical coding-agent research, repository retrieval/planning research, executable guardrail research, and established decision-record practice.
- Source registry preserving provenance, source class, governance relevance, academic discovery-index roles, source freshness, and supersession/publication checks.

### Changed

- Re-audited the domain for internal coherence and expanded its operating model from retrieval/continuity alone to include context freshness, resumable task state, consequential decision recovery, and concrete execution/verification controls.
- Added a practical priority adoption order that favors scoped instructions, authoritative commands, observable acceptance criteria, prerequisite gates, mechanical checks, and independent review before adding more persistent prose or process ceremony.
- Expanded the agent-operations router and local agent instructions so execution/validation work routes through the new binding execution-verification contract and practical patterns.
- Corrected Anthropic evidence notes to distinguish startup project/auto-memory context from scoped rules and skills that may load when their scope/task is triggered; added context-compaction and configuration-inspection evidence.
- Added OpenAI execution-plan evidence for self-contained multi-hour work, progress/decision logs, and proportional use of durable plans.
- Added Khatri's 2026 two-agent ablation study as counterevidence against treating repository context files as an independent correctness mechanism.
- Tightened CodePlan evidence to the reported FSE evaluation and explicitly preserved the limits of planning/checkpoint evidence for small tasks.
- Extended context engineering and task continuity contracts to treat summarization/compaction as potentially lossy boundaries and to reconcile resumed work against current repository state.
- Kept exact `proceed`/`continue` semantics classified as an adopted practitioner convention rather than external standardization.
