# WDBASIC Agent Instructions

> **Status:** Binding for automated work under `Wdbasic/`  
> **Canonical entry point:** [`README.md`](README.md)

## Required reading order

Before changing WDBASIC-governed material or implementing against WDBASIC:

1. Read [`README.md`](README.md).
2. Read [`docs/README.md`](docs/README.md).
3. Read [`docs/core-invariants/README.md`](docs/core-invariants/README.md).
4. Read the applicable invariant subdomain and nearest local `AGENTS.md`.
5. Read applicable standards/evidence under [`docs/core-invariants/measurable-evidence/`](docs/core-invariants/measurable-evidence/README.md).
6. Read applicable [`docs/experience-evaluation/`](docs/experience-evaluation/README.md) dimensions.
7. Select content strategy by actual intent from [`docs/content-strategies/`](docs/content-strategies/README.md).
8. Select technology profile by actual implementation from [`docs/technology-profiles/`](docs/technology-profiles/README.md).
9. Read product-specific requirements, evidence, and exceptions.

## Non-negotiables

Agents MUST preserve native semantics, accessibility behavior, security/privacy boundaries, truthful claims, correct HTTP/URL behavior, recoverability, and evidence integrity.

Agents MUST NOT:

- restore the old additive 100-point WDBASIC model as canonical;
- treat PAS as mandatory for every page;
- treat problem-first ordering as a universal law;
- present `P(7)+A(5)+S(8)` or another PAS weighting as externally validated;
- restore `Efficacy - Threat` as a validated marketing threshold;
- make HTMX, Tailwind, SSR, static generation, or client-side JavaScript a universal core requirement;
- claim Google requires JavaScript-free indexing;
- weaken a core invariant because a current implementation fails it;
- refactor governed architecture or contracts without a stated reason and applicable change-control authority.

## Structural rule

`Wdbasic/docs/` has exactly four governed knowledge domains plus its router files. New material belongs under the domain that owns its semantic responsibility rather than as another peer directory at `docs/` root.

When moving documentation, preserve substantive authority, update parent routing and relative links, and record notable structural changes in [`CHANGELOG.md`](CHANGELOG.md).
