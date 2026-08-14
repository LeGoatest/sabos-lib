# WDBASIC Agent Instructions

> **Status:** Binding for automated work under `Wdbasic/`  
> **Canonical entry point:** [`README.md`](README.md)

## Required reading order

Before changing WDBASIC-governed material or implementing against WDBASIC:

1. Read [`README.md`](README.md).
2. Load [`agents/manifest.yaml`](agents/manifest.yaml) when consuming the machine-readable interface; treat it as a projection, not independent authority.
3. Read [`docs/README.md`](docs/README.md).
4. Read [`docs/core-invariants/README.md`](docs/core-invariants/README.md).
5. Read the applicable invariant subdomain and nearest local `AGENTS.md`.
6. Read applicable standards/evidence under [`docs/core-invariants/measurable-evidence/`](docs/core-invariants/measurable-evidence/README.md).
7. Read applicable [`docs/experience-evaluation/`](docs/experience-evaluation/README.md) dimensions.
8. Select content strategy by actual intent from [`docs/content-strategies/`](docs/content-strategies/README.md).
9. Select technology profile by actual implementation from [`docs/technology-profiles/`](docs/technology-profiles/README.md).
10. Read product-specific requirements, evidence, and exceptions.

## Machine-readable interface rule

`agents/` is a machine-readable projection of established WDBASIC authority. A structured file does not gain authority merely by existing. Every mapped rule/profile/strategy/contract must preserve its canonical source and must be updated when that source materially changes.

Agents MUST NOT use `agents/` to invent a universal component, token, profile, rule, or requirement that has not been deliberately adopted by WDBASIC.

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

`Wdbasic/agents/` is a separate machine-interface namespace and does not create a fifth documentation domain.

When moving documentation, preserve substantive authority, update parent routing and relative links, and record notable structural changes in [`CHANGELOG.md`](CHANGELOG.md).
