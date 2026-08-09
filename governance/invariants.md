# Repository Invariants

> **Status:** Binding  
> **Purpose:** Define truths that ordinary implementation work must preserve unless an intentional governed mutation is authorized.

An invariant is not a style preference. It is a boundary that prevents silent regression, architectural drift, and agent-driven scope expansion.

## INV-01 — Preserve known-good behavior

Working behavior outside the explicit task scope MUST be preserved.

A request to change one behavior is not permission to redesign adjacent behavior.

## INV-02 — Smallest coherent scope

Changes MUST be limited to the smallest coherent set needed to satisfy the request.

“Smallest” does not mean incomplete. Source, tests, generated output, schemas, or direct consumers may all need to change when they form one real contract.

Unrelated cleanup MUST remain separate.

## INV-03 — No silent architecture mutation

Agents MUST NOT silently change:

- architecture;
- framework or build system;
- dependency strategy;
- public routes or APIs;
- persistent data semantics;
- established directory structure;
- user-established naming conventions;
- canonical generated-output contracts;
- subsystem authority boundaries.

Such changes require the process in [`change-control.md`](change-control.md) unless explicitly requested by the user.

## INV-04 — No opportunistic refactoring

Working code MUST NOT be refactored merely because another implementation appears cleaner, more modern, more idiomatic, or more familiar to the agent.

Refactoring is valid when:

- the user explicitly requested it;
- it is the smallest safe prerequisite for the requested task and is approved through change control; or
- it is a separately scoped maintenance task.

## INV-05 — Evidence over assumption

Agents MUST inspect actual repository state before asserting implementation facts.

Do not infer that a file, route, dependency, branch state, build artifact, deployment, migration, or generated output exists or is current merely because documentation or examples mention it.

## INV-06 — Tests are regression evidence

Existing tests representing intentional behavior MUST NOT be deleted, weakened, or rewritten solely to accommodate a regression introduced by a new implementation.

An intentional behavior change may update tests only when the old and new behavior are explicitly understood and the change is in scope.

## INV-07 — Generated output follows its source

When the repository defines a canonical source-to-generated-output workflow, generated artifacts MUST be produced from that source rather than hand-edited as a substitute for fixing the source.

Generated diffs MUST be inspected for unrelated churn.

## INV-08 — Preserve user-established patterns

A user-established project convention MUST be treated as authoritative unless explicitly changed.

Common industry practice, agent preference, or framework fashion is not sufficient authority to reverse a project-specific decision.

## INV-09 — Preserve terminology and historical truth

Authoritative terminology, acronyms, definitions, and recovered source material MUST NOT be silently rewritten into a more familiar interpretation.

Summaries, inference, reinterpretation, and verbatim source material MUST remain distinguishable when the distinction matters.

## INV-10 — No destructive convenience

Agents MUST NOT destroy or overwrite unrelated working state for convenience.

This includes:

- unrelated user changes;
- evidence required to establish a baseline;
- repository history;
- production state used as disposable test data;
- working files removed without proving their usage contract.

## INV-11 — Governance is vendor-neutral

Repository governance MUST describe project authority and behavior rather than depend on one specific AI vendor's undocumented behavior.

Vendor-specific adapter files may route into the same governance but SHOULD NOT become competing sources of truth.

## INV-12 — Governance mutations are explicit

An implementation MUST NOT cause governance to change implicitly.

If a task intentionally changes an invariant, architecture contract, or authority boundary, the corresponding governance or subsystem contract MUST be changed deliberately through [`change-control.md`](change-control.md).

## INV-13 — Changelog traceability

Notable changes MUST be recorded in the changelog owned by the scope that changed.

- Changes confined to one governed top-level subsystem SHOULD update that subsystem's `CHANGELOG.md`.
- Repository-wide or cross-subsystem changes MUST also update the root [`CHANGELOG.md`](../CHANGELOG.md).
- A change that affects both repository governance and a subsystem MAY require both changelogs.
- Changelogs MUST remain curated for humans; do not dump raw commit logs or record trivial formatting noise as notable changes.
- Historical entries MUST NOT be rewritten merely to normalize wording unless correcting materially inaccurate history.

A missing changelog entry does not justify inventing a release version or date. Use `Unreleased` until an actual release/version boundary exists.

## Enforcement

A detected invariant violation requires one of three outcomes:

1. **Correct the implementation** so the invariant remains true.
2. **Use the mutation process** when the invariant or contract genuinely needs to change.
3. **Report the blocker** when neither can be done safely within current authority.

Agents MUST NOT resolve an invariant conflict by silently broadening scope.
