# Agent Operations Patterns

> **Status:** Informative reusable patterns  
> **Scope:** Optional repository artifacts that operationalize Agent Operations contracts

Patterns illustrate practical ways to satisfy governance. They are not mandatory merely because they exist.

Use a pattern only when the repository has a real need for the artifact.

## Practical priority order

When adopting Agent Operations incrementally, prefer the controls with the highest correctness value and lowest ceremony first:

1. **Scoped agent entrypoint** — keep persistent instructions concise, operationally specific, and routed to deeper authority.
2. **Material task contract** — make outcome, scope, acceptance criteria, dependency surface, and authoritative commands explicit for material work.
3. **Verification matrix** — identify which important rules are mechanically enforced, independently observable, manually reviewed, or guidance-only.
4. **Fresh-context review** — independently review substantial/high-risk agent-authored changes against the task and repository contracts.
5. **Task checkpoint** — persist resumable state only when interruption/handoff would otherwise cause material rediscovery or ambiguity.
6. **Decision record** — preserve consequential decisions when future work depends on their rationale or supersession history.

This order reflects the evidence review's main practical conclusion: prefer **clear scope + authoritative commands + executable/independent evidence** over simply adding more instruction text.

## Patterns

- [`scoped-agent-entrypoint.md`](scoped-agent-entrypoint.md) — concise repository/subtree agent instructions with architecture, exact command sources, high-risk constraints, routing, and workflow boundaries.
- [`task-contract.md`](task-contract.md) — observable outcome, approved scope, non-goals, acceptance criteria, dependency surface, authoritative commands, prerequisite ordering, and completion reconciliation for material work.
- [`verification-matrix.md`](verification-matrix.md) — requirement-to-enforcement mapping that makes prose-only guidance, mechanical checks, independent evidence, and prerequisite gates explicit.
- [`fresh-context-review.md`](fresh-context-review.md) — substantial-change review that inspects the task, contracts, diff, and evidence without depending on the implementer's summary as the primary source of truth.
- [`task-checkpoint.md`](task-checkpoint.md) — minimal resumable state for long-running, paused, or handed-off work.
- [`decision-record.md`](decision-record.md) — lightweight durable record for a consequential decision whose rationale should survive beyond the current conversation.

## Relationship to contracts

- Scoped agent entrypoints support [`../contracts/context-engineering.md`](../contracts/context-engineering.md), [`../contracts/context-freshness.md`](../contracts/context-freshness.md), and [`../contracts/execution-verification.md`](../contracts/execution-verification.md).
- Task contracts support [`../contracts/execution-verification.md`](../contracts/execution-verification.md) and [`../contracts/task-continuity.md`](../contracts/task-continuity.md).
- Verification matrices support [`../contracts/execution-verification.md`](../contracts/execution-verification.md) and repository [`../../validation.md`](../../validation.md).
- Fresh-context review supports independent validation under [`../contracts/execution-verification.md`](../contracts/execution-verification.md) and [`../../validation.md`](../../validation.md).
- Durable decisions support [`../contracts/context-engineering.md`](../contracts/context-engineering.md), [`../contracts/repository-recovery.md`](../contracts/repository-recovery.md), and [`../contracts/context-freshness.md`](../contracts/context-freshness.md).
- Task checkpoints support [`../contracts/task-continuity.md`](../contracts/task-continuity.md) and [`../contracts/task-checkpointing.md`](../contracts/task-checkpointing.md).

A repository MAY use ADRs, RFCs, issue templates, PR templates, implementation plans, task files, CI definitions, or another equivalent structure instead. The contract is the behavior and recoverability, not the filename.
