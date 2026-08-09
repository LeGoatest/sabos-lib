# READMEbasic

> **Status:** Evolving framework  
> **Canonical entry point:** `READMEbasic/README.md`  
> **Applies to:** repository root READMEs, package/library READMEs, application READMEs, documentation/governance repositories, and subsystem READMEs.

READMEbasic is a reusable knowledge framework for creating README files that are accurate, scannable, useful, maintainable, and evidence-backed.

It treats a README as the project's **front door**, not as a copy of the entire documentation set.

The goal is to help a reader answer, in order:

1. **What is this?**
2. **Why would I use or care about it?**
3. **What is its current status?**
4. **How do I get started?**
5. **Where do I go for deeper documentation, contribution rules, support, governance, or change history?**

## Core model

```text
real-world README experience + examples
             +
GitHub/platform guidance + standards + research
             ↓
       documented positions
             ↓
        README contracts
             ↓
audience/profile-specific README structure
             ↓
 verification + maintenance
```

READMEbasic favors **progressive disclosure**. A root README should provide enough information to orient and activate a reader without becoming an encyclopedia of implementation details.

The broader repository knowledge-system structure is defined by [`../governance/knowledge-system-model.md`](../governance/knowledge-system-model.md).

## Document map

```text
READMEbasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
├── TEMPLATE.md
├── contracts/
│   ├── README.md
│   ├── AGENTS.md
│   └── readme-integrity.md
├── positions/
│   ├── README.md
│   └── AGENTS.md
├── profiles/
│   ├── README.md
│   └── AGENTS.md
├── research/
│   ├── README.md
│   └── AGENTS.md
├── standards/
│   ├── README.md
│   └── AGENTS.md
├── references/
│   ├── README.md
│   └── AGENTS.md
├── examples/
│   ├── README.md
│   └── AGENTS.md
├── glossaries/
│   ├── README.md
│   ├── AGENTS.md
│   └── readme-and-documentation.md
├── best-practices.md
└── resources.md
```

- [`AGENTS.md`](AGENTS.md) — binding instructions for agents creating or updating README files.
- [`contracts/`](contracts/README.md) — stable README obligations derived from adopted knowledge and evidence.
- [`positions/`](positions/README.md) — deliberate READMEbasic preferences/bias, rationale, tradeoffs, and divergence from common template conventions.
- [`profiles/`](profiles/README.md) — audience/repository-class specializations such as applications, packages, monorepos, governance repositories, and subsystems.
- [`research/`](research/README.md) — empirical and scholarly evidence about README/documentation quality and maintenance.
- [`standards/`](standards/README.md) — formal specifications and platform-owned documentation behavior.
- [`references/`](references/README.md) — historical notes, source excerpts, comparative analyses, and non-normative evidence.
- [`examples/`](examples/README.md) — illustrative README structures and case studies.
- [`TEMPLATE.md`](TEMPLATE.md) — adaptable README scaffold; optional sections must be removed when they do not serve the project.
- [`best-practices.md`](best-practices.md) — practitioner analysis, evidence synthesis, reference comparison, and practical guidance.
- [`resources.md`](resources.md) — curated official guidance, standards, templates, real-world examples, badge resources, changelog guidance, and README tooling.
- [`glossaries/`](glossaries/README.md) — subject terminology and disambiguation.
- [`CHANGELOG.md`](CHANGELOG.md) — notable evolution of READMEbasic itself.

## Contracts

READMEbasic separates **what informed a decision** from **what a README must now preserve**.

Current binding contract:

- [`contracts/readme-integrity.md`](contracts/readme-integrity.md) — user-facing README claims must be supported by evidence and synchronized with the implementation/project record.

A template, article, badge catalog, GitHub example, or research paper does not become a contract automatically. It informs an explicit READMEbasic position first.

## Knowledge and evidence layers

READMEbasic keeps source types separate because they answer different questions:

- **Practitioner experience / best practices** — what has repeatedly worked or failed in real README work.
- **Positions** — what READMEbasic deliberately prefers, including acknowledged bias and divergence from common template convention.
- **Profiles** — how audience and repository class change structure priorities.
- **Research** — what empirical/scholarly evidence supports or challenges a position.
- **Standards/platform guidance** — what GitHub, GFM, or another controlling platform/specification actually defines.
- **References** — historical/comparative source material whose provenance should be preserved.
- **Examples** — concrete demonstrations that illustrate, but do not legislate, a pattern.
- **Contracts** — obligations adopted after the evidence/position has been considered.
- **Glossaries** — terminology clarification without independent normative authority.

Do not collapse these into one undifferentiated category called “best practices.”

## README principles

### 1. Audience before structure

Determine who the README serves before selecting sections.

Common profiles include:

- **Application** — users need purpose, setup, configuration, operation, support, and status.
- **Library/package** — consumers need purpose, installation, API-level usage examples, compatibility, and version expectations.
- **Multi-system repository/monorepo** — readers need orientation, subsystem boundaries, entrypoints, and per-subsystem commands.
- **Documentation/governance repository** — readers need purpose, authority, scope, navigation, adoption instructions, and status.
- **Subsystem/component** — readers need responsibility boundaries, local usage, governing contracts, and links to parent documentation.

