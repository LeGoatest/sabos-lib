# Changelog

All notable changes to the agent-operations governance domain will be documented here.

## [Unreleased]

### Added

- Agent-operations governance domain for context engineering, repository recovery, task continuity, and approval semantics.
- Binding contracts separating context retrieval from authority and preserving approved task state across execution phases.
- `context-freshness.md` contract governing current-vs-historical context, supersession, contradiction reconciliation, documentation gardening, and mechanical freshness checks where practical.
- `task-checkpointing.md` contract for proportional durable state on multi-session, handed-off, paused, staged, or otherwise materially resumable work.
- Optional `patterns/` layer with lightweight durable decision-record and resumable task-checkpoint patterns; patterns remain non-mandatory and may be replaced by ADRs, RFCs, issues, plans, or equivalent repository artifacts.
- Practitioner positions for progressive disclosure and conversational continuity.
- Evidence synthesis covering DORA, OpenAI, GitHub, Google/Gemini, Anthropic, empirical coding-agent research, repository retrieval/planning research, executable guardrail research, and established decision-record practice.
- Source registry preserving provenance, source class, governance relevance, academic discovery-index roles, source freshness, and supersession/publication checks.

### Changed

- Re-audited the domain for internal coherence and expanded its operating model from retrieval/continuity alone to include context freshness, resumable task state, and consequential decision recovery.
- Corrected Anthropic evidence notes to distinguish startup project/auto-memory context from scoped rules and skills that may load when their scope/task is triggered; added context-compaction and configuration-inspection evidence.
- Added OpenAI execution-plan evidence for self-contained multi-hour work, progress/decision logs, and proportional use of durable plans.
- Added Khatri's 2026 two-agent ablation study as counterevidence against treating repository context files as an independent correctness mechanism.
- Tightened CodePlan evidence to the reported FSE evaluation and explicitly preserved the limits of planning/checkpoint evidence for small tasks.
- Extended context engineering and task continuity contracts to treat summarization/compaction as potentially lossy boundaries and to reconcile resumed work against current repository state.
- Kept exact `proceed`/`continue` semantics classified as an adopted practitioner convention rather than external standardization.
