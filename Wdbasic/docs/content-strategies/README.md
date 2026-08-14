# WDBASIC Content Strategies

> **Status:** Applicability-controlled strategy domain  
> **Core constraints:** [`../core-invariants/README.md`](../core-invariants/README.md)  
> **Intent evaluation:** [`../experience-evaluation/intent-alignment.md`](../experience-evaluation/intent-alignment.md)

WDBASIC does not impose one persuasion sequence on every page. Select strategy from actual intent and page objective.

## Strategies

- [`pas.md`](pas.md) — Problem–Agitate–Solution when problem/consequence framing is genuinely relevant.
- [`comparison.md`](comparison.md) — decision criteria, alternatives, tradeoffs, evidence, recommendation.
- [`informational.md`](informational.md) — answer/task first, explanation, evidence, optional next step.
- [`transactional.md`](transactional.md) — offer/action first for high-intent tasks, with proof and friction reduction.
- [`other-intent-models.md`](other-intent-models.md) — support, navigation, onboarding, aspirational, portfolio, retention, tool-first, and other models.

## Applicability record

For a governed page, record:

```text
primary_strategy: <strategy>
secondary_strategies: []
rationale: <user intent / decision stage / page objective>
pas_applicability: yes | partial | no
```

## Governing principle

> **Relevance precedes or accompanies persuasion.**

Every strategy remains constrained by accessibility, security/privacy, truthful content, HTTP/URL integrity, resilience, and evidence requirements.
