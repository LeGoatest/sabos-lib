# WDBASIC Documentation

> **Status:** Canonical WDBASIC knowledge index  
> **Framework root:** [`../README.md`](../README.md)  
> **Agent instructions:** [`AGENTS.md`](AGENTS.md)

The `docs/` filesystem mirrors WDBASIC's four-domain model.

```text
docs/
├── README.md
├── AGENTS.md
├── core-invariants/
│   ├── semantics/
│   ├── accessibility/
│   ├── security-privacy/
│   ├── truthful-content/
│   ├── http-url-integrity/
│   ├── resilience/
│   └── measurable-evidence/
├── experience-evaluation/
│   ├── discoverability.md
│   ├── intent-alignment.md
│   ├── usability.md
│   ├── trust.md
│   ├── conversion.md
│   └── performance.md
├── content-strategies/
│   ├── pas.md
│   ├── comparison.md
│   ├── informational.md
│   ├── transactional.md
│   └── other-intent-models.md
└── technology-profiles/
    ├── htmx-hypermedia.md
    ├── ssr.md
    ├── static.md
    ├── js-application.md
    ├── tailwind-tcbasic.md
    └── hybrid-native.md
```

## Domain responsibilities

| Domain | Question it answers |
|---|---|
| [`core-invariants/`](core-invariants/README.md) | What must remain true regardless of implementation technology or marketing strategy? |
| [`experience-evaluation/`](experience-evaluation/README.md) | How well does the resulting experience work? |
| [`content-strategies/`](content-strategies/README.md) | Which communication structure fits the user's intent and decision stage? |
| [`technology-profiles/`](technology-profiles/README.md) | How are the invariants implemented with this architecture or technology? |

Historical research, practitioner positions, standards records, glossaries, validation governance, and unresolved findings live under [`core-invariants/measurable-evidence/`](core-invariants/measurable-evidence/README.md) because they control what WDBASIC may legitimately claim or treat as proven.

## Governance rule

Do not create miscellaneous top-level documentation domains. Route new knowledge into one of the four domains and use the nearest local `AGENTS.md` as the maintenance boundary.
