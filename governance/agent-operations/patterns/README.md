# Agent Operations Patterns

> **Status:** Informative reusable patterns  
> **Scope:** Optional repository artifacts that operationalize Agent Operations contracts

Patterns illustrate practical ways to satisfy governance. They are not mandatory merely because they exist.

Use a pattern only when the repository has a real need for the artifact.

## Patterns

- [`decision-record.md`](decision-record.md) — lightweight durable record for a consequential decision whose rationale should survive beyond the current conversation.
- [`task-checkpoint.md`](task-checkpoint.md) — minimal resumable state for long-running, paused, or handed-off work.

## Relationship to contracts

- Durable decisions support [`../contracts/context-engineering.md`](../contracts/context-engineering.md), [`../contracts/repository-recovery.md`](../contracts/repository-recovery.md), and [`../contracts/context-freshness.md`](../contracts/context-freshness.md).
- Task checkpoints support [`../contracts/task-continuity.md`](../contracts/task-continuity.md) and [`../contracts/task-checkpointing.md`](../contracts/task-checkpointing.md).

A repository MAY use ADRs, RFCs, issue templates, implementation plans, task files, or another equivalent structure instead. The contract is the behavior and recoverability, not the filename.
