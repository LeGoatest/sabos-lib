# READMEbasic Agent Instructions

> **Status:** Binding for automated README creation and maintenance  
> **Scope:** README files governed by READMEbasic  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md), [`../governance/`](../governance/README.md), and [`../governance/knowledge-system-model.md`](../governance/knowledge-system-model.md)

READMEbasic governs evidence-based README work. A README is not permission to redesign the project it documents.

## Mission

> **Create the shortest README that accurately gets the intended reader oriented and productive without hiding important status, limitations, or entrypoints.**

## Required routing

Before material README work:

1. Read the binding [`README Integrity Contract`](docs/contracts/readme-integrity.md).
2. Read this file and [`README.md`](README.md).
3. Read [`docs/AGENTS.md`](docs/AGENTS.md).
4. Read applicable practitioner positions under [`docs/positions/`](docs/positions/README.md).
5. Select the applicable profile under [`docs/profiles/`](docs/profiles/README.md).
6. Use [`templates/README-template.md`](templates/README-template.md) only as an adaptable starting artifact.
7. Consult [`docs/standards/`](docs/standards/README.md), [`docs/research/`](docs/research/README.md), [`docs/references/`](docs/references/README.md), [`examples/`](examples/README.md), [`docs/resources.md`](docs/resources.md), or [`docs/best-practices.md`](docs/best-practices.md) only when relevant.
8. Use [`docs/glossaries/`](docs/glossaries/README.md) when terminology is ambiguous.

Follow the nearest nested `AGENTS.md` for work inside those domains/artifacts.

## Knowledge-source discipline

READMEbasic distinguishes:

- practitioner experience and synthesis;
- explicit practitioner positions;
- profiles;
- contracts;
- formal standards/specifications;
- platform/vendor guidance;
- research evidence;
- historical/comparative references;
- examples;
- templates/resources/tooling;
- glossary terminology.

Do not flatten these into one category called “best practice.” A template or example is not a contract. Research does not automatically become a contract. Platform behavior is authoritative only within its scope. Practitioner preference remains a position unless deliberately promoted.

## Required inspection

Before writing or materially restructuring a README, inspect enough authoritative project evidence to verify material claims such as:

- project/repository name and purpose;
- intended audience;
- maturity/status where relevant;
- license;
- manifests/configuration actually present;
- real install/build/test/run commands when claimed;
- supported runtime/framework versions when claimed;
- primary entrypoints;
- architecture/governance documents;
- contribution/support routes when referenced;
- changelog/release information when relevant;
- workflows when adding CI/status badges;
- generated artifacts when the README describes them.

For subsystem READMEs, also read the subsystem's own `AGENTS.md` and canonical entrypoint.

## Profile selection

Common profiles include:

1. Application
2. Library/package
3. Multi-system repository/monorepo
4. Documentation/governance repository
5. Subsystem/component

Use [`docs/profiles/`](docs/profiles/README.md). Do not force every optional template section into every profile.

## Evidence rules

Agents MUST NOT invent or infer unsupported:

- commands;
- package names;
- versions;
- ports;
- environment variables;
- configuration paths;
- features;
- roadmap commitments;
- CI status;
- benchmarks;
- security guarantees;
- compatibility claims;
- contact information;
- maintainer identities;
- release state.

If evidence is unavailable, omit the claim or label the gap accurately.

TODOs, roadmap items, examples, design intentions, template sections, and available badge designs are not completed capabilities.

## Structure rules

Agents SHOULD:

- put identity and value before navigation mechanics;
- use meaningful headings and GitHub Flavored Markdown;
- use relative links for repository-local files;
- put the shortest verified getting-started path before deep reference material;
- use concrete examples when they improve comprehension;
- link to canonical architecture/API/governance/contribution/security/changelog/license documents rather than duplicating them;
- state material caveats/maturity early enough to affect adoption decisions;
- keep sections scannable.

Agents SHOULD NOT:

- add a manual TOC when the generated outline is sufficient;
- add decorative badge walls;
- duplicate complete architecture/governance/reference documents;
- copy full license or changelog text into the README;
- add generic acknowledgments/contact/roadmap sections merely because a template includes them;
- leave template placeholders, fake links, TODO badges, example usernames, or sample secrets in a final README;
- use screenshots/diagrams as the only source of critical instructions.

## Badge policy

A badge must communicate useful verified state from a real source. Common legitimate cases include CI status, published release/package version, license, and supported runtime/framework version when actually evidenced.

Badge catalogs/generators are presentation resources, not evidence that a badge applies.

## README change protocol

1. Resolve audience and profile.
2. Inspect authoritative evidence.
3. Identify inaccurate, stale, missing, duplicated, or overly detailed content.
4. Preserve canonical terminology and applicable practitioner positions.
5. Build the smallest coherent README structure.
6. Verify every command, path, version, badge, and material capability claim.
7. Verify relative links.
8. Route deeper material to canonical docs/artifacts rather than duplicate it.
9. Keep current-state documentation separate from changelog history.
10. Do not mutate implementation/governance merely to make README prose simpler.
11. Report unverifiable claims separately.

## Regression protection

Agents MUST NOT:

- remove documented capabilities without verifying whether they were actually removed;
- rename established terminology for style preference;
- change install/usage commands because another workflow seems cleaner;
- rewrite maturity/status to sound more favorable than evidence supports;
- replace precise limitations with marketing language;
- change implementation/architecture/governance solely to match a preferred README structure without passing change control.

If documentation and implementation disagree, resolve which source is authoritative before changing either.

## Artifact boundary

- `docs/` contains READMEbasic knowledge.
- `templates/` contains reusable starting artifacts.
- `examples/` contains illustrative/comparative artifacts.

Templates/examples remain subordinate to contracts and project evidence.

## Definition of done

A README task is complete only when applicable facts are verified, local links resolve, unsupported claims are absent, template debris is removed, deep material is routed correctly, and no unapproved implementation/governance mutation was introduced.

## Governing maxim

> **Do not write the README the project ought to have. Write the README the project can prove.**
