# WDBASIC v2

> **Status:** Binding framework  
> **Canonical entry point:** `Wdbasic/README.md`  
> **Full framework contract:** [`docs/framework-contract.md`](docs/framework-contract.md)  
> **Framework version:** WDBASIC v2

WDBASIC is SABOS Lib's framework-independent web architecture and implementation-contract knowledge system. It governs architecture, semantics, accessibility, forms, validation, security, privacy, authoring, internationalization, media, responsive behavior, performance, truthful content, evidence, and related web implementation concerns.

The root is intentionally concise. Binding detail and subject knowledge live under [`docs/`](docs/README.md).

## Structure

```text
Wdbasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
└── docs/
    ├── README.md
    ├── AGENTS.md
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

1. [`docs/architecture_rules.md`](docs/architecture_rules.md)
2. [`docs/framework-contract.md`](docs/framework-contract.md)
3. [`docs/STANDARDS.md`](docs/STANDARDS.md)
4. Applicable cross-cutting and subject contracts under [`docs/`](docs/README.md)
5. Token/component contracts
6. Active profile
7. Product-specific requirements and evidence
8. Explicit, owned exceptions

Automated work also follows [`AGENTS.md`](AGENTS.md), [`docs/AGENTS.md`](docs/AGENTS.md), and the nearest local `AGENTS.md`.

A lower-level document may specialize but may not silently weaken architecture, accessibility, form security, validation integrity, security, privacy, truthful-content, semantic, progressive-enhancement, or evidence requirements.

## Core domains

| Domain | Start here |
| --- | --- |
| Full WDBASIC v2 contract | [`docs/framework-contract.md`](docs/framework-contract.md) |
| Architecture | [`docs/architecture_rules.md`](docs/architecture_rules.md) |
| Standards | [`docs/STANDARDS.md`](docs/STANDARDS.md) |
| Engineering validation | [`docs/engineering-validation.md`](docs/engineering-validation.md) |
| Forms | [`docs/forms/README.md`](docs/forms/README.md) |
| Security/privacy | [`docs/security-and-privacy.md`](docs/security-and-privacy.md) |
| Accessibility evidence/compliance | [`docs/compliance/`](docs/compliance/) |
| Authoring tools/output | [`docs/authoring/`](docs/authoring/) |
| Tokens | [`docs/tokens/`](docs/tokens/) |
| Components | [`docs/components/component-contracts.md`](docs/components/component-contracts.md) |
| Profiles | [`docs/profiles/`](docs/profiles/) |
| Practitioner positions | [`docs/positions/README.md`](docs/positions/README.md) |
| Terminology | [`docs/glossaries/README.md`](docs/glossaries/README.md) |

## Important boundaries

- **WDBASIC conformance is not WCAG conformance.** External standards retain their own scopes and claim rules.
- Client-side validation improves usability but is not a security boundary.
- Server-side authorization, validation, business rules, and persistence remain authoritative where applicable.
- Native semantics are preferred over unnecessary ARIA.
- Accessibility, security, privacy, sustainability, and maturity claims require evidence appropriate to their actual scope.
- Profiles may customize presentation/implementation choices but may not weaken core contracts.
- Practitioner positions are distinct from external standards and binding contracts.
- Glossaries explain terminology but do not override binding requirements.

## Documentation model

The previous large root contract was preserved as [`docs/framework-contract.md`](docs/framework-contract.md). Moving it under `docs/` is a structural change only; its substantive authority remains intact unless explicitly revised through governance.

See [`../governance/knowledge-system-model.md`](../governance/knowledge-system-model.md) for the shared SABOS Lib knowledge-system model.
