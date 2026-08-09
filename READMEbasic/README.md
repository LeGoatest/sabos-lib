# READMEbasic

> **Status:** Initial framework  
> **Canonical entry point:** `READMEbasic/README.md`  
> **Applies to:** repository root READMEs, package/library READMEs, application READMEs, documentation/governance repositories, and subsystem READMEs.

READMEbasic is a reusable framework for creating README files that are accurate, scannable, useful, and maintainable.

It treats a README as the project's **front door**, not as a copy of the entire documentation set.

The goal is to help a reader answer, in order:

1. **What is this?**
2. **Why would I use or care about it?**
3. **What is its current status?**
4. **How do I get started?**
5. **Where do I go for deeper documentation, contribution rules, support, or governance?**

## Core model

```text
identify the audience
        ↓
state purpose and value
        ↓
show current status
        ↓
provide the shortest verified path to first success
        ↓
show a concrete usage example
        ↓
route to deeper documentation
        ↓
keep claims synchronized with repository evidence
```

READMEbasic favors **progressive disclosure**. A root README should provide enough information to orient and activate a reader without becoming an encyclopedia of implementation details.

## Document map

```text
READMEbasic/
├── README.md
├── AGENTS.md
├── TEMPLATE.md
└── best-practices.md
```

- [`AGENTS.md`](AGENTS.md) — binding instructions for agents creating or updating README files.
- [`TEMPLATE.md`](TEMPLATE.md) — adaptable README scaffold; optional sections must be removed when they do not serve the project.
- [`best-practices.md`](best-practices.md) — evidence, reference analysis, and practical rules derived from GitHub guidance, established README projects, empirical research, and supplied examples.

## README principles

### 1. Audience before structure

Determine who the README serves before selecting sections.

Common profiles include:

- **Application** — users need purpose, setup, configuration, operation, support, and status.
- **Library/package** — consumers need purpose, installation, API-level usage examples, compatibility, and version expectations.
- **Multi-system repository/monorepo** — readers need orientation, subsystem boundaries, entrypoints, and per-subsystem commands.
- **Documentation/governance repository** — readers need purpose, authority, scope, navigation, adoption instructions, and status.

A template is a menu, not a mandatory checklist.

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

### 10. State limitations and maturity clearly

A reader should not have to infer whether a project is experimental, active, stable, deprecated, or incomplete.

When maturity materially affects adoption, state it near the top.

### 11. Keep the README synchronized

README commands, paths, package names, versions, and features are implementation contracts from a user's perspective.

A code change that invalidates them creates a documentation regression.

Where practical, mechanically validate README links, commands, generated snippets, or other facts that can drift.

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
License
```

The order follows the reader's likely questions rather than the historical order of a generic template.

## Relationship to repository governance

README work remains subject to the repository root [`AGENTS.md`](../AGENTS.md) and [`governance/`](../governance/README.md).

READMEbasic specializes documentation behavior; it does not authorize agents to change implementation, architecture, package contracts, release state, or project terminology merely to make a README easier to write.

If the README exposes an inconsistency in the implementation or documentation, report the inconsistency. Do not silently redefine the implementation to match the desired prose.

## Governing maxim

> **Orient quickly. Prove every claim. Get the reader to first success. Route depth to the canonical source.**
