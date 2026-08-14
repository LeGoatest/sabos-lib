# SEObasic Invariants

> **Status:** Binding cross-domain obligations  
> **Role:** What must remain true  
> **Parent:** [`../README.md`](../README.md)  
> **Agent instructions:** [`AGENTS.md`](AGENTS.md)

An **invariant** is a requirement SEObasic has deliberately adopted as something strategies, surfaces, evaluations, and implementations must not silently violate.

Research, platform guidance, practitioner experience, historical lessons, and standards may justify an invariant, but they are not interchangeable with the invariant itself.

## Current cross-domain invariants

- [`truth-and-evidence.md`](truth-and-evidence.md) — material claims and signals must remain truthful and supportable.
- [`channel-boundaries.md`](channel-boundaries.md) — content may be reused across channels/surfaces without pretending their mechanics, policies, conversion roles, or metrics are interchangeable.
- [`evidence-classification.md`](evidence-classification.md) — material claims must preserve evidence class, platform/consumer scope, publication status, freshness context, and generalization limits where applicable.

Measurement-specific binding semantics remain under [`../measurement/contracts/`](../measurement/contracts/README.md).

## Evidence-to-invariant model

```text
evidence + practitioner experience
             ↓
documented understanding / position
             ↓
deliberate invariant decision
             ↓
strategy / surface / workflow
             ↓
validation + outcomes
             ↓
retain / revise / falsify
```

Evidence does not become an invariant merely because it is documented. A platform statement, research paper, practitioner observation, benchmark, or historical reference keeps its own evidence class until SEObasic deliberately adopts a binding rule.

## Invariant qualities

A useful invariant SHOULD make clear, as applicable:

- scope;
- required or prohibited behavior;
- rationale;
- evidence basis;
- validation;
- deliberate exceptions;
- related invariants or measurement contracts.

## Promotion boundary

Do not promote a concept into this directory merely because it sounds foundational.

Possible future invariants such as entity-identity integrity, URL/HTTP integrity, user-value/trust obligations, or other cross-domain truths should become explicit here only when substantive binding requirements exist.

## Local contracts

Domain-specific implementation contracts may still live near the role/surface they govern when that is the clearest authority boundary. This directory owns **cross-domain invariants**, not every normative statement in SEObasic.

## Change control

Changing a binding invariant changes expected behavior. Material invariant mutations require deliberate review under repository [`governance/change-control.md`](../../../governance/change-control.md) when they cross established authority or behavior boundaries.

> **Evidence may challenge an invariant; it does not silently replace it.**
