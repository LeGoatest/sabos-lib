# Agent Operations Governance

> **Status:** Binding domain router  
> **Scope:** Repository-agent context acquisition, task continuity, approval interpretation, execution-state preservation, and related evidence  
> **Parent authority:** [`../README.md`](../README.md), [`../authority.md`](../authority.md), [`../invariants.md`](../invariants.md)

## Purpose

This domain governs **how an agent maintains enough correct context to execute repository work without silently resetting scope, inventing history, or treating conversational memory as the project system of record**.

It does not replace repository authority, subsystem contracts, tests, source code, or human approval. It defines the operational bridge between those sources and an agent's active task.

## Core doctrine

> **Retrieve selectively. Preserve established task state. Distinguish authority from evidence. Validate before claiming completion.**

Repository context is an engineered system rather than a single instruction file.

The preferred operating model is:

```text
small persistent instructions
        ↓
selective repository-context recovery
        ↓
applicable contracts / decisions / implementation evidence
        ↓
current task state and approved scope
        ↓
small coherent execution
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
- [`task-continuity.md`](contracts/task-continuity.md) — preservation of findings, constraints, decisions, and approved scope across analysis, implementation, validation, and documentation phases.
- [`approval-semantics.md`](contracts/approval-semantics.md) — interpretation of explicit and shorthand approvals without broadening their scope.

### [`positions/`](positions/)
Explicit practitioner positions that guide implementation but are not mislabeled as universal external standards.

- [`progressive-disclosure.md`](positions/progressive-disclosure.md)
- [`conversational-continuity.md`](positions/conversational-continuity.md)

### [`research/`](research/)
Informative evidence supporting this domain.

- [`evidence-review.md`](research/evidence-review.md) — synthesis and governance implications.
- [`vendor-guidance.md`](research/vendor-guidance.md) — OpenAI, GitHub, Google/Gemini, DORA, and related primary guidance.
- [`academic-research.md`](research/academic-research.md) — empirical and scholarly repository-agent research.

### [`references/`](references/)
Source registry and provenance records.

- [`source-registry.md`](references/source-registry.md)

## Authority vs context recovery

These are different questions:

- **Authority:** What controls when sources conflict?
- **Context recovery:** Where should the agent look to reconstruct relevant project state?

Historical records, source code, tests, prior plans, and changelogs may be essential for context recovery without outranking a current binding contract or explicit user instruction.

Authority remains governed by [`../authority.md`](../authority.md).

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

Vendor-specific instruction files, skills, memories, prompt files, or context mechanisms may act as adapters to this governance. They must not become competing sources of project truth.

## Scope discipline

This domain does **not** require every repository to create large context trees, machine-readable mirrors, decision logs, or additional process artifacts.

Use structure only where it reduces ambiguity, preserves important state, enables retrieval, or supports validation. Persistent context should remain concise; detailed material should be retrieved when relevant.
