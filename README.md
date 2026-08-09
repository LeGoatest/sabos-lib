# Tailwind CSS Semantic Layer

A governed collection of reusable standards and tooling for semantic Tailwind CSS, accessible server-rendered web architecture, search/content visibility, README quality, and regression-resistant agent-assisted development.

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](LICENSE)
[![Tailwind CSS v4](https://img.shields.io/badge/Tailwind_CSS-v4-06B6D4?logo=tailwindcss&logoColor=white)](TCbasic/README.md)

The repository contains four complementary systems plus a repository-wide governance layer. Each system owns a distinct responsibility so projects can adopt the parts they need without collapsing implementation, accessibility, SEO, documentation, and agent governance into one monolithic framework.

## What lives here

| Area | Purpose | Status | Start here |
| --- | --- | --- | --- |
| **TCBasic** | Executable Tailwind CSS v4 semantic-layer package, tokens, components, build adapters, examples, and tests. | Active package and governance system | [`TCbasic/README.md`](TCbasic/README.md) |
| **WDBASIC** | Framework-independent architecture, accessibility, security, validation, semantics, forms, performance, and implementation contracts. | WDBASIC v2 — binding | [`Wdbasic/README.md`](Wdbasic/README.md) |
| **SEObasic** | Search visibility, content strategy, structured data, internal linking, entity relationships, and the T.E.S.T.I.N.G. content philosophy. | Initial framework | [`SEObasic/README.md`](SEObasic/README.md) |
| **READMEbasic** | Evidence-based README structure, maintenance rules, reusable template, and agent instructions for documentation quality. | Initial framework | [`READMEbasic/README.md`](READMEbasic/README.md) |
| **Governance** | Repository-wide authority, invariants, change control, validation, and anti-regression rules for agent-assisted work. | Binding | [`governance/README.md`](governance/README.md) |

## How the pieces fit

```text
repository governance
        │
        ├── WDBASIC     → web architecture and implementation contracts
        ├── TCBasic     → Tailwind CSS v4 implementation layer
        ├── SEObasic    → search and content-discovery layer
        └── READMEbasic → README/documentation entrypoint standards
```

The systems are complementary rather than interchangeable:

- **WDBASIC** defines how web implementations should behave and what evidence they should preserve.
- **TCBasic** implements a reusable semantic styling architecture for Tailwind CSS v4.
- **SEObasic** specializes search visibility and content discovery without replacing WDBASIC's architecture/accessibility rules.
- **READMEbasic** defines how project entrypoint documentation should orient readers without duplicating the entire documentation set.
- **Governance** controls how agents and automated tooling may change any of the above without silently introducing architectural drift or regression.

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

## Core design direction

Across the repository, the recurring design goals are:

- Semantic native HTML and readable templates.
- Server-rendered primary content and progressive enhancement.
- Tailwind CSS v4 with reusable semantic classes rather than repeated utility piles.
- Accessibility, security, validation, and user agency as implementation contracts rather than optional polish.
- Search metadata and structured data that match visible, truthful content.
- Documentation that is concise at the entrypoint and routes depth to canonical sources.
- Small, evidence-backed changes that preserve established behavior and prevent silent refactoring drift.

## Agent-assisted changes

[`AGENTS.md`](AGENTS.md) is the compact repository entrypoint for coding agents and automated tools. Detailed governance lives under [`governance/`](governance/README.md).

The governing doctrine is:

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

Unrequested architecture changes, broad refactors, framework/build replacements, public-contract changes, and similar governed mutations require the change-control process defined in [`governance/change-control.md`](governance/change-control.md).

## Documentation map

| Need | Canonical source |
| --- | --- |
| Repository change history | [`CHANGELOG.md`](CHANGELOG.md) |
| Tailwind semantic package | [`TCbasic/README.md`](TCbasic/README.md) |
| Tailwind architecture rules | [`TCbasic/architecture_rules.md`](TCbasic/architecture_rules.md) |
| Web design/implementation governance | [`Wdbasic/README.md`](Wdbasic/README.md) |
| WDBASIC engineering validation | [`Wdbasic/engineering-validation.md`](Wdbasic/engineering-validation.md) |
| SEO/content discovery | [`SEObasic/README.md`](SEObasic/README.md) |
| T.E.S.T.I.N.G. philosophy | [`SEObasic/testing-philosophy.md`](SEObasic/testing-philosophy.md) |
| README framework and template | [`READMEbasic/README.md`](READMEbasic/README.md) |
| README best practices/research | [`READMEbasic/best-practices.md`](READMEbasic/best-practices.md) |
| README resources and badge references | [`READMEbasic/resources.md`](READMEbasic/resources.md) |
| Agent governance | [`AGENTS.md`](AGENTS.md) |
| Repository governance | [`governance/README.md`](governance/README.md) |

## Contributing and development

For TCBasic package changes, follow [`TCbasic/CONTRIBUTING.md`](TCbasic/CONTRIBUTING.md), [`TCbasic/AGENTS.md`](TCbasic/AGENTS.md), and the package's architecture/standards contracts.

Changes to WDBASIC, SEObasic, READMEbasic, or repository governance must preserve the root governance invariants. If a change intentionally redefines an established contract, follow [`governance/change-control.md`](governance/change-control.md) rather than silently rewriting the contract around the implementation.

Notable changes are recorded in the nearest subsystem `CHANGELOG.md`; cross-subsystem or repository-wide changes are also recorded in the root [`CHANGELOG.md`](CHANGELOG.md).

## License

This repository is licensed under **GPL-3.0-only**. See [`LICENSE`](LICENSE).
