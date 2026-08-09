# Tailwind CSS Semantic Layer

This repository contains three independently organized systems plus a repository-wide governance layer.

## Repository governance

[`AGENTS.md`](AGENTS.md) is the compact agent entrypoint. Detailed authority, invariants, change control, validation, and the research basis live under [`governance/`](governance/README.md).

The governing doctrine is:

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

## TCBasic

[`TCbasic/`](TCbasic/README.md) is the complete Tailwind CSS v4 semantic-layer package and documentation root.

```text
TCbasic/
├── src/
├── dist/
├── tests/
├── examples/
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── TAILWIND_PATTERN.md
├── architecture.md
├── components.md
├── customization.md
├── migration-guide.md
├── naming-conventions.md
├── .editorconfig
├── .gitignore
├── LICENSE
├── package.json
└── postcss.config.mjs
```

Run package commands from `TCbasic/`.

## WDBASIC

[`Wdbasic/`](Wdbasic/README.md) is the framework-independent web design, accessibility, security, validation, compliance, and implementation-contract system.

## SEObasic

[`SEObasic/`](SEObasic/README.md) is the search visibility, content strategy, structured-data, internal-linking, and entity-graph system.

It includes the T.E.S.T.I.N.G. content method, automatic JSON-LD guidance, breadcrumb structured data, and the entity-extraction/internal-linking roadmap.

## Repository license

GPL-3.0-only. See [`LICENSE`](LICENSE).
