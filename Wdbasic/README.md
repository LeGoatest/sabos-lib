# WDBASIC v2

> **Status:** Binding framework  
> **Canonical entry point:** `Wdbasic/README.md`  
> **Full framework contract:** [`docs/framework-contract.md`](docs/framework-contract.md)  
> **Framework version:** WDBASIC v2

WDBASIC is SABOS Lib's framework-independent web architecture, experience, content-strategy, and implementation-contract knowledge system.

The hardened WDBASIC model separates **non-compensatory core invariants**, **diagnostic experience evaluation**, **intent-dependent content strategies**, and **technology-specific profiles**.

## Hardened structure

```text
WDBASIC
│
├── Core invariants
│   ├── semantics
│   ├── accessibility
│   ├── security/privacy
│   ├── truthful content
│   ├── HTTP/URL integrity
│   ├── resilience
│   └── measurable evidence
│
├── Experience evaluation
│   ├── discoverability
│   ├── intent alignment
│   ├── usability
│   ├── trust
│   ├── conversion
│   └── performance
│
├── Content strategies
│   ├── PAS when applicable
│   ├── comparison
│   ├── informational
│   ├── transactional
│   └── other intent models
│
└── Technology profiles
    ├── HTMX / hypermedia
    ├── SSR
    ├── static
    ├── JS application
    ├── Tailwind / TCbasic
    └── hybrid/native
```

## Repository structure

```text
Wdbasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
└── docs/
    ├── README.md
    ├── AGENTS.md
    ├── core-invariants.md
    ├── experience-evaluation.md
    ├── framework-contract.md
    ├── architecture_rules.md
    ├── STANDARDS.md
    ├── engineering-validation.md
    ├── cognitive-accessibility.md
    ├── internationalization.md
    ├── media-accessibility.md
    ├── non-web-accessibility.md
    ├── security-and-privacy.md
    ├── sustainability.md
    ├── content-strategies/
    ├── technology-profiles/
    ├── forms/
    ├── compliance/
    ├── authoring/
    ├── profiles/
    ├── tokens/
    ├── components/
    ├── positions/
    └── glossaries/
```

## Authority and reading order

For governed implementation/review work, apply:

1. [`docs/core-invariants.md`](docs/core-invariants.md)
2. [`docs/architecture_rules.md`](docs/architecture_rules.md)
3. [`docs/framework-contract.md`](docs/framework-contract.md)
4. [`docs/STANDARDS.md`](docs/STANDARDS.md)
5. Applicable cross-cutting and subject contracts
6. Applicable content strategy and technology profile
7. Token/component contracts and active design profile
8. Product-specific requirements and evidence
9. Explicit, owned, time-bounded exceptions

Automated work also follows [`AGENTS.md`](AGENTS.md), [`docs/AGENTS.md`](docs/AGENTS.md), and the nearest local `AGENTS.md`.

A lower-level document may specialize but may not silently weaken core invariants, external standards, security/privacy, truthful-content, accessibility, HTTP integrity, or evidence requirements.

## Core domains

| Domain | Start here |
| --- | --- |
| Core invariants | [`docs/core-invariants.md`](docs/core-invariants.md) |
| Experience evaluation | [`docs/experience-evaluation.md`](docs/experience-evaluation.md) |
| Content strategies | [`docs/content-strategies/README.md`](docs/content-strategies/README.md) |
| Technology profiles | [`docs/technology-profiles/README.md`](docs/technology-profiles/README.md) |
| Full WDBASIC v2 contract | [`docs/framework-contract.md`](docs/framework-contract.md) |
| Architecture | [`docs/architecture_rules.md`](docs/architecture_rules.md) |
| Standards | [`docs/STANDARDS.md`](docs/STANDARDS.md) |
| Engineering validation | [`docs/engineering-validation.md`](docs/engineering-validation.md) |
| Forms | [`docs/forms/README.md`](docs/forms/README.md) |
| Security/privacy | [`docs/security-and-privacy.md`](docs/security-and-privacy.md) |
| Accessibility evidence/compliance | [`docs/compliance/`](docs/compliance/) |
| Practitioner positions | [`docs/positions/README.md`](docs/positions/README.md) |

## Important boundaries

- **Core invariants are non-compensatory.** Accessibility, security, privacy, truthfulness, HTTP integrity, and required evidence cannot be offset by a high experience score.
- **WDBASIC conformance is not WCAG conformance.** External standards retain their own scopes and claim rules.
- **WDBASIC core is technology-neutral.** HTMX, SSR, static generation, JavaScript applications, Tailwind/TCbasic, and hybrid/native behavior are governed by profiles.
- **PAS is conditional.** It is one content strategy, not a mandatory page architecture.
- **Relevance precedes or accompanies persuasion.** Valid pages may begin with a problem, solution, answer, offer, or comparison criteria depending on user intent.
- Client-side validation improves usability but is not a security boundary.
- Native semantics are preferred over unnecessary ARIA.
- Practitioner positions and heuristics are distinct from external standards and binding contracts.

## Hardening history

The 2026-08-14 adversarial audit corrected earlier over-prescription around HTMX, no-JavaScript SEO claims, universal PAS ordering, additive quality scoring, accessibility weighting, and threat/efficacy formulas.

See [`docs/positions/adversarial-audit-2026-08-14.md`](docs/positions/adversarial-audit-2026-08-14.md).
