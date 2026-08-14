# WDBASIC Documentation

> **Status:** Canonical WDBASIC knowledge index  
> **Framework root:** [`../README.md`](../README.md)  
> **Agent instructions:** [`AGENTS.md`](AGENTS.md)

`Wdbasic/docs/` contains WDBASIC's governed invariants, architecture, standards, accessibility, forms, security/privacy, validation, authoring, compliance, experience evaluation, content strategies, technology profiles, design profiles, tokens, components, positions, and terminology.

## Hardened knowledge model

```text
WDBASIC
├── Core invariants
├── Experience evaluation
├── Content strategies
└── Technology profiles
```

The four-layer model separates universal WDBASIC outcomes from diagnostic evaluation, persuasion/content choices, and implementation technology.

## Knowledge domains

- `core-invariants.md` — highest-level non-compensatory WDBASIC invariants.
- `architecture_rules.md` — binding architecture/state/request-response rules beneath the invariant layer.
- `framework-contract.md` — full WDBASIC governance and design contract.
- `experience-evaluation.md` — gate-first diagnostic evaluation for discoverability, intent alignment, usability, trust, conversion, and performance.
- `content-strategies/` — applicability-controlled PAS, comparison, informational, transactional, and other intent models.
- `technology-profiles/` — HTMX/hypermedia, SSR, static, JS application, Tailwind/TCbasic, and hybrid/native profiles.
- `STANDARDS.md` — standards and applicability registry.
- `engineering-validation.md` — WDBASIC engineering-validation philosophy.
- `cognitive-accessibility.md`, `internationalization.md`, `media-accessibility.md`, `non-web-accessibility.md` — cross-cutting accessibility/content concerns.
- `security-and-privacy.md` — security/privacy contract surface.
- `sustainability.md` — sustainability guidance.
- `forms/` — form lifecycle, validation, and security contracts.
- `compliance/` — accessibility evidence, testing methodology, matrices, statements, and reusable evidence templates.
- `authoring/` — authoring-tool and accessible-output guidance.
- `profiles/` — product/design/adoption profiles distinct from technology profiles.
- `tokens/` — semantic token contracts.
- `components/` — reusable component contracts.
- `positions/` — deliberate practitioner positions and dated research/audit records.
- `glossaries/` — terminology and disambiguation.

## Authority

Apply WDBASIC authority in this order:

1. [`core-invariants.md`](core-invariants.md)
2. [`architecture_rules.md`](architecture_rules.md)
3. [`framework-contract.md`](framework-contract.md)
4. [`STANDARDS.md`](STANDARDS.md)
5. Applicable cross-cutting/subject contracts
6. Applicable content strategy and technology profile
7. Token/component contracts and active design profile
8. Product-specific requirements/evidence
9. Explicit owned exceptions

External standards retain their own conformance language. A WDBASIC preference or exception cannot turn an external failure into a pass.

## Research hardening

The 2026-08-14 adversarial audit is preserved at [`positions/adversarial-audit-2026-08-14.md`](positions/adversarial-audit-2026-08-14.md). It records the reasons WDBASIC moved away from universal HTMX/Tailwind/PAS prescriptions and the compensatory 100-point model.
