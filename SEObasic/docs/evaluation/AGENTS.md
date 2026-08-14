# SEObasic Evaluation Agent Instructions

> **Status:** Binding for work under `SEObasic/docs/evaluation/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Domain entrypoint:** [`README.md`](README.md)

Evaluation describes **what is being assessed**, not the tactic that must be applied.

Agents MUST:

- define the evaluated condition before recommending an intervention;
- preserve platform/surface scope for platform-specific observations;
- preserve metric definitions under [`../measurement/contracts/metric-semantics.md`](../measurement/contracts/metric-semantics.md);
- distinguish observation, correlation, and inferred mechanism;
- use [`../invariants/evidence-classification.md`](../invariants/evidence-classification.md) for material causal/platform claims;
- route proposed responses to [`../strategies/`](../strategies/README.md);
- route platform mechanics to [`../surfaces/`](../surfaces/README.md);
- route supporting evidence to [`../evidence/`](../evidence/README.md).

Agents MUST NOT:

- turn a poor score into proof of its cause;
- turn an evaluation dimension into a universal ranking factor;
- prescribe a tactic merely because a tool exposes a field for it;
- merge distinct metrics because they share a label such as visibility, authority, engagement, or conversion;
- treat a surface-specific diagnostic as universal.

## Governing rule

> **Evaluate the condition before prescribing the intervention.**
