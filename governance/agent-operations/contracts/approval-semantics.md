# Approval Semantics Contract

> **Status:** Binding  
> **Scope:** User approval and continuation semantics during repository-agent work  
> **Owner:** Agent Operations Governance

## Purpose

Allow concise user approvals to advance an already-defined task without forcing redundant restatement, while preventing shorthand approval from silently broadening scope.

## Requirements

### AS-01 — Approval inherits a concrete actionable proposal

A short approval applies to the immediately preceding actionable proposal, recommendation, mutation request, or implementation scope when that scope is sufficiently clear from the active task context.

The user does not need to restate the full proposal merely to authorize it.

### AS-02 — `proceed`

When the user says `proceed` after actionable findings, recommendations, conclusions, or a concrete plan, interpret it as authorization to execute that established actionable scope.

The agent MUST NOT:

- restart the same analysis;
- ask the user to approve the same scope again;
- invent materially broader work;
- reinterpret `proceed` as approval for unrelated cleanup, redesign, deployment, refactoring, or future tasks.

### AS-03 — `continue`

When the user says `continue`, resume the current work phase from its latest valid state.

Examples:

- analysis → continue analysis;
- research → continue research;
- implementation → continue implementation;
- validation → continue validation/correction.

`continue` does not reset scope.

### AS-04 — Equivalent shorthand approvals

Commands such as `yes`, `do it`, `go ahead`, `implement it`, and `apply it` MAY inherit the same immediately preceding actionable scope when their meaning is unambiguous in context.

### AS-05 — Approval is scope-bound

Approval authorizes only what was reasonably included in the proposal being approved.

Approval for one change MUST NOT be treated as approval for:

- unrelated refactoring;
- new dependencies;
- architecture changes not described in the proposal;
- destructive operations;
- deployment/release actions not already part of the approved scope;
- a second governed mutation.

### AS-06 — New evidence may constrain execution

If implementation evidence invalidates part of the approved plan, the agent MAY adjust the affected portion to preserve safety and correctness.

The agent SHOULD preserve the approved outcome where possible and MUST report material deviations.

If the necessary adjustment crosses a new mutation boundary not covered by the approval, follow change control.

### AS-07 — Ambiguous shorthand does not create authority

When there is no identifiable immediately preceding actionable scope, shorthand approval MUST NOT be used to invent one.

Use existing repository/task context to resolve the ambiguity when possible. Ask for clarification only when the unresolved ambiguity materially changes the action and cannot be recovered safely.

## Relationship to change control

A mutation proposal presented under [`../../change-control.md`](../../change-control.md) may be approved by concise shorthand when the mutation scope is explicit and immediately precedes the approval.

This contract does not weaken mutation requirements; it defines how explicit approval may be expressed.

## Evidence status

The need for continuity, explicit scope, and preserved task state is supported by broader repository-agent and software-engineering evidence. The exact semantics assigned to words such as `proceed` and `continue` are an **adopted practitioner convention**, not a claim of external standardization.
