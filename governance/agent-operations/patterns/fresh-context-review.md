# Pattern: Fresh-Context Review

> **Status:** Informative reusable pattern  
> **Purpose:** Independently evaluate a substantial agent-authored change against its requested outcome and repository contracts without relying on the implementer's narrative as the primary evidence.

Use this pattern for substantial, high-risk, cross-cutting, architecture-sensitive, or difficult-to-reverse changes when a separate reviewer/agent/human is practical.

## Reviewer input

Prefer giving the reviewer:

- the requested outcome or task contract;
- controlling repository governance/contracts;
- the actual diff/change set;
- authoritative validation commands or results;
- baseline evidence when material.

Do not make the implementer's summary the sole source of truth. It may be useful context, but the reviewer should inspect repository evidence independently.

## Review questions

### Scope fidelity

- Does the change satisfy the requested outcome?
- Did it expand into unrelated cleanup, refactoring, redesign, dependency changes, or architecture changes?
- Were protected non-goals preserved?

### Contract fidelity

- Which binding contracts/invariants apply?
- Does the implementation contradict any of them?
- Did the change silently redefine a contract instead of implementing within it?

### Dependency impact

- Were direct consumers/dependencies considered?
- Did generated output or integration boundaries remain consistent?
- Are there obvious compatibility gaps outside the edited file that the task surface directly affects?

### Validation quality

- Were authoritative commands used rather than guessed substitutes?
- Were prerequisite failures handled before dependent checks?
- Does the reported validation actually prove the claimed behavior?
- Are stable hard rules mechanically checked where practical?

### Regression and freshness

- Are new failures distinguishable from pre-existing ones?
- Did the change invalidate documentation, decisions, checkpoints, generated artifacts, or source registries that now need update/supersession?
- Is historical material being mistaken for current controlling state?

## Suggested report

```markdown
# Fresh-context review — <task/change>

Result: Pass | Pass with follow-up | Fail

## Material findings

### <severity>: <finding>
Evidence:
- <file/diff/test/result>

Impact:
- <why this matters>

Required correction:
- <smallest correction needed>

## Validation assessment

- authoritative commands used: yes/no/unknown
- prerequisite gating respected: yes/no/unknown
- independent evidence adequate: yes/no/partial
- unperformed checks disclosed: yes/no

## Scope assessment

- requested outcome satisfied: yes/no/partial
- unrelated drift found: yes/no
- protected non-goals preserved: yes/no/unknown

## Freshness / durable-state assessment

- stale or superseded records affected: ...
- checkpoint/decision updates required: ...
```

## Severity guidance

- **Critical** — security/data-loss/destructive behavior or architecture break requiring immediate stop.
- **High** — requested behavior incorrect, major regression, or binding contract violation.
- **Medium** — material incompleteness, insufficient validation, or recoverability/freshness problem.
- **Low** — non-blocking maintainability/documentation issue directly relevant to the task.

Avoid filling the report with subjective style preferences that do not affect the requested outcome or governing contracts.

## Related contracts

- [`../contracts/execution-verification.md`](../contracts/execution-verification.md)
- [`../contracts/task-continuity.md`](../contracts/task-continuity.md)
- [`../contracts/context-freshness.md`](../contracts/context-freshness.md)
- [`../../validation.md`](../../validation.md)
