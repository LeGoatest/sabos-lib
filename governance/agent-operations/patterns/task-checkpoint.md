# Pattern: Resumable Task Checkpoint

> **Status:** Informative reusable pattern  
> **Purpose:** Preserve the minimum state needed to resume material repository work accurately after interruption or handoff.

Use this pattern only when the trigger in [`../contracts/task-checkpointing.md`](../contracts/task-checkpointing.md) is met.

## Suggested shape

```markdown
# Task checkpoint — <short task name>

Status: Active | Blocked | Completed | Superseded
Last updated: YYYY-MM-DD
Scope: <repository/subsystem/branch or affected area>

## Outcome requested

<What the work is intended to accomplish.>

## Controlling context

- <contract/specification/decision>
- <important constraint>

## Established findings

- <finding that still matters>

## Approved scope

- <what is authorized>
- <what is explicitly out of scope, when useful>

## Progress

Completed:
- ...

In progress:
- ...

Next:
- ...

## Blockers / risks

- ...

## Validation

Performed:
- ...

Still required:
- ...

## Durable references

- branch / commit / PR / issue / files / related decision records
```

## Rules of use

- Keep the checkpoint compact; link to authority instead of duplicating whole documents.
- Update only at meaningful state transitions.
- Reconcile it against current repository state before resuming.
- Mark completed/superseded records clearly.
- Never store credentials, tokens, or unnecessary sensitive data.
- Do not turn a checkpoint into a replacement changelog, design specification, or raw conversation transcript.
