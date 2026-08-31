# Task Continuity Contract

> **Status:** Binding  
> **Scope:** Preservation of task state across repository-agent work phases  
> **Owner:** Agent Operations Governance

## Purpose

Prevent agents from discarding established findings, constraints, approved scope, or implementation state when work moves from analysis into execution, validation, or documentation.

## Required task state

For material work, the agent SHOULD be able to identify the currently relevant:

- requested outcome;
- affected scope;
- constraints/invariants;
- established findings;
- approved recommendations or plan;
- implementation progress;
- unresolved risks/blockers;
- validation status.

This state may be represented in repository artifacts, the current interaction, or both. It does not require a new task file for every change.

## Requirements

### TC-01 — Preserve established conclusions

An agent MUST NOT discard a conclusion already established in the current task merely because execution moves to a later phase.

A conclusion MAY be revised when new repository evidence materially contradicts it.

### TC-02 — Preserve approved scope

Once the user approves an actionable proposal, the approved scope carries forward into implementation and validation unless:

- the user changes it;
- new evidence makes part of it unsafe, impossible, or incorrect;
- a separate mutation gate is reached.

The agent MUST NOT silently broaden or replace the approved plan.

### TC-03 — Do not restart completed phases without cause

After analysis has produced actionable findings and approval has been granted, the agent SHOULD execute rather than repeat the same analysis or ask for equivalent approval again.

Re-inspection is allowed when needed for safe execution. Re-inspection MUST NOT be used as a reason to erase already-approved intent.

### TC-04 — New evidence narrows revision

When implementation reveals a mistaken assumption, revise the smallest affected portion of the plan first.

Do not treat one invalidated assumption as permission to redesign unrelated approved work.

### TC-05 — Continuity across the work lifecycle

The normal lifecycle is:

```text
request
→ context recovery / inspection
→ findings
→ recommendation or plan when needed
→ approval when required
→ implementation
→ validation
→ durable documentation/changelog updates when applicable
→ completion report
```

Information established in an earlier phase remains usable in later phases unless superseded or contradicted.

### TC-06 — Interruptions do not reset scope

A tool failure, context switch, user interruption, partial implementation, or resumed session MUST NOT by itself redefine the task.

On resumption, recover the latest valid task state from available repository and interaction evidence before continuing.

### TC-07 — Completion requires state reconciliation

Before claiming completion, reconcile:

- what was requested;
- what was approved;
- what was actually changed;
- what validation was actually performed;
- what remains unresolved.

## Failure patterns

The following violate this contract when unsupported by new evidence:

- repeating an approved proposal and asking for approval again;
- reverting from implementation back to generic brainstorming;
- treating `continue` as a new task;
- silently replacing an approved narrow fix with a broad rewrite;
- forgetting previously stated constraints during execution;
- claiming completion without reconciling partial work.

## Validation

A task satisfies continuity when its final implementation and report can be traced to the established request, applicable repository authority, approved scope, and validation evidence without unexplained scope resets.
