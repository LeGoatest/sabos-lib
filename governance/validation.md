# Repository Validation Governance

> **Status:** Binding  
> **Purpose:** Define how changes are validated and what evidence is required before completion is claimed.

The repository follows this implementation philosophy:

> **Fail early. Fail visibly. Fail safely. Learn from failure. Increase scope and risk only as confidence increases.**

The governing principles are:

- **Thorough**
- **Early**
- **Systematic**
- **Transparent**
- **Independent**
- **Non-destructive**
- **Gradual**

WDBASIC expands these principles for governed implementations in [`../Wdbasic/engineering-validation.md`](../Wdbasic/engineering-validation.md).

## 1. Thorough

Validate the full contract affected by the change, not merely the line that changed.

Depending on scope, evidence may include:

- unit tests;
- integration tests;
- build success;
- route behavior;
- generated output;
- rendered HTML/CSS/UI;
- schema or structured-data validation;
- link resolution;
- accessibility checks;
- security controls;
- regression comparison.

Do not claim broad correctness from a narrow happy-path check.

## 2. Early

Use the cheapest high-signal checks before broad modification.

Before material changes, determine when practical:

- whether the baseline already fails;
- whether the assumed file or subsystem exists;
- whether the requested change conflicts with architecture;
- which tests or build commands actually govern the affected area;
- whether generated output is current.

A pre-existing failure MUST be distinguished from a failure introduced by the current task.

## 3. Systematic

Use a repeatable change loop:

```text
inspect
→ resolve authority and scope
→ establish baseline
→ make smallest coherent change
→ run local validation
→ inspect integration/generated output
→ compare against baseline
→ report evidence and gaps
```

Do not substitute repeated guessing or repeated re-inspection for a defined validation process.

## 4. Transparent

Validation reporting MUST distinguish:

- checks actually performed;
- checks passed;
- checks failed;
- checks unavailable or not run;
- pre-existing failures;
- newly introduced failures;
- unresolved uncertainty.

A skipped, blocked, unavailable, or unperformed check MUST NOT be reported as passed.

## 5. Independent

Where practical, validate behavior outside the exact implementation path that produced it.

Examples:

- compile CSS rather than only reading the source stylesheet;
- exercise a route rather than only reading its handler;
- inspect generated JSON-LD rather than trusting the generator function;
- render or inspect output rather than assuming a template is correct;
- compare behavior before and after a refactor;
- use a separate validator for serialized or standards-based output where appropriate.

Independent validation reduces the chance that the implementation and its check share the same mistaken assumption.

## 6. Non-destructive

Validation SHOULD be reversible and isolated.

Prefer:

- temporary directories;
- fixtures;
- test databases;
- isolated indexes;
- sandboxes;
- rollbackable changes;
- local or staging output;
- read-only inspection of production state.

Do not use canonical production data as disposable test state.

## 7. Gradual

Increase validation scope as the change becomes more integrated or risky.

A typical progression is:

```text
syntax/static checks
→ unit/local checks
→ integration checks
→ generated/rendered output
→ end-to-end behavior
→ production-like or staged validation when justified
```

Higher-risk work requires stronger evidence. A documentation correction does not require the same validation as a persistence migration, but both require honest reporting of what was checked.

## 8. Commands are discovered, not invented

Agents MUST NOT invent build or test commands from convention.

Use the package manifest, task runner, workflow, subsystem documentation, or existing repository scripts that actually own the command.

If no authoritative command exists, state that fact instead of fabricating one.

## 9. Tests as regression boundaries

Tests that encode intentional existing behavior are evidence to preserve.

When a test fails after a change:

1. inspect the behavioral difference;
2. determine whether the implementation regressed;
3. do not automatically update expected output or snapshots;
4. update the test only if the behavior change is intentional and in scope.

## 10. Definition of done

A material task is not complete until, as applicable:

- the requested behavior exists;
- intended files were actually changed;
- relevant validation was run;
- required generated output was regenerated from canonical sources;
- the result was compared with baseline behavior where meaningful;
- unrelated behavioral drift was checked;
- pre-existing and newly introduced failures were distinguished;
- unperformed validation was disclosed;
- no unapproved governed mutation was introduced.

## 11. Mechanical enforcement

Stable requirements SHOULD move from prose into executable checks when practical.

Candidates include:

- file/directory invariants;
- architecture dependency rules;
- schema validation;
- link integrity;
- generated-output freshness;
- required metadata;
- accessibility rules with reliable automation;
- security/static checks;
- package/build consistency.

Documentation explains the rule. Automation provides repeatable evidence that the rule still holds.
