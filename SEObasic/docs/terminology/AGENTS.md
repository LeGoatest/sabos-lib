# SEObasic Terminology Agent Instructions

> **Scope:** `SEObasic/docs/terminology/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Domain entrypoint:** [`README.md`](README.md)

Terminology explains terms; it does not silently redefine invariants, strategies, measurement contracts, canonical philosophies, platform behavior, or evidence.

Agents MUST:

- preserve platform-specific meanings when the same term differs by platform;
- identify ambiguous acronyms and overloaded terms;
- distinguish colloquial industry usage from formal specification/platform definitions;
- prefer neutral definitions and route normative behavior to the owning invariant/measurement/surface document;
- distinguish provider-specific metrics from generic concepts;
- update terminology when a binding term changes deliberately.

Agents MUST NOT:

- rewrite T.E.S.T.I.N.G. definitions through shorthand;
- invent official meanings for informal industry terms;
- treat one vendor's terminology as universal when other platforms use the term differently;
- use a definition as evidence of a ranking, causal, crawler, or platform-behavior claim;
- let terminology override [`../measurement/contracts/metric-semantics.md`](../measurement/contracts/metric-semantics.md) or [`../invariants/evidence-classification.md`](../invariants/evidence-classification.md).

## Cross-role routing

- binding truths → [`../invariants/`](../invariants/README.md)
- evaluation dimensions → [`../evaluation/`](../evaluation/README.md)
- strategies → [`../strategies/`](../strategies/README.md)
- platform/channel mechanics → [`../surfaces/`](../surfaces/README.md)
- supporting evidence → [`../evidence/`](../evidence/README.md)
- measurement semantics → [`../measurement/`](../measurement/README.md)

Material terminology changes affecting framework interpretation should update [`../../CHANGELOG.md`](../../CHANGELOG.md).
