# SABOS Lib

A governed library of reusable knowledge systems, implementation contracts, practitioner positions, standards, research, references, glossaries, examples, and subject artifacts for web architecture, semantic Tailwind CSS, search/digital marketing, README quality, and regression-resistant agent-assisted work.

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](LICENSE)

`sabos-lib` is the umbrella repository. It is **not** a Tailwind package, application, or build repository.

The repository currently contains four complementary `*basic` systems plus repository-wide governance. Each system owns a distinct professional subject area while sharing one structural model for preserving knowledge without flattening its authority.

## What lives here

| Area | Purpose | Status | Start here |
| --- | --- | --- | --- |
| **WDBASIC** | Framework-independent web architecture, accessibility, security, forms, validation, semantics, progressive enhancement, evidence, profiles, tokens, and component contracts. | WDBASIC v2.1 — binding | [`Wdbasic/README.md`](Wdbasic/README.md) |
| **TCBasic** | Tailwind CSS v4 semantic architecture, contracts, practitioner positions, canonical reference CSS, and adoption examples. | Evolving knowledge framework | [`TCbasic/README.md`](TCbasic/README.md) |
| **SEObasic** | Websites, technical SEO, content, entities/internal linking, local search/GBP/Maps, social, paid media/PPC, YouTube, measurement/analytics, research, standards, contracts, references, and examples. | Evolving knowledge framework | [`SEObasic/README.md`](SEObasic/README.md) |
| **READMEbasic** | Evidence-backed README/documentation knowledge, integrity contracts, profiles, templates, research, standards, references, resources, and examples. | Evolving knowledge framework | [`READMEbasic/README.md`](READMEbasic/README.md) |
| **Governance** | Repository-wide authority, invariants, knowledge-system structure, change control, agent operations, validation, and anti-regression rules. | Binding | [`governance/README.md`](governance/README.md) |

## Shared system shape

The `*basic` systems now follow a common responsibility model where it improves clarity:

```text
<System>basic/
├── README.md        identity and human entrypoint
├── AGENTS.md        automated-work router
├── CHANGELOG.md     notable framework history
│
├── docs/            accumulated governed knowledge
│   ├── README.md
│   ├── AGENTS.md
│   └── <subject domains>/
│
├── examples/        illustrative artifacts, when useful
└── <subject artifact>
```

A subject artifact exists only when the subject genuinely has one. Current examples include:

- `TCbasic/src/` — canonical reference CSS;
- `READMEbasic/templates/` — reusable README starting artifacts;
- `examples/` — illustrative uses/cases where useful.

SEObasic may gain a `playbooks/` artifact layer when real reusable operational playbooks exist. WDBASIC may gain separate templates/examples when a meaningful artifact boundary warrants it. Empty symmetry is explicitly discouraged.

Repository governance itself remains under `governance/` without a redundant `governance/docs/` layer.

The binding structural model is [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md).

## How the systems fit together

```text
SABOS Lib
│
├── governance   → authority, invariants, knowledge model, change control
│   └── agent-operations/ → context, continuity, execution, verification
│
├── WDBASIC
│   └── docs/    → web architecture and implementation contracts
│
├── TCBasic
│   ├── docs/    → Tailwind semantic-architecture knowledge
│   ├── src/     → canonical reference CSS
│   └── examples/
│
├── SEObasic
│   ├── docs/    → search/discovery/marketing/measurement knowledge
│   └── examples/
│
└── READMEbasic
    ├── docs/    → README knowledge/contracts/evidence
    ├── templates/
    └── examples/
```

The systems are complementary rather than interchangeable.

- **WDBASIC** governs framework-independent web implementation behavior.
- **TCBasic** specializes semantic Tailwind CSS architecture and provides reference CSS without making SABOS Lib a package/build repository.
- **SEObasic** governs discovery, content, local search, channels, and measurement semantics.
- **READMEbasic** governs evidence-backed project entrypoint documentation.
- **Governance** defines how these bodies of knowledge evolve without silent contract drift and how agents recover context, preserve task state, execute within scope, and validate work.

## Knowledge model

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
 measurement + validation + outcomes
                ↓
         additional knowledge
