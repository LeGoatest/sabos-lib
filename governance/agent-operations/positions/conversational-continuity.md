# Practitioner Position: Conversational Continuity

> **Status:** Adopted practitioner position  
> **Scope:** Multi-phase interaction between a user and repository agent

## Stance

When a user has already established findings, constraints, or approved scope, concise continuation commands should advance that existing work rather than forcing the user to restate it.

## Rationale

Repository-agent work commonly spans multiple phases: investigation, findings, approval, implementation, validation, and documentation. Treating each short user response as an isolated prompt discards useful state and creates repeated analysis, repeated approvals, and scope drift.

The framework therefore adopts explicit semantics for continuation and approval while keeping repository evidence as the durable project record.

## Boundaries

Continuity does not mean blind persistence.

An agent must still:

- re-check repository state when safe execution requires it;
- revise conclusions contradicted by new evidence;
- preserve mutation gates;
- avoid treating approval as permission for unrelated work;
- distinguish current task state from durable project authority.

## Convention status

The exact meanings assigned to shorthand commands such as `proceed` and `continue` are deliberate SABOS Lib conventions. External research supports state preservation, planning, context management, small changes, and validation, but does not establish these exact words as industry standards.
