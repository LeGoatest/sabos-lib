# Changelog

All notable changes to WDBASIC will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/).

## [Unreleased]

### Added

- `agents/` as WDBASIC's machine-readable projection namespace, with a deterministic `manifest.yaml` entry point, standard/domain projection, core-invariant registry, technology-profile registry, content-strategy registry, component/token registries, JSON Schemas, and conformance definitions.
- Machine-interface provenance rules requiring mapped records to reference canonical WDBASIC sources and preventing structured files from silently becoming independent authority.
- Expanded the machine interface to specification version `0.2.0` with granular accessibility, architecture, conversion, interaction, performance, responsive, and semantics rule domains; individual experience profiles; page-type contracts; reusable patterns; component specializations; JSON semantic-token catalogs; vocabulary; evidence mappings; type-specific schemas; progressive-disclosure context loading; and explicit validation/failure semantics.
- `docs/` as the canonical home for WDBASIC's substantive governed knowledge.
- A physical four-domain documentation hierarchy matching WDBASIC v2.1: `core-invariants/`, `experience-evaluation/`, `content-strategies/`, and `technology-profiles/`.
- `docs/core-invariants/` with explicit subdomains for semantics, accessibility, security/privacy, truthful content, HTTP/URL integrity, resilience, and measurable evidence.
- `docs/core-invariants/measurable-evidence/research/` as the home for practitioner positions, adversarial audits, superseded heuristics, research snapshots, and unresolved historical findings.
- `docs/experience-evaluation/` with independent diagnostic records for discoverability, intent alignment, usability, trust, conversion, and performance.
- `docs/content-strategies/` with applicability-controlled PAS, comparison, informational, transactional, and other intent models.
- `docs/technology-profiles/` with HTMX/hypermedia, SSR, static, JavaScript application, Tailwind/TCbasic, and hybrid/native profiles.
- Local `README.md` and `AGENTS.md` authority boundaries throughout the four-domain structure.
- Non-authoritative compatibility pointers for confirmed deep legacy relative references during the v2.1 hierarchy migration.

### Changed

- Audited the v2.1 post-migration authority chain and repaired stale pre-migration routing in the binding implementation-agent contract and repository-level WDBASIC entrypoints without changing WDBASIC semantics.
- Hardened WDBASIC from v2 to **v2.1**.
- Reorganized both the conceptual model and the physical `docs/` filesystem into four explicit layers: **Core invariants**, **Experience evaluation**, **Content strategies**, and **Technology profiles**.
- Moved former top-level subject trees under their owning core domain: forms, components, tokens, authoring, accessibility compliance, glossaries, standards/evidence, research/positions, security/privacy, internationalization, and resilience/sustainability.
- Replaced the former monolithic framework contract with `docs/core-invariants/contract.md`, a concise v2.1 router that delegates to the four governed domains.
- Made `docs/core-invariants/README.md` the highest WDBASIC domain authority and made invariant failures non-compensatory.
- Reworked `docs/core-invariants/http-url-integrity/architecture-rules.md` to be strict about trusted state/security/integrity outcomes while allowing HTMX, SSR, static, JavaScript application, hybrid/native, and mixed rendering profiles.
- Repaired central cross-domain links after relocation, including architecture, form, security/privacy, standards/evidence, accessibility, authoring, internationalization, and media dependencies.
- Reworked root `README.md`, root `AGENTS.md`, `docs/README.md`, and `docs/AGENTS.md` so future work routes through the physical four-domain hierarchy.
- Superseded the compensatory `D + P + X + T + A + C = 100` evaluation model with non-compensatory gates plus independent diagnostic experience dimensions.
- Removed accessibility, security, privacy, truthfulness, HTTP/URL integrity, and required evidence from compensatory scoring behavior.
- Made PAS an applicability-controlled content strategy instead of a universal page architecture.
- Replaced the proposed universal law “Problem precedes solution” with **“Relevance precedes or accompanies persuasion.”**
- Preserved `P(7) + A(5) + S(8)` only as historical/experimental practitioner research rather than a canonical score.
- Rejected `Efficacy - Threat >= 0` as a validated deterministic PAS/marketing threshold; retained threat/efficacy research only as qualitative context.
- Clarified that WDBASIC's preference for robust server/pre-rendered public content is a resilience/interoperability philosophy, not a claim that Google universally requires JavaScript-free content.
- Moved HTMX from universal architecture law to a preferred technology profile when hypermedia fits the product.
- Moved Tailwind/TCbasic rules out of WDBASIC core and into a technology profile.
- Added measurable performance as an independent experience domain rather than a vague usability subtopic.
- Corrected the primary Bruner/Pomazal problem-recognition citation to the 1988 *Journal of Consumer Marketing* publication (DOI `10.1108/eb008219`).
- Strengthened agent governance to prevent future automated work from reintroducing superseded v2 assumptions or adding ungoverned fifth-level peer domains under `docs/`.
- Preserved the distinction between external requirements, external guidance/research, binding WDBASIC contracts, practitioner positions, heuristics, and unresolved historical findings.
