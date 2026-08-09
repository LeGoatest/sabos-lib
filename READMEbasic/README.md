# READMEbasic

> **Status:** Evolving knowledge framework  
> **Canonical entry point:** `READMEbasic/README.md`  
> **Knowledge index:** [`docs/README.md`](docs/README.md)

READMEbasic is SABOS Lib's evidence-based knowledge framework for creating README files that are accurate, scannable, useful, maintainable, and grounded in what a project can actually prove.

A README is the project's **front door**, not a copy of the entire documentation set.

## Reader questions

A strong README should help its intended reader answer, in roughly this order:

1. **What is this?**
2. **Why would I use or care about it?**
3. **What is its current status?**
4. **How do I get started?**
5. **Where do I go for deeper documentation, contribution rules, support, governance, or change history?**

## Structure

```text
READMEbasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
│
├── docs/
│   ├── README.md
│   ├── AGENTS.md
│   ├── best-practices.md
│   ├── resources.md
│   ├── contracts/
│   ├── positions/
│   ├── profiles/
│   ├── research/
│   ├── standards/
│   ├── references/
│   └── glossaries/
│
├── templates/
│   ├── README.md
│   ├── AGENTS.md
│   └── README-template.md
│
└── examples/
```

The separation is intentional:

- **`docs/`** contains accumulated README knowledge and authority.
- **`templates/`** contains reusable starting artifacts.
- **`examples/`** contains illustrative/comparative artifacts.

A template or example does not become a contract merely because it is reusable or popular.

## Knowledge model

```text
practitioner experience + real README examples
             +
platform guidance + standards + research
             ↓
       documented understanding
             ↓
     explicit practitioner positions
             ↓
        README contracts
             ↓
audience/profile-specific README structure
             ↓
 verification + maintenance
```

READMEbasic favors progressive disclosure: orient the reader quickly, then route depth to canonical documentation.

## Canonical domains

| Subject | Start here |
| --- | --- |
| Knowledge index | [`docs/README.md`](docs/README.md) |
| Binding contracts | [`docs/contracts/README.md`](docs/contracts/README.md) |
| README Integrity Contract | [`docs/contracts/readme-integrity.md`](docs/contracts/readme-integrity.md) |
| Practitioner positions | [`docs/positions/README.md`](docs/positions/README.md) |
| README profiles | [`docs/profiles/README.md`](docs/profiles/README.md) |
| Research | [`docs/research/README.md`](docs/research/README.md) |
| Standards/platform guidance | [`docs/standards/README.md`](docs/standards/README.md) |
| Historical/comparative references | [`docs/references/README.md`](docs/references/README.md) |
| Terminology | [`docs/glossaries/README.md`](docs/glossaries/README.md) |
| Best-practice synthesis | [`docs/best-practices.md`](docs/best-practices.md) |
| Resource catalog | [`docs/resources.md`](docs/resources.md) |
| Reusable template | [`templates/README-template.md`](templates/README-template.md) |
| Examples | [`examples/README.md`](examples/README.md) |

## Binding integrity rule

The [`README Integrity Contract`](docs/contracts/readme-integrity.md) governs material README claims.

Do not invent or assume unsupported:

- commands;
- package/application names;
- versions;
- ports;
- configuration paths;
- features;
- release status;
- CI state;
- security properties;
- compatibility;
- maintainers/contact information.

If the evidence is unavailable, omit the claim or state the limitation accurately.

## Core principles

READMEbasic currently favors:

- **Audience before structure.** Choose sections based on who the README serves.
- **High-value first screen.** Lead with identity, purpose/value, material status, and useful next steps.
- **Evidence over plausible prose.** README facts are user-facing obligations.
- **Reproducible first success.** Getting started should lead to a real successful outcome when the project has one.
- **Show, then explain.** Use realistic examples where they communicate faster than feature prose.
- **Orientation over duplication.** Link deep architecture, API, governance, contribution, and changelog material to canonical sources.
- **Relative repository navigation.** Prefer repository-relative links for local material.
- **Headings before manual TOCs.** Add a hand-maintained table of contents only when it materially improves navigation.
- **High-signal badges only.** Badges communicate verified state, not decoration.
- **Maturity and limitations stated plainly.** Do not hide adoption-relevant caveats.
- **Current state separate from history.** README describes now; changelog describes notable evolution.

## README profiles

README structure changes with audience and repository type. Common profiles include:

- application;
- library/package;
- multi-system repository/monorepo;
- documentation/governance repository;
- subsystem/component.

Use [`docs/profiles/`](docs/profiles/README.md) rather than forcing one universal template structure.

## Template rule

[`templates/README-template.md`](templates/README-template.md) is a menu and starting artifact, not a mandatory checklist.

Remove sections that do not serve the project. Replace placeholders only with verified local facts. Do not let template debris create fictional capabilities or support claims.

## Relationship to repository governance

README work remains subject to the repository root [`AGENTS.md`](../AGENTS.md), [`governance/`](../governance/README.md), and the shared [`Knowledge System Model`](../governance/knowledge-system-model.md).

READMEbasic specializes documentation behavior. It does not authorize agents to change implementation, architecture, package contracts, release state, or canonical terminology merely to make prose easier to write.

If README work exposes a real inconsistency, report or resolve it through the owning authority rather than silently rewriting reality.

## Governing maxim

> **Orient quickly. Prove every claim. Get the reader to first success. Route depth to the canonical source.**
