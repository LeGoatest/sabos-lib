# Pattern: Durable Decision Record

> **Status:** Informative reusable pattern  
> **Purpose:** Preserve consequential project decisions, their context, and their supersession history in a form future contributors and agents can recover.

## When to use

Use a decision record when a choice is likely to affect future implementation and would be costly or confusing to reconstruct later.

Typical examples include:

- architecture or subsystem boundaries;
- framework/build/dependency strategy;
- public API or route conventions;
- persistence/data-model semantics;
- security or deployment policy;
- durable workflow/tooling decisions;
- intentional divergence from common industry practice;
- a decision that future contributors are likely to question or accidentally reverse.

Do not create a decision record for every minor implementation detail.

## Recommended shape

```markdown
# DR-XXXX — <Decision title>

Status: Proposed | Accepted | Rejected | Deprecated | Superseded
Date: YYYY-MM-DD
Scope: <affected area>
Supersedes: <record or none>
Superseded by: <record or none>

## Context

What problem, constraint, uncertainty, or tradeoff required a durable decision?

## Decision

State the adopted choice directly.

## Rationale

Why was this choice selected? Distinguish project-specific preference from external requirements or standards.

## Alternatives considered

Record only alternatives material to understanding the choice.

## Consequences

What becomes easier, harder, constrained, deferred, or newly required?

## Validation / evidence

What repository evidence, research, standards, experiments, or operational outcomes informed the choice?

## Related artifacts

Link contracts, plans, issues, implementation areas, or superseding records.
```

## Lifecycle

Prefer preserving accepted historical records rather than rewriting them after the fact.

When the decision changes:

1. create or identify the newer controlling record;
2. mark the older record superseded/deprecated as appropriate;
3. link both directions where practical;
4. keep the historical context truthful.

## Authority

A decision record has only the authority the adopting repository assigns to it.

SABOS Lib does not assume every document named ADR/DR is binding. The repository's authority model must say whether an accepted decision record controls implementation or merely records history.

## Evidence basis

This pattern aligns with established Architecture Decision Record practice described by Martin Fowler, Thoughtworks, AWS Prescriptive Guidance, Microsoft Well-Architected guidance, and the broader ADR community: preserve the decision together with context and consequences, store it with project documentation/source control, and supersede rather than silently rewrite historical decisions.
