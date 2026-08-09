# SABOS Lib

A governed library of reusable knowledge systems, implementation contracts, practitioner positions, standards, research, glossaries, examples, and agent guidance for web architecture, semantic styling, search and digital marketing, documentation quality, and regression-resistant development.

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](LICENSE)

`sabos-lib` is the umbrella repository. It is **not** a Tailwind-only project and it is **not** synonymous with TCBasic.

The repository currently contains four complementary `*basic` systems plus a repository-wide governance layer. Each system owns a distinct subject area while sharing a common approach to accumulated practitioner knowledge, explicit positions and acknowledged bias, contracts, standards, research, references, examples, glossaries, validation evidence, and agent-assisted change control.

## What lives here

| Area | Purpose | Status | Start here |
| --- | --- | --- | --- |
| **WDBASIC** | Framework-independent web architecture, accessibility, security, validation, semantics, forms, progressive enhancement, implementation contracts, standards evidence, profiles, and glossaries. | WDBASIC v2 — binding | [`Wdbasic/README.md`](Wdbasic/README.md) |
| **TCBasic** | Executable Tailwind CSS v4 semantic-layer package plus build, token, component, integration, compliance, profile, glossary, test, source/generated-output, and package-contract knowledge. | Active package and governance system | [`TCbasic/README.md`](TCbasic/README.md) |
| **SEObasic** | Websites, technical SEO, content, entities/internal linking, local search/GBP/maps, organic social, paid media/PPC, YouTube, measurement/analytics, research, standards, contracts, references, examples, and glossaries. | Evolving knowledge framework | [`SEObasic/README.md`](SEObasic/README.md) |
| **READMEbasic** | README/documentation knowledge covering evidence-backed structure, profiles, contracts, agent guidance, templates, research, standards, references, examples, resources, changelogs, and glossaries. | Evolving knowledge framework | [`READMEbasic/README.md`](READMEbasic/README.md) |
| **Governance** | Repository-wide authority, invariants, knowledge-system structure, change control, validation, and anti-regression rules for agent-assisted work. | Binding | [`governance/README.md`](governance/README.md) |

## How the systems fit together

```text
SABOS Lib
│
├── governance   → authority, invariants, change control, validation
│
├── WDBASIC      → web architecture and implementation contracts
├── TCBasic      → Tailwind CSS v4 implementation/package knowledge
├── SEObasic     → search, discovery, marketing, channels and measurement
└── READMEbasic  → README/documentation knowledge and contracts
```

The systems are complementary rather than interchangeable.

- **WDBASIC** governs how web implementations should behave across architecture, accessibility, security, forms, semantics, progressive enhancement, and related concerns.
- **TCBasic** is an executable Tailwind CSS package and its supporting package knowledge. Its npm package name remains `tailwindcss-semantic-layer`.
- **SEObasic** governs discovery, content, local search, social, paid media, YouTube, measurement semantics, and related search/marketing knowledge.
- **READMEbasic** governs how project entrypoint documentation is structured, evidenced, maintained, and adapted to different repository/audience profiles.
- **Governance** defines how these knowledge systems may evolve without silent contract drift or regression.

## Start with the system you need

| Goal | Start here |
| --- | --- |
| Design or review a web implementation | [`Wdbasic/README.md`](Wdbasic/README.md) |
| Use or develop the Tailwind semantic package | [`TCbasic/README.md`](TCbasic/README.md) |
| Work on SEO, local search, content, PPC, social, YouTube, or measurement | [`SEObasic/README.md`](SEObasic/README.md) |
| Create or improve repository README documentation | [`READMEbasic/README.md`](READMEbasic/README.md) |
| Understand agent/change-control rules | [`AGENTS.md`](AGENTS.md) and [`governance/README.md`](governance/README.md) |
| Understand how knowledge types and contracts are organized | [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md) |

## Knowledge-system model

The repository treats each `*basic` directory as an evolving body of professional knowledge rather than a flat checklist.

```text
practitioner experience + historical lessons
                +
industry practice + platform/vendor guidance
                +
formal standards + research evidence
                ↓
       documented understanding
                ↓
     explicit practitioner positions
                ↓
          binding contracts
                ↓
 implementation / campaign / documentation practice
                ↓
 measurement + validation + new evidence
```

Important distinctions are intentional:

- Practitioner experience is not automatically a standard.
- A practitioner position may deliberately diverge from common industry practice.
- Research informs decisions but does not automatically become a contract.
- Platform/vendor guidance is authoritative only within its actual platform scope.
- Examples illustrate behavior but do not become authority merely because they exist.
- Contracts are adopted obligations used where silent reinterpretation or drift would be harmful.
- Glossaries clarify terminology without independently creating requirements.

The binding structural model is [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md).

## Shared repository principles

Across the systems, SABOS Lib aims to:

