# WDBASIC Engineering Validation Philosophy

> **Status:** Binding  
> **Applies to:** WDBASIC implementations, generators, parsers, migrations, refactors, integrations, build pipelines, automated tooling, server-rendered applications, native or hybrid shells, and other implementation work governed by WDBASIC.

WDBASIC implementations follow a progressive validation philosophy centered on **failing early, failing visibly, failing safely, learning from failure, and increasing risk only as confidence increases**.

This document is separate from SEObasic's T.E.S.T.I.N.G. Method. It does not redefine that acronym.

## 1. Core principles

### Thorough

Validation covers meaningful success paths, failure paths, boundaries, state transitions, integrations, authorization rules, data transformations, and recovery behavior.

A passing happy-path test is insufficient evidence when material failure modes remain untested.

### Early

Validate assumptions as close to their source as possible.

Examples include:

- Validate inputs before downstream processing.
- Validate schemas before migrations or generators depend on them.
- Validate component contracts before broad reuse.
- Detect architectural conflicts before refactors spread them.
- Run inexpensive checks before expensive integration or deployment checks.

The goal is to expose incorrect assumptions while they are still cheap and safe to correct.

### Systematic

Validation must be repeatable rather than ad hoc.

Use defined test cases, fixtures, deterministic environments where practical, explicit expected outcomes, and automated checks where they provide reliable evidence.

Manual verification remains valid where automation cannot prove the requirement, but the procedure and expected evidence must be documented when it is part of a durable validation claim.

### Transparent

Failures and unresolved states must be visible and understandable.

Validation output should identify, where available:

- What failed.
- Where it failed.
- What input or state triggered it.
- What was expected.
- What was observed.
- Whether the result is failed, blocked, skipped, indeterminate, or passed.

Unknown, skipped, blocked, or indeterminate results must not be represented as passes.

### Independent

Validation should meaningfully challenge implementation assumptions rather than merely reproduce them.

Use independent fixtures, alternate validation paths, external validators, generated-output inspection, contract tests, or independent review where appropriate.

The test oracle must not blindly inherit the same defect as the implementation it is intended to validate.

### Non-destructive

Failure should be safe and reversible whenever practical.

Prefer:

- Sandboxes.
- Temporary directories.
- Disposable databases.
- Test fixtures.
- Transactions and rollback.
- Isolated indexes.
- Reversible migrations.
- Feature flags or staged activation where appropriate.
- Backups before destructive production changes.

Tests and experiments must not use canonical production data as disposable state.

### Gradual

Increase scope, integration, and operational risk only as confidence increases.

A typical progression is:

```text
static checks / pure functions
        ↓
unit tests
        ↓
component or contract tests
        ↓
integration tests
        ↓
system / end-to-end tests
        ↓
production-like validation
        ↓
controlled release
```

Higher-level validation supplements rather than replaces lower-level evidence.

## 2. Fail-fast interpretation

"Fail fast" does not mean ship carelessly or encourage uncontrolled failure.

Within WDBASIC it means:

1. Detect invalid assumptions early.
2. Stop unsafe work before damage propagates.
3. Surface the failure clearly.
4. Preserve enough evidence to understand it.
5. Correct the underlying cause rather than masking the symptom.
6. Resume at the smallest safe scope.

The intended model is **safe-to-fail and fast-to-learn**, not reckless experimentation.

## 3. Refactoring and regression boundary

Existing validated behavior is a regression boundary.

A refactor, dependency change, architecture change, parser change, rendering change, migration, generator change, or component rewrite must not silently redefine expected behavior merely to make a build or test suite pass.

When an established behavior must intentionally change:

1. State the behavior being changed.
2. State the reason for the change.
3. Identify affected contracts, tests, users, routes, data, or generated output.
4. Update tests deliberately rather than weakening them opportunistically.
5. Preserve migration or rollback capability when the change carries meaningful risk.
6. Record the new expected behavior.

If an implementation cannot explain why a regression boundary is being changed, the change should not proceed as a routine refactor.

## 4. Validation ordering

Prefer inexpensive and local validation before broad or destructive validation.

For example:

```text
syntax / schema
    ↓
static analysis
    ↓
unit behavior
    ↓
component contracts
    ↓
integration
    ↓
end-to-end
    ↓
production-like environment
    ↓
controlled release
```

A later stage should not be used as the first place to discover failures that an earlier stage could have detected reliably.

## 5. Production changes

Production-affecting changes require proportionate safeguards.

Depending on risk, these may include:

- Backups.
- Dry runs.
- Migration previews.
- Staged rollout.
- Health checks.
- Rollback procedures.
- Post-deployment verification.
- Monitoring of critical routes or workflows.

The more destructive or difficult to reverse a change is, the stronger the required evidence before execution.

## 6. Relationship to accessibility, security, and forms

This philosophy does not weaken domain-specific evidence requirements.

Accessibility testing still follows WDBASIC compliance methodology. Security validation still follows the security contracts. Form workflows still require server-authoritative validation and security controls.

Engineering validation defines **how implementation confidence is built progressively**; domain contracts define **what must be true**.

## 7. Automation and agents

Automated tooling and AI agents must follow the same principles.

They must not:

- Rewrite failing tests solely to obtain a passing result.
- Suppress or relabel unresolved failures as passes.
- Perform destructive changes when a non-destructive validation path is available.
- Expand a refactor beyond the requested scope without a documented reason.
- Remove established safeguards merely because they complicate implementation.

When an automated change alters a regression boundary, the reason and affected behavior must be explicit before the change is treated as valid.

## 8. Practical rule

For WDBASIC implementation work:

> **Fail early. Fail visibly. Fail safely. Learn from the failure. Increase risk only as confidence increases.**
