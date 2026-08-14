# SEObasic Contracts

> **Status:** Binding contract registry for SEObasic  
> **Purpose:** Convert adopted SEObasic knowledge and positions into explicit implementation obligations without confusing the underlying evidence with the rule itself.

A **contract** states what a conforming implementation, workflow, or agent MUST preserve, provide, avoid, or validate.

Research, standards, practitioner experience, historical lessons, and platform guidance may justify a contract, but they are not interchangeable with the contract.

## Current cross-domain contracts

- [`truth-and-evidence.md`](truth-and-evidence.md) — material claims and signals must remain truthful and supported.
- [`channel-boundaries.md`](channel-boundaries.md) — source material may be reused across channels without pretending their mechanics, policies, conversion roles, or metrics are interchangeable.
- [`evidence-classification.md`](evidence-classification.md) — material claims must preserve evidence class, consumer/platform scope, publication status, review date, and generalization limits where applicable.

Measurement-specific binding semantics live under [`../measurement/contracts/`](../measurement/contracts/README.md).

## Knowledge-to-contract model

```text
practitioner knowledge + project lessons
            +
industry practice + platform guidance
            +
standards + research evidence
            ↓
      documented position
            ↓
      explicit contract
            ↓
 implementation / workflow
            ↓
       validation evidence
```

The [`Evidence Classification Contract`](evidence-classification.md) governs the provenance and scope of the material claims feeding this model. A platform statement, research paper, practitioner observation, or historical reference does not become a contract merely by being documented.

## Contract qualities

A useful contract SHOULD identify:

- **Scope** — what surface, channel, workflow, or implementation it governs.
- **Requirement** — the behavior that MUST, SHOULD, or MUST NOT occur.
- **Rationale** — why the requirement was adopted.
- **Evidence basis** — practitioner experience, research, standard, vendor guidance, historical lesson, or combination.
- **Validation** — how conformance can be checked when practical.
- **Exceptions** — any deliberate circumstances where the rule may be bypassed and who can authorize that.
- **Related contracts** — dependencies or cross-channel relationships.

## Contract template

```markdown
# <Contract name>

> **Status:** Binding
> **Scope:** <governed surface>
> **Owner:** <SEObasic domain>

## Requirement

<Normative MUST / SHOULD / MUST NOT rules.>

## Rationale

<Why SEObasic adopts this position.>

## Evidence basis

- Practitioner position: <reference or summary>
- Industry/platform guidance: <reference if applicable>
- Standard/specification: <reference if applicable>
- Research evidence: <reference if applicable>
- Historical lesson: <reference if applicable>

## Validation

<Observable or mechanical evidence when available.>

## Exceptions

<Authorized exception path or "none defined".>

## Related contracts

- <links>
```

The template is a guide, not a requirement to create empty headings. Contracts should contain only the sections needed to make authority and validation clear.

## Contract boundaries

Contracts SHOULD live near the domain they govern when domain-specific, for example:

```text
technical/contracts/
local-search/contracts/
social-media/contracts/
paid-media/contracts/
youtube/contracts/
```

This top-level directory owns cross-domain contract conventions and contracts that genuinely span multiple SEObasic domains.

## Change control

A binding contract is not ordinary explanatory documentation. Materially changing a contract changes expected behavior and therefore requires deliberate review under repository [`governance/change-control.md`](../../../governance/change-control.md) when the change crosses an established invariant or authority boundary.

See [`AGENTS.md`](AGENTS.md) for automated contract work.
