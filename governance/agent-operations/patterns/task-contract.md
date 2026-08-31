# Pattern: Material Task Contract

> **Status:** Informative reusable pattern  
> **Purpose:** Give material agent work an explicit, testable execution boundary without requiring heavyweight planning for small changes.

Use this pattern when the requested work is multi-file, architecture-sensitive, high-risk, likely to span multiple phases, or ambiguous enough that scope/acceptance criteria should survive beyond one response.

A repository MAY use an issue, PR body, execution plan, ticket, or equivalent artifact instead.

## Suggested shape

```markdown
# Task — <short task name>

Status: Proposed | Approved | In progress | Blocked | Validated | Completed | Superseded
Last updated: YYYY-MM-DD
Scope: <repository / subsystem / branch / affected area>

## Outcome

<Observable result requested by the user/project.>

## Controlling context

- <governance / specification / decision / architecture rule>
- <important implementation constraint>

## Impact surface

Primary:
- <files/components/routes/packages>

Direct dependencies / consumers:
- <only the material boundaries that must remain compatible>

## Approved scope

- ...

## Protected non-goals

- ...

## Acceptance criteria

- [ ] <observable behavior or artifact>
- [ ] <required compatibility/invariant>
- [ ] <required generated/integration result when applicable>

## Authoritative commands

Prerequisite / build:
- `<exact command>` — source: <manifest/workflow/docs>

Validation:
- `<exact command>` — source: <manifest/workflow/docs>

## Execution order

1. <prerequisite>
2. <implementation>
3. <generated/integration step>
4. <independent validation>

Blocking rule:
- <what failure blocks dependent checks>

## Validation evidence

Passed:
- ...

Failed:
- ...

Not run / blocked:
- ...

## Deviations / discoveries

- <new evidence that changed only the affected part of the plan>

## Completion reconciliation

- requested outcome matched: yes/no
- protected non-goals preserved: yes/no
- unrelated drift checked: yes/no
- durable docs/decisions requiring update: ...
```

## Rules of use

- Keep the contract proportional to risk and ambiguity.
- Do not create one for trivial single-surface edits unless it resolves a real coordination problem.
- Acceptance criteria describe observable outcomes, not implementation preference.
- Discover commands from authoritative repository sources; do not guess them.
- Record prerequisite ordering when downstream checks depend on successful build/generation/setup.
- Update scope only when the user or new repository evidence materially changes it.
- A concise approval may activate an already-defined task scope according to [`../contracts/approval-semantics.md`](../contracts/approval-semantics.md); the contract must not manufacture additional approval gates.

## Related contracts

- [`../contracts/execution-verification.md`](../contracts/execution-verification.md)
- [`../contracts/task-continuity.md`](../contracts/task-continuity.md)
- [`../contracts/task-checkpointing.md`](../contracts/task-checkpointing.md)