A template is a menu, not a mandatory checklist.

See [`profiles/`](profiles/README.md) as profile-specific knowledge develops.

### 2. The first screen carries the highest-value information

Near the top, prefer:

- Project name.
- One-sentence description.
- Short explanation of the problem or value.
- High-signal status or compatibility information when material.
- A small number of verified badges when they improve understanding.
- One or two useful next-step links when the repository has substantial documentation.

Do not make readers scroll through a badge wall, generic marketing copy, or a manual table of contents before learning what the project is.

### 3. Evidence over plausible prose

README claims must be traceable to repository evidence or an authoritative external source.

Do not invent or assume:

- Installation commands.
- Package names.
- Supported versions.
- Ports.
- Configuration files.
- Features.
- Release status.
- CI state.
- Security properties.
- Compatibility claims.
- Maintainers or contact details.

When repository evidence is incomplete, omit the claim or state the limitation.

See the binding [`README Integrity Contract`](contracts/readme-integrity.md).

### 4. First success should be reproducible

Getting-started instructions should lead to a concrete successful outcome using commands that actually exist.

Prefer the shortest verified path. Link to deeper installation, configuration, migration, or deployment documentation rather than reproducing it in full.

### 5. Show, then explain

A runnable or realistic usage example usually communicates more than a long feature list.

For packages and tools, show the smallest useful example near installation or usage.

For conceptual/governance repositories, show the adoption model, reading order, or relationship between major components.

### 6. Separate orientation from reference documentation

The root README should not duplicate:

- Complete API references.
- Full architecture specifications.
- Long troubleshooting manuals.
- Complete contribution policies.
- License text.
- Governance constitutions.
- Changelog history.

Link to their canonical files instead.

### 7. Prefer repository-relative navigation

Use relative links for files that live in the same repository so links continue to work across branches, forks, and clones.

### 8. Use headings for navigation

GitHub generates a document outline from headings. A manually maintained table of contents is optional and should be used only when it materially improves navigation for a long README.

Avoid a hand-maintained TOC when it merely duplicates GitHub's generated outline and creates another stale artifact.

### 9. Badges are status signals, not decoration

Only use badges that communicate useful, verified state such as:

- Build/CI status.
- Package/release version.
- License.
- Supported runtime/framework version.
- Coverage or documentation status when actively maintained.

Avoid vanity or technology-logo walls when they overwhelm the project description.

For badge catalogs, generators, and icon sources, see [`resources.md`](resources.md). Resource availability does not prove that a badge applies to the local project.

### 10. State limitations and maturity clearly

A reader should not have to infer whether a project is experimental, active, stable, deprecated, or incomplete.

When maturity materially affects adoption, state it near the top.

### 11. Keep the README synchronized

README commands, paths, package names, versions, and features are user-facing contracts.

A code change that invalidates them creates a documentation regression.

Where practical, mechanically validate README links, commands, generated snippets, or other facts that can drift.

### 12. Separate current state from change history

The README describes the project **as it exists now**. The changelog describes **how notable behavior, interfaces, or documentation evolved**.

When release or change history matters, link to `CHANGELOG.md` rather than reproducing historical entries in the README.

## Recommended default order

Use the following as a default, then remove or reorder sections based on audience:

```text
Project name
One-sentence purpose/value
High-signal badges/status
Short project overview

Why / key capabilities
Status
Quick start
Usage
Architecture or repository map (only if needed for orientation)
Documentation
Development / contributing
Support (when a real channel exists)
Changelog (link when useful)
License
```

The order follows the reader's likely questions rather than the historical order of a generic template.

## Resource use

External README resources are classified in [`resources.md`](resources.md) as:

1. official platform/specification guidance;
2. established standards/templates;
3. curated real-world examples;
4. badge, visual, and authoring tools.

Use them to learn patterns, not to invent facts about the repository being documented.

Terms such as *first success*, *progressive disclosure*, *template debris*, and *user-facing contract* are defined under [`glossaries/`](glossaries/README.md).

## Relationship to repository governance

README work remains subject to the repository root [`AGENTS.md`](../AGENTS.md), [`governance/`](../governance/README.md), and [`governance/knowledge-system-model.md`](../governance/knowledge-system-model.md).

READMEbasic specializes documentation behavior; it does not authorize agents to change implementation, architecture, package contracts, release state, or project terminology merely to make a README easier to write.

If the README exposes an inconsistency in the implementation or documentation, report the inconsistency. Do not silently redefine the implementation to match the desired prose.

## Ongoing development

READMEbasic is intended to accumulate real-world README lessons, explicit positions, external guidance, research, standards, examples, contracts, profiles, tooling resources, and anti-patterns over time.

The goal is not to force every project into one ideal template. The goal is to preserve what actually produces clear, reliable project entrypoints and make the reasoning reusable.

## Governing maxim

> **Orient quickly. Prove every claim. Get the reader to first success. Route depth to the canonical source.**
