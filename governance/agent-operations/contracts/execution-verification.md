# Execution and Verification Contract

> **Status:** Binding  
> **Scope:** Repository-agent execution, prerequisite gates, and completion evidence  
> **Owner:** Agent Operations Governance

## Purpose

Translate high-salience agent guidance into an execution discipline that is specific enough to validate. Agents must not treat a plausible edit, a passing prose review, or an assumed command as evidence that work is complete.

## Requirements

### EV-01 — Material work starts from an explicit outcome

Before materially changing repository state, the agent MUST be able to identify:

- the requested outcome;
- the affected scope;
- controlling contracts, decisions, or constraints;
- material non-goals or protected behavior when ambiguity exists;
- observable acceptance criteria appropriate to the task.

The outcome MAY live in the conversation, an issue, a task file, an implementation plan, or another durable artifact. A separate task file is not required for trivial/local work.

### EV-02 — Dependency and impact surface are inspected proportionally

For cross-file, cross-component, generated-output, or architecture-sensitive work, the agent MUST inspect direct dependencies and consumers that could invalidate a local-only change.

Inspection SHOULD expand outward only as evidence requires:

```text
requested surface
→ direct dependency / consumer
→ generated or integration boundary
→ broader repository invariant when applicable
```

This requirement does not justify indiscriminate repository exploration.

### EV-03 — Commands are authoritative data, not guesses

Build, test, lint, generation, migration, deployment, and validation commands MUST be discovered from the owning repository/package/workflow documentation or implementation.

Agents MUST NOT:

- invent a command from convention when an authoritative command is available;
- substitute a different package manager, tool, version, or invocation without a concrete reason;
- report an unrun command as evidence;
- treat an incorrect command failure as proof the implementation is broken.

When no authoritative command exists, state that explicitly.

### EV-04 — Prerequisite failures gate dependent checks

Validation MUST respect dependency order.

Examples:

- if compilation/build output is required by downstream tests, a compile/build failure blocks those dependent tests;
- if dependency installation fails, tests requiring those dependencies are not meaningful evidence;
- if schema generation fails, consumers of the generated schema are not treated as validated;
- if a migration prerequisite fails, later migration/runtime checks must not be reported as completed.

Agents MUST surface the first blocking prerequisite failure rather than continuing with checks whose evidence would be invalid.

Independent checks that do not depend on the failed prerequisite MAY still run when useful.

### EV-05 — Hard constraints should become mechanical where practical

Stable, mechanically testable constraints SHOULD be enforced in the adopting implementation through tests, CI, schema validation, static checks, hooks, linters, dependency rules, or equivalent executable controls.

Natural-language instructions remain the authority/rationale layer. They MUST NOT be misrepresented as deterministic enforcement.

Useful candidates include:

- forbidden dependency directions;
- required file/schema fields;
- generated-output freshness;
- package/tool/version requirements;
- prohibited commands or mutation paths;
- link/status/supersession consistency;
- security or accessibility checks with reliable automation.

### EV-06 — Validation is independent of the implementation path where practical

Material changes SHOULD be checked through evidence that does not merely repeat the implementation assumption.

Examples:

- execute a route instead of only reading its handler;
- compile generated CSS instead of only inspecting source CSS;
- validate emitted JSON/schema instead of trusting the producer;
- compare before/after behavior rather than assuming a refactor is neutral;
- use a fresh-context reviewer or separate validation pass for substantial changes when practical.

### EV-07 — Scope reconciliation precedes completion claims

Before claiming a material task complete, reconcile:

1. requested outcome;
2. controlling authority and established constraints;
3. approved scope/non-goals;
4. actual changed files/behavior;
5. acceptance criteria;
6. validation performed;
7. pre-existing vs newly introduced failures;
8. unresolved gaps or blocked checks;
9. directly invalidated durable context that requires update/supersession.

A task is not complete merely because edits exist or one check passed.

### EV-08 — Verification evidence is reported precisely

Completion reporting MUST distinguish:

- passed checks;
- failed checks;
- checks not run;
- checks unavailable or blocked by prerequisites;
- pre-existing failures;
- failures introduced by the current change;
- validation that is source-level only vs runtime/generated/browser/deployed evidence.

## Priority adoption order

When an adopting repository cannot implement everything at once, prioritize:

1. authoritative build/test/validation commands;
2. explicit acceptance criteria for material work;
3. prerequisite-gated execution order;
4. mechanical enforcement of stable hard constraints;
5. independent validation for substantial/high-risk changes;
6. durable checkpoints and decision records only when task complexity or future reconstruction cost justifies them.

This order deliberately favors executable correctness controls over additional prose volume.

## Validation

An implementation is consistent with this contract when material agent work can answer:

- What outcome and scope are being executed?
- Which exact commands and versions are authoritative?
- Which checks depend on earlier prerequisites?
- Which hard rules are mechanically enforced?
- What independent evidence demonstrates the result?
- What remains unverified or blocked?

## Rationale

The supporting evidence under [`../research/`](../research/) converges on operationally specific repository guidance, dependency-aware planning for material work, exact tool/version adherence, prerequisite-gated execution, and executable validation. It also warns that more instruction text alone can reduce effectiveness. This contract therefore prioritizes observable execution controls over instruction expansion.