```

Important distinctions are intentional:

- Practitioner experience is not automatically a standard.
- Practitioner positions may deliberately diverge from common industry practice.
- Research may inform or challenge a position without automatically becoming a contract.
- Platform/vendor guidance is authoritative only within its actual platform scope.
- Historical references preserve provenance rather than being rewritten to match current terminology.
- Examples illustrate; they do not legislate.
- Subject artifacts demonstrate or operationalize knowledge but do not automatically override contracts.
- Glossaries clarify language without independently creating requirements.

## Start with the system you need

| Goal | Start here |
| --- | --- |
| Design/review a web implementation | [`Wdbasic/README.md`](Wdbasic/README.md) |
| Work with semantic Tailwind architecture | [`TCbasic/README.md`](TCbasic/README.md) |
| Work on SEO, local search, content, PPC, social, YouTube, or measurement | [`SEObasic/README.md`](SEObasic/README.md) |
| Create or improve README documentation | [`READMEbasic/README.md`](READMEbasic/README.md) |
| Understand repository agent/change-control rules | [`AGENTS.md`](AGENTS.md), [`governance/README.md`](governance/README.md) |
| Apply practical agent context/task/execution controls | [`governance/agent-operations/README.md`](governance/agent-operations/README.md), [`governance/agent-operations/patterns/README.md`](governance/agent-operations/patterns/README.md) |
| Understand the structural/authority model | [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md) |

## High-value canonical paths

| Need | Canonical source |
| --- | --- |
| Repository change history | [`CHANGELOG.md`](CHANGELOG.md) |
| Repository agent entrypoint | [`AGENTS.md`](AGENTS.md) |
| Agent Operations governance | [`governance/agent-operations/README.md`](governance/agent-operations/README.md) |
| Agent execution/verification contract | [`governance/agent-operations/contracts/execution-verification.md`](governance/agent-operations/contracts/execution-verification.md) |
| Practical agent-operation patterns | [`governance/agent-operations/patterns/README.md`](governance/agent-operations/patterns/README.md) |
| Knowledge-system structural model | [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md) |
| WDBASIC framework/core contract | [`Wdbasic/docs/core-invariants/contract.md`](Wdbasic/docs/core-invariants/contract.md) |
| WDBASIC architecture rules | [`Wdbasic/docs/core-invariants/http-url-integrity/architecture-rules.md`](Wdbasic/docs/core-invariants/http-url-integrity/architecture-rules.md) |
| WDBASIC standards | [`Wdbasic/docs/core-invariants/measurable-evidence/standards.md`](Wdbasic/docs/core-invariants/measurable-evidence/standards.md) |
| WDBASIC engineering validation | [`Wdbasic/docs/core-invariants/measurable-evidence/engineering-validation.md`](Wdbasic/docs/core-invariants/measurable-evidence/engineering-validation.md) |
| TCBasic knowledge index | [`TCbasic/docs/README.md`](TCbasic/docs/README.md) |
| TCBasic architecture rules | [`TCbasic/docs/architecture/rules.md`](TCbasic/docs/architecture/rules.md) |
| TCBasic reference CSS | [`TCbasic/src/`](TCbasic/src/) |
| SEObasic knowledge index | [`SEObasic/docs/README.md`](SEObasic/docs/README.md) |
| T.E.S.T.I.N.G. philosophy | [`SEObasic/docs/content/testing-philosophy.md`](SEObasic/docs/content/testing-philosophy.md) |
| SEObasic contracts | [`SEObasic/docs/contracts/README.md`](SEObasic/docs/contracts/README.md) |
| Metric semantics contract | [`SEObasic/docs/measurement/contracts/metric-semantics.md`](SEObasic/docs/measurement/contracts/metric-semantics.md) |
| Measurement glossary | [`SEObasic/docs/glossaries/measurement-and-analytics.md`](SEObasic/docs/glossaries/measurement-and-analytics.md) |
| READMEbasic knowledge index | [`READMEbasic/docs/README.md`](READMEbasic/docs/README.md) |
| README Integrity Contract | [`READMEbasic/docs/contracts/readme-integrity.md`](READMEbasic/docs/contracts/readme-integrity.md) |
| README template artifact | [`READMEbasic/templates/README-template.md`](READMEbasic/templates/README-template.md) |
| README resources | [`READMEbasic/docs/resources.md`](READMEbasic/docs/resources.md) |

## Shared repository principles

Across SABOS Lib:

- Preserve accumulated practitioner knowledge and explicit positions.
- Preserve canonical wording when identity/provenance matters.
- Separate contracts from positions, research, standards, examples, vendor guidance, and history.
- Keep long-form knowledge under the system's `docs/` tree when that improves root clarity.
- Keep subject artifacts separate from explanatory documentation.
- Use `dist/` only for actual generated/distribution output—not for reference source.
- Define measurement semantics before interpreting or comparing metrics.
- Use local `AGENTS.md` at real authority/evidence/artifact boundaries.
- Record notable changes in the changelog owned by the affected scope.
- Prefer evidence-backed change over speculative cleanup.

## Agent-assisted changes

[`AGENTS.md`](AGENTS.md) is the repository router for agents and automated tools. Detailed governance lives under [`governance/`](governance/README.md), with subsystem and domain-local `AGENTS.md` files adding narrower authority.

The governing doctrine is:

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

The practical Agent Operations baseline is intentionally evidence-driven: keep persistent instructions scoped and high-salience, discover exact commands rather than guessing, define observable acceptance criteria for material work, gate dependent checks on prerequisites, move stable hard rules into executable enforcement where practical, and use independent/fresh-context review for substantial changes. Durable checkpoints and decision records are used only when their recoverability value justifies them.

See [`governance/agent-operations/contracts/execution-verification.md`](governance/agent-operations/contracts/execution-verification.md) and [`governance/agent-operations/patterns/README.md`](governance/agent-operations/patterns/README.md).

Unrequested architectural refactors, contract changes, canonical-definition changes, framework replacements, and comparable mutations follow [`governance/change-control.md`](governance/change-control.md).

## Contributing and evolution

Each system owns its local authority and history. Read the nearest `README.md`, `AGENTS.md`, contracts, positions, standards, and evidence applicable to the work.

Notable subsystem changes update the subsystem `CHANGELOG.md`; repository-wide or cross-system changes also update [`CHANGELOG.md`](CHANGELOG.md).

## License

This repository is licensed under **GPL-3.0-only**. See [`LICENSE`](LICENSE).
