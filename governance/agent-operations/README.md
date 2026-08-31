# Agent Operations Governance

> **Status:** Binding domain router  
> **Scope:** Repository-agent context acquisition, task continuity, approval interpretation, execution-state preservation, context freshness, execution/verification discipline, and related evidence  
> **Parent authority:** [`../README.md`](../README.md), [`../authority.md`](../authority.md), [`../invariants.md`](../invariants.md)

## Purpose

This domain governs **how an agent maintains enough correct context to execute repository work without silently resetting scope, inventing history, depending on stale context, guessing commands, bypassing prerequisite failures, or treating conversational memory as the project system of record**.

It does not replace repository authority, subsystem contracts, tests, source code, or human approval. It defines the operational bridge between those sources and an agent's active task.

## Core doctrine

> **Retrieve selectively. Preserve established task state. Keep durable context current. Execute from explicit scope. Validate before claiming completion. Distinguish authority from evidence.**

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
current task state + observable acceptance criteria
        ↓
authoritative commands + prerequisite ordering
        ↓
small coherent execution
        ↓
durable checkpoint when complexity/resumption requires it
        ↓
mechanical + independent validation
        ↓
scope/completion reconciliation
        ↓
durable repository updates when warranted
```

## Practical priority order

For repositories adopting this domain incrementally, prioritize:

1. concise/scoped persistent agent instructions with operationally specific routing;
2. authoritative build/test/validation commands rather than guessed commands;
3. explicit outcome, scope, non-goals, and acceptance criteria for material work;
4. prerequisite-gated execution so downstream checks do not run on invalid foundations;
5. mechanical enforcement of stable hard constraints where practical;
6. independent/fresh-context review for substantial or high-risk changes;
7. durable checkpoints and decision records only when interruption or future reconstruction cost justifies them.

The reusable forms for these controls live under [`patterns/`](patterns/).

## Domain map

### [`contracts/`](contracts/)
Binding operational requirements.

- [`context-engineering.md`](contracts/context-engineering.md) — relevant-context selection, progressive disclosure, provenance, and context-budget discipline.
- [`repository-recovery.md`](contracts/repository-recovery.md) — repository-first recovery of project state before relying on conversational recollection or asking the user to repeat known information.
- [`context-freshness.md`](contracts/context-freshness.md) — freshness, supersession, contradiction handling, and maintenance of retrieved/durable context.
- [`task-continuity.md`](contracts/task-continuity.md) — preservation of findings, constraints, decisions, and approved scope across analysis, implementation, validation, and documentation phases.
- [`task-checkpointing.md`](contracts/task-checkpointing.md) — durable state for long-running, paused, handed-off, or otherwise resumable work when conversation state alone is insufficient.
- [`approval-semantics.md`](contracts/approval-semantics.md) — interpretation of explicit and shorthand approvals without broadening their scope.
- [`execution-verification.md`](contracts/execution-verification.md) — explicit outcomes, dependency-aware execution, authoritative commands, prerequisite gates, mechanical enforcement, independent validation, and completion reconciliation.

### [`positions/`](positions/)
Explicit practitioner positions that guide implementation but are not mislabeled as universal external standards.

- [`progressive-disclosure.md`](positions/progressive-disclosure.md)
- [`conversational-continuity.md`](positions/conversational-continuity.md)

### [`patterns/`](patterns/)
Optional reusable artifacts that operationalize the contracts without imposing one repository structure.

- [`scoped-agent-entrypoint.md`](patterns/scoped-agent-entrypoint.md) — concise operational agent instructions and routing.
- [`task-contract.md`](patterns/task-contract.md) — material-task outcome, scope, acceptance, command, dependency, and validation boundary.
- [`verification-matrix.md`](patterns/verification-matrix.md) — requirement-to-enforcement/evidence mapping.
- [`fresh-context-review.md`](patterns/fresh-context-review.md) — independent substantial-change review.
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

## Execution and validation discipline

Persistent guidance is not deterministic proof of compliance.

For material work:

- define observable acceptance criteria;
- discover exact commands and required versions from the owning source;
- preserve dependency/prerequisite order;
- stop dependent checks when their prerequisite evidence is invalid;
- move stable hard rules into executable checks where practical;
- seek independent evidence outside the implementation path;
- reconcile requested scope against actual changes before claiming completion.

Detailed requirements are binding under [`contracts/execution-verification.md`](contracts/execution-verification.md).

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
