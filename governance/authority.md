# Governance Authority

> **Status:** Binding  
> **Purpose:** Define who may change what, how local instructions inherit authority, and where agent discretion ends.

## 1. Authority order

Apply authority in this order:

1. Platform, tool, security, and execution constraints that cannot be overridden by repository text.
2. The explicit user request for the current task.
3. Repository-wide invariants in [`invariants.md`](invariants.md).
4. This governance layer and the root `AGENTS.md`.
5. The nearest applicable nested `AGENTS.md` or subsystem instruction file.
6. Binding subsystem architecture and standards documents.
7. Existing tests, public behavior, generated output, and implementation patterns as evidence of intended behavior.
8. Agent preference.

Agent preference has no authority to override established behavior or contracts.

## 2. Explicit user authority

The user may intentionally authorize a change that would otherwise be prohibited.

An explicit request for the exact rename, refactor, migration, reorganization, framework change, architectural change, or behavior change counts as authorization for that scope.

However, when the requested change alters an invariant, architecture contract, or governance rule, it is still a **governed mutation**. The affected governance or contract documents must be updated deliberately rather than allowing the implementation and governance to diverge.

## 3. No agent self-amendment

An agent may identify a governance problem and propose an amendment.

An agent must not broaden its own authority by silently editing governance, weakening an invariant, redefining scope, or changing a controlling contract merely because doing so makes implementation easier.

If governance itself must change, follow [`change-control.md`](change-control.md).

## 4. Scope and local authority

The root governance applies repository-wide.

Nested instructions may specialize behavior for their directory tree. More-specific local instructions govern local implementation details when they do not violate repository-wide invariants or an explicit user instruction.

A local instruction may strengthen a requirement.

A local instruction may not silently waive a repository invariant.

## 5. Sovereign subsystem boundaries

Each subsystem owns its authority domain.

### WDBASIC

`Wdbasic/` owns web architecture, semantics, accessibility, security, progressive enhancement, component behavior, implementation validation, and related contracts defined by WDBASIC.

### TCBasic

`TCbasic/` owns its package structure, executable tooling, Tailwind implementation, tests, and build contracts.

### SEObasic

`SEObasic/` owns search/content-discovery guidance, structured data, entity relationships, and its canonical content philosophy.

Cross-subsystem changes must respect the controlling contract of each affected subsystem. One subsystem must not redefine another subsystem's authority by implication.

## 6. Evidence has interpretive weight, not legislative authority

Existing tests, code, rendered output, routes, data shapes, and build artifacts are evidence of current intended behavior.

They are not automatically correct forever, but an agent must not discard them merely because a different implementation appears preferable.

If implementation evidence conflicts with binding governance:

1. identify the conflict;
2. determine whether the implementation is defective or governance is stale;
3. do not silently choose whichever side makes the task easier;
4. use change control if the governing contract must change.

## 7. Ambiguity rule

When authority is ambiguous and the narrower change can preserve existing behavior, preserve existing behavior.

When resolution requires changing an invariant, public contract, architecture, persistent data semantics, or user-established pattern, stop at the mutation gate and obtain explicit authority unless the current request already provides it.
