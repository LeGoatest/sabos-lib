# Agent Operations Governance

> **Status:** Binding domain router  
> **Scope:** Repository-agent context acquisition, task continuity, approval interpretation, execution-state preservation, context freshness, and related evidence  
> **Parent authority:** [`../README.md`](../README.md), [`../authority.md`](../authority.md), [`../invariants.md`](../invariants.md)

## Purpose

This domain governs **how an agent maintains enough correct context to execute repository work without silently resetting scope, inventing history, depending on stale context, or treating conversational memory as the project system of record**.

It does not replace repository authority, subsystem contracts, tests, source code, or human approval. It defines the operational bridge between those sources and an agent's active task.

## Core doctrine

> **Retrieve selectively. Preserve established task state. Keep durable context current. Distinguish authority from evidence. Validate before claiming completion.**

Repository context is an engineered system rather than a single instruction file.

The preferred operating model is:

```text
small persistent instructions
        ↓
selective repository-context recovery
        ↓
applicable contracts / decisions / implementation evidence
        ↓
freshness + authority reconciliation
        ↓
current task state and approved scope
        ↓
small coherent execution
        ↓
durable checkpoint when complexity/resumption requires it
        ↓
independent validation
        ↓
durable repository updates when warranted
```

## Domain map

### [`contracts/`](contracts/)
Binding operational requirements.

- [`context-engineering.md`](contracts/context-engineering.md) — relevant-context selection, progressive disclosure, provenance, and context-budget discipline.
- [`repository-recovery.md`](contracts/repository-recovery.md) — repository-first recovery of project state before relying on conversational recollection or asking the user to repeat known information.
- [`context-freshness.md`](contracts/context-freshness.md) — freshness, supersession, contradiction handling, and maintenance of retrieved/durable context.
- [`task-continuity.md`](contracts/task-continuity.md) — preservation of findings, constraints, decisions, and approved scope across analysis, implementation, validation, and documentation phases.
- [`task-checkpointing.md`](contracts/task-checkpointing.md) — durable state for long-running, paused, handed-off, or otherwise resumable work when conversation state alone is insufficient.
- [`approval-semantics.md`](contracts/approval-semantics.md) — interpretation of explicit and shorthand approvals without broadening their scope.

### [`positions/`](positions/)
Explicit practitioner positions that guide implementation but are not mislabeled as universal external standards.

- [`progressive-disclosure.md`](positions/progressive-disclosure.md)
- [`conversational-continuity.md`](positions/conversational-continuity.md)

### [`patterns/`](patterns/)
Optional reusable artifacts that operationalize the contracts without imposing one repository structure.

- [`decision-record.md`](patterns/decision-record.md) — lightweight durable record for consequential project decisions.
- [`task-checkpoint.md`](patterns/task-checkpoint.md) — minimal resumable state for long-running or handed-off work.

### [`research/`](research/)
Informative evidence supporting this domain.

- [`evidence-review.md`](research/evidence-review.md) — synthesis and governance implications.
- [`vendor-guidance.md`](research/vendor-guidance.md) — OpenAI, GitHub, Google/Gemini, Anthropic, DORA, and related primary guidance.
- [`academic-research.md`](research/academic-research.md) — empirical and scholarly repository-agent research.
- [`practitioner-consensus.md`](research/practitioner-consensus.md) — established engineering practice and practitioner convergence.

### [`references/`](references/)
Source registry and provenance records.

- [`source-registry.md`](references/source-registry.md)

## Authority vs context recovery

These are different questions:

- **Authority:** What controls when sources conflict?
- **Context recovery:** Where should the agent look to reconstruct relevant project state?

Historical records, source code, tests, prior plans, and changelogs may be essential for context recovery without outranking a current binding contract or explicit user instruction.

Authority remains governed by [`../authority.md`](../authority.md).

## Current vs historical context

Repository-local does not automatically mean current.

Agents must distinguish:

```text
current controlling guidance
current implementation evidence
active task state
historical/superseded records
uncertain or stale material
```

Freshness and supersession behavior is governed by [`contracts/context-freshness.md`](contracts/context-freshness.md).

## Durable decisions and resumable work

Not every decision or task needs another file.

Use durable records when the cost of forgetting becomes material:

- consequential decisions should be recoverable with their context and consequences;
- long-running or handed-off work should preserve enough state to resume without reconstructing the original conversation;
- trivial/local work should remain lightweight.

The optional [`patterns/`](patterns/) show one way to operationalize these requirements. Adopting repositories may use ADRs, RFCs, issues, plans, task files, or equivalent structures instead.

## Evidence-adoption rule

No vendor recommendation, academic paper, benchmark, practitioner article, internal observation, or common practice becomes binding merely by being cited.

A rule becomes binding only through explicit adoption in governance or a controlling subsystem contract.

Evidence should be weighed by:

1. source authority within its actual scope;
2. directness to the repository-agent problem;
3. empirical quality and limitations;
4. independence from other evidence;
5. consistency across evidence classes;
6. observed fit with repository needs;
7. known counterevidence and tradeoffs.

Cross-source convergence is stronger than repeated claims copied from the same origin.

## Vendor neutrality

This domain describes repository behavior rather than depending on one vendor's undocumented implementation details.

Vendor-specific instruction files, skills, memories, prompt files, context mechanisms, resumable sessions, or hooks may act as adapters to this governance. They must not become competing sources of project truth.

## Scope discipline

This domain does **not** require every repository to create large context trees, machine-readable mirrors, decision logs, task checkpoints, or additional process artifacts.

Use structure only where it reduces ambiguity, preserves important state, enables retrieval, or supports validation. Persistent context should remain concise; detailed material should be retrieved when relevant.
