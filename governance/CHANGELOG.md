# Changelog

All notable changes to repository governance will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/).

## [Unreleased]

### Added

- `README.md` defining the layered governance model and five governance primitives: Authority, Invariant, Scope, Mutation, and Evidence.
- `AGENTS.md` defining rules for automated edits to repository governance itself.
- `authority.md` defining repository and subsystem authority boundaries.
- `invariants.md` defining anti-regression and anti-drift rules.
- `knowledge-system-model.md` defining the repository-wide model for practitioner experience, explicit positions/bias, contracts, standards, platform guidance, research, references, examples, profiles/patterns, glossaries, subject artifacts, local `AGENTS.md`, and changelog ownership across `*basic` systems.
- Shared `*basic` root convention separating concise root entrypoints/history from long-form `docs/` knowledge and genuine subject artifacts.
- Subject-artifact rules defining examples such as canonical reference source, templates, and future playbooks while prohibiting empty symmetry.
- Explicit rule reserving `dist/` for actual generated/distribution output rather than canonical reference source.
- Canonical-path migration rules requiring structural moves to preserve substantive authority, provenance, local agent routing, and changelog traceability.
- `change-control.md` defining governed mutations and the explicit approval gate.
- `validation.md` defining evidence expectations and progressive validation principles.
- `research-basis.md` documenting vendor guidance, empirical research, Google engineering/SRE practices, and SAGE patterns used to justify the model.
- Changelog traceability invariant requiring notable subsystem changes to update the nearest changelog and cross-subsystem changes to update the root changelog.
- `agent-operations/` structured governance domain for repository-agent context engineering, repository-first state recovery, task continuity, approval semantics, evidence synthesis, practitioner positions, reusable operational patterns, and source provenance.
- Binding agent-operation contracts for selective context retrieval, repository recovery, context freshness/supersession, task-state preservation, proportional durable task checkpointing, and scope-bound shorthand approval.
- Optional decision-record and task-checkpoint patterns for consequential decisions and materially resumable work without imposing a single repository artifact format.
- Agent-operation evidence review incorporating DORA AI/software-delivery research, OpenAI/Codex, GitHub Copilot, Google/Gemini, Anthropic, repository-agent academic research, established Google engineering practice, ADR/decision-record practice, and Thoughtworks/Martin Fowler practitioner synthesis.
- Agent-operation source registry that prefers primary papers/publisher/vendor records while treating Google Scholar and similar academic indexes as discovery/cross-check tools rather than substantive authority.
- Repository invariants for repository-first durable context recovery, task/approval continuity, context relevance over context volume, and current-vs-historical/superseded context distinction.
- This governance changelog.

### Changed

- Reduced the root `AGENTS.md` from a full governance manual to a compact operational entrypoint and router.
- Moved detailed governance rationale and rules into scoped canonical files so persistent agent context remains focused.
- Expanded subsystem authority to recognize deep `*basic` knowledge systems, nested `docs/` trees, local `AGENTS.md` files, contracts, glossaries, research/standards/references, profiles/examples, subject artifacts, and domain-owned measurement semantics.
- Reframed TCBasic governance from npm package/build/test authority to Tailwind semantic-architecture knowledge plus canonical reference CSS under `TCbasic/src/`.
- Updated WDBASIC, SEObasic, and READMEbasic authority descriptions to reflect their canonical `docs/` knowledge roots and artifact boundaries.
- Clarified that evidence, research, platform guidance, measurements, examples, artifacts, and industry practice have interpretive weight but do not become binding contracts automatically.
- Clarified that local `AGENTS.md` files should correspond to real authority, terminology, evidence, validation, source-of-truth, artifact, or contract boundaries rather than being duplicated mechanically into every leaf directory.
- Clarified that executable checks belong to the adopting implementation/project that actually owns executable behavior; SABOS Lib does not need build tooling merely because an adopter can mechanically validate a contract.
- Distinguished context-recovery order from authority order so implementation/history can be inspected early without silently outranking current binding governance.
- Extended change control so concise approvals can authorize an immediately preceding explicit mutation proposal without requiring redundant restatement, while remaining strictly scope-bound.
- Extended validation to preserve/reconcile task state and approved scope across analysis, implementation, validation, resumption, and completion reporting; corrected the canonical WDBASIC engineering-validation link.
- Extended root agent routing to recover durable project state from repository evidence before relying on incomplete conversational recollection, reconcile context freshness/supersession, checkpoint only when complexity/resumability warrants it, and avoid indiscriminate context loading.
- Re-audited agent-operation research for source accuracy and counterevidence, correcting Anthropic loading semantics, adding OpenAI durable execution-plan practice and Khatri's context-file ablation study, and tightening claims around planning/checkpoint evidence.
- Expanded repository governance to require direct dependent durable context to be updated or explicitly superseded when an approved change makes it stale.