- Preserve accumulated practitioner knowledge and explicit project positions/bias.
- Distinguish contracts from research, standards, examples, platform guidance, and historical references.
- Keep subject terminology and disambiguation in glossaries.
- Define measurement semantics before interpreting or comparing metrics.
- Use local `AGENTS.md` files at real authority, evidence, source-of-truth, or mutation boundaries.
- Maintain `CHANGELOG.md` at the scope where notable changes occur.
- Turn stable, repeatable obligations into documented contracts when silent drift would be harmful.
- Prefer evidence-backed changes over agent preference or speculative cleanup.

## TCBasic package quick start

TCBasic is the executable package currently contained in this repository. Repository identity and package identity are separate: the repository is `sabos-lib`, while the package remains `tailwindcss-semantic-layer`.

```sh
git clone https://github.com/LeGoatest/sabos-lib.git
cd sabos-lib/TCbasic
npm install
npm run check
```

`npm run check` runs the TCBasic test suite and build. The package requires Node.js 20 or newer and Tailwind CSS 4.x according to [`TCbasic/package.json`](TCbasic/package.json).

For package installation, source imports, prebuilt distribution usage, build adapters, customization, migration, and release guidance, see [`TCbasic/README.md`](TCbasic/README.md).

## Agent-assisted changes

[`AGENTS.md`](AGENTS.md) is the compact repository entrypoint for coding agents and automated tools. Detailed governance lives under [`governance/`](governance/README.md), with more specific `AGENTS.md` files inside subject systems and their governed subdomains.

The governing doctrine is:

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

Unrequested architecture changes, broad refactors, framework/build replacements, public-contract changes, canonical-definition changes, and similar governed mutations require the change-control process defined in [`governance/change-control.md`](governance/change-control.md).

## Documentation map

| Need | Canonical source |
| --- | --- |
| Repository change history | [`CHANGELOG.md`](CHANGELOG.md) |
| Repository agent entrypoint | [`AGENTS.md`](AGENTS.md) |
| Repository governance | [`governance/README.md`](governance/README.md) |
| Knowledge-system structural model | [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md) |
| Web design/implementation governance | [`Wdbasic/README.md`](Wdbasic/README.md) |
| WDBASIC engineering validation | [`Wdbasic/engineering-validation.md`](Wdbasic/engineering-validation.md) |
| Tailwind semantic package | [`TCbasic/README.md`](TCbasic/README.md) |
| Tailwind architecture rules | [`TCbasic/architecture_rules.md`](TCbasic/architecture_rules.md) |
| Search/discovery/marketing knowledge | [`SEObasic/README.md`](SEObasic/README.md) |
| T.E.S.T.I.N.G. philosophy | [`SEObasic/content/testing-philosophy.md`](SEObasic/content/testing-philosophy.md) |
| SEObasic contracts | [`SEObasic/contracts/README.md`](SEObasic/contracts/README.md) |
| SEObasic measurement/analytics | [`SEObasic/measurement/README.md`](SEObasic/measurement/README.md) |
| Metric semantics contract | [`SEObasic/measurement/contracts/metric-semantics.md`](SEObasic/measurement/contracts/metric-semantics.md) |
| Local search / GBP / maps | [`SEObasic/local-search/README.md`](SEObasic/local-search/README.md) |
| Paid media / PPC | [`SEObasic/paid-media/README.md`](SEObasic/paid-media/README.md) |
| Organic social media | [`SEObasic/social-media/README.md`](SEObasic/social-media/README.md) |
| YouTube | [`SEObasic/youtube/README.md`](SEObasic/youtube/README.md) |
| README framework and template | [`READMEbasic/README.md`](READMEbasic/README.md) |
| README profiles | [`READMEbasic/profiles/README.md`](READMEbasic/profiles/README.md) |
| README contracts | [`READMEbasic/contracts/README.md`](READMEbasic/contracts/README.md) |
| README research | [`READMEbasic/research/README.md`](READMEbasic/research/README.md) |
| README standards/platform guidance | [`READMEbasic/standards/README.md`](READMEbasic/standards/README.md) |
| README references/examples | [`READMEbasic/references/README.md`](READMEbasic/references/README.md), [`READMEbasic/examples/README.md`](READMEbasic/examples/README.md) |
| README resources and badge references | [`READMEbasic/resources.md`](READMEbasic/resources.md) |

## Contributing and evolution

Each system owns its local authority and changelog. Read the nearest `AGENTS.md`, README, contracts, positions, standards, and evidence sources applicable to the change.

For TCBasic package development, follow [`TCbasic/CONTRIBUTING.md`](TCbasic/CONTRIBUTING.md), [`TCbasic/AGENTS.md`](TCbasic/AGENTS.md), and the package's architecture/standards contracts.

Changes to WDBASIC, SEObasic, READMEbasic, TCBasic, or repository governance must preserve the root governance invariants. If a change intentionally redefines an established contract, follow [`governance/change-control.md`](governance/change-control.md) rather than silently rewriting the contract around the implementation.

Notable changes are recorded in the nearest subsystem `CHANGELOG.md`; cross-subsystem or repository-wide changes are also recorded in the root [`CHANGELOG.md`](CHANGELOG.md).

## License

This repository is licensed under **GPL-3.0-only**. See [`LICENSE`](LICENSE).
