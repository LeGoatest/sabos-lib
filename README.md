# Tailwind CSS Semantic Layer

A governed collection of reusable knowledge frameworks and tooling for semantic Tailwind CSS, accessible server-rendered web architecture, search/discovery/marketing practice, README quality, and regression-resistant agent-assisted development.

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](LICENSE)
[![Tailwind CSS v4](https://img.shields.io/badge/Tailwind_CSS-v4-06B6D4?logo=tailwindcss&logoColor=white)](TCbasic/README.md)

The repository contains four complementary `*basic` knowledge systems plus a repository-wide governance layer. The systems are intended to accumulate practitioner experience, explicit positions and acknowledged bias, contracts, standards, research, examples, glossaries, measurement semantics, and implementation knowledge over time rather than remain flat checklists.

## What lives here

| Area | Purpose | Status | Start here |
| --- | --- | --- | --- |
| **TCBasic** | Executable Tailwind CSS v4 semantic-layer package plus build, token, component, integration, compliance, profile, glossary, test, source/generated-output, and contract knowledge. | Active package and governance system | [`TCbasic/README.md`](TCbasic/README.md) |
| **WDBASIC** | Framework-independent web architecture, accessibility, security, validation, semantics, forms, performance, distributed implementation contracts, standards evidence, profiles, and glossaries. | WDBASIC v2 — binding | [`Wdbasic/README.md`](Wdbasic/README.md) |
| **SEObasic** | Websites, technical SEO, content, entities/internal linking, local search/GBP/maps, organic social, paid media/PPC, YouTube, measurement/analytics, research, standards, contracts, references, examples, and glossaries. | Evolving knowledge framework | [`SEObasic/README.md`](SEObasic/README.md) |
| **READMEbasic** | README/documentation knowledge framework covering evidence-backed structure, profiles, contracts, agent guidance, templates, research, standards, references, examples, resources, changelogs, and glossaries. | Evolving framework | [`READMEbasic/README.md`](READMEbasic/README.md) |
| **Governance** | Repository-wide authority, invariants, knowledge-system structure, change control, validation, and anti-regression rules for agent-assisted work. | Binding | [`governance/README.md`](governance/README.md) |

## How the pieces fit

```text
repository governance
        │
        ├── WDBASIC     → web architecture and implementation contracts
        ├── TCBasic     → Tailwind CSS v4 implementation and package knowledge
        ├── SEObasic    → search, discovery, content, channels and measurement knowledge
        └── READMEbasic → README/documentation knowledge and contracts
```

Each system owns a distinct subject area while sharing the same repository principles:

- **Preserve practitioner knowledge and explicit project positions/bias.**
- **Distinguish contracts from research, standards, examples, platform guidance, and historical references.**
- **Keep subject terminology in glossaries.**
- **Define metric semantics before interpreting or comparing measurements.**
- **Use local `AGENTS.md` files at real authority/evidence/source-of-truth boundaries.**
- **Maintain `CHANGELOG.md` at the scope where notable changes occur.**
- **Turn stable, repeatable obligations into documented contracts when silent drift would be harmful.**

The binding structural model for these knowledge systems is [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md).

## TCBasic quick start

TCBasic is the executable package in this repository. Package commands run from `TCbasic/`.

```sh
git clone https://github.com/LeGoatest/tailwindcss-semantic-layer.git
cd tailwindcss-semantic-layer/TCbasic
npm install
npm run check
```

`npm run check` runs the TCBasic test suite and build. The package requires Node.js 20 or newer and Tailwind CSS 4.x according to [`TCbasic/package.json`](TCbasic/package.json).

For package installation, source imports, prebuilt distribution usage, build adapters, customization, and migration guidance, see [`TCbasic/README.md`](TCbasic/README.md).

## Knowledge and contract model

Across the frameworks, the repository separates several kinds of knowledge:

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

Not every lesson becomes a contract. Contracts are used when an adopted rule is stable enough that implementations or agents should not reinterpret it each time.

Research does not automatically become law; examples do not become authority by existence; common industry practice does not automatically override an explicit practitioner position.

## Agent-assisted changes

[`AGENTS.md`](AGENTS.md) is the compact repository entrypoint for coding agents and automated tools. Detailed governance lives under [`governance/`](governance/README.md), with more specific `AGENTS.md` files inside subject systems and their governed subdomains.

The governing doctrine is:

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

Unrequested architecture changes, broad refactors, framework/build replacements, public-contract changes, canonical-definition changes, and similar governed mutations require the change-control process defined in [`governance/change-control.md`](governance/change-control.md).

## Documentation map

| Need | Canonical source |
| --- | --- |
| Repository change history | [`CHANGELOG.md`](CHANGELOG.md) |
| Knowledge-system structural model | [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md) |
| Tailwind semantic package | [`TCbasic/README.md`](TCbasic/README.md) |
| Tailwind architecture rules | [`TCbasic/architecture_rules.md`](TCbasic/architecture_rules.md) |
| Web design/implementation governance | [`Wdbasic/README.md`](Wdbasic/README.md) |
| WDBASIC engineering validation | [`Wdbasic/engineering-validation.md`](Wdbasic/engineering-validation.md) |
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
| README best-practice synthesis | [`READMEbasic/best-practices.md`](READMEbasic/best-practices.md) |
| README resources and badge references | [`READMEbasic/resources.md`](READMEbasic/resources.md) |
| Agent governance | [`AGENTS.md`](AGENTS.md) |
| Repository governance | [`governance/README.md`](governance/README.md) |

## Contributing and development

For TCBasic package changes, follow [`TCbasic/CONTRIBUTING.md`](TCbasic/CONTRIBUTING.md), [`TCbasic/AGENTS.md`](TCbasic/AGENTS.md), and the package's architecture/standards contracts.

Changes to WDBASIC, SEObasic, READMEbasic, or repository governance must preserve the root governance invariants. If a change intentionally redefines an established contract, follow [`governance/change-control.md`](governance/change-control.md) rather than silently rewriting the contract around the implementation.

Notable changes are recorded in the nearest subsystem `CHANGELOG.md`; cross-subsystem or repository-wide changes are also recorded in the root [`CHANGELOG.md`](CHANGELOG.md).

## License

This repository is licensed under **GPL-3.0-only**. See [`LICENSE`](LICENSE).
