# Governance Change Control

> **Status:** Binding  
> **Purpose:** Distinguish ordinary implementation from changes that redefine architecture, invariants, public contracts, or governance.

## 1. Normal implementation vs governed mutation

A **normal implementation** works inside established contracts.

A **governed mutation** changes one or more of the contracts that ordinary work is expected to preserve.

Examples of governed mutations include:

- architecture changes;
- framework or build-system replacement;
- broad refactors of working behavior;
- public route or API changes;
- persistent data-model semantics changes;
- renaming or moving broadly referenced artifacts;
- changing subsystem authority boundaries;
- weakening, replacing, or redefining a repository invariant;
- changing canonical source/generated-output relationships;
- changing a user-established implementation convention that existing work depends on.

## 2. Mutation trigger

Before performing an unrequested governed mutation, the agent MUST stop implementation and provide:

```text
Proposed mutation:
Why it is necessary:
Requested outcome that requires it:
Affected files/contracts/behavior:
Regression risk:
Smaller alternative considered:
Validation plan:
Rollback or recovery plan when applicable:
```

The mutation MUST NOT proceed until explicit user approval is obtained.

## 3. When approval is already present

Additional permission is not required when the current user request explicitly asks for the exact mutation being performed.

Examples:

- “Refactor this subsystem.”
- “Rename these routes.”
- “Move the documentation into docs/.”
- “Replace framework X with framework Y.”
- “Change this governance rule.”

The agent still MUST identify affected contracts and keep governance synchronized with the approved change.

## 4. No self-authorizing prerequisite

An agent MUST NOT claim that a broad refactor is “necessary” merely because it makes implementation easier.

Before escalating scope, attempt to determine whether the requested result can be achieved while preserving existing contracts.

A mutation gate is reached only when the narrower implementation is unsafe, incoherent, impossible, or explicitly rejected by the user.

## 5. Mutation workflow

For an approved governed mutation:

1. Identify the controlling authority and affected invariants.
2. Establish the pre-change baseline.
3. Record the intended new behavior or contract.
4. Update the authoritative governance/architecture documents deliberately.
5. Update implementation and directly dependent artifacts as one coherent change.
6. Run the validation required by [`validation.md`](validation.md).
7. Compare new behavior against the declared mutation scope.
8. Report preserved behavior, intentional changes, regressions, and unresolved risk.

## 6. Atomicity

A governance mutation SHOULD leave the repository internally coherent at the end of the change.

Do not intentionally land a state where:

- governance describes the old architecture while implementation uses the new one;
- tests still encode behavior that the approved contract has intentionally replaced without explanation;
- a renamed public artifact has half of its references updated;
- generated output and source contracts disagree;
- a subsystem index points at removed or nonexistent controlling documents.

When a migration genuinely requires staged coexistence, document the transitional state and removal condition explicitly.

## 7. Regression discovered during mutation

An approved architecture change is not permission to accept unrelated regressions.

If unrelated behavior breaks:

1. stop expanding scope;
2. determine whether the mutation caused the regression;
3. restore preserved behavior where possible;
4. narrow the implementation;
5. request additional authority only if preserving that behavior requires a second mutation.

## 8. Governance amendments

Agents may propose improvements to this governance system, but MUST NOT silently weaken it while performing an unrelated task.

A governance amendment should state:

- current rule;
- proposed rule;
- reason;
- expected benefit;
- new risk introduced;
- affected documents or enforcement checks.

Human authority remains the final approval boundary for governance changes.
