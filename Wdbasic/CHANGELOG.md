# Changelog

All notable changes to WDBASIC will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/).

## [Unreleased]

### Added

- `docs/` as the canonical home for WDBASIC's substantive architecture, standards, contracts, profiles, positions, compliance/evidence, authoring, token, component, glossary, and cross-cutting knowledge.
- `docs/framework-contract.md` as the hardened WDBASIC v2.1 framework contract.
- `docs/implementation-agent-contract.md` as the hardened implementation/review agent contract.
- `docs/README.md` and `docs/AGENTS.md` as the WDBASIC knowledge index and documentation authority router.
- `docs/core-invariants.md` as the highest-level non-compensatory invariant contract covering semantics, accessibility, security/privacy, truthful content, HTTP/URL integrity, resilience, measurable evidence, technology neutrality, and content-strategy neutrality.
- `docs/experience-evaluation.md` as the current gate-plus-diagnostic-profile evaluation model for discoverability, intent alignment, usability, trust, conversion, and performance.
- `docs/content-strategies/README.md` establishing applicability-controlled PAS, comparison, informational, transactional, and other intent models.
- `docs/technology-profiles/README.md` establishing technology-specific adoption governance.
- `docs/technology-profiles/htmx-hypermedia.md` with explicit HTMX representation/cache/history/security rules including `Vary: HX-Request`, direct-load history URLs, history restore review, sensitive history-cache handling, script/CSP policy, and fragment accessibility behavior.
- `docs/technology-profiles/ssr.md`.
- `docs/technology-profiles/static.md`.
- `docs/technology-profiles/js-application.md`.
- `docs/technology-profiles/tailwind-tcbasic.md`.
- `docs/technology-profiles/hybrid-native.md`.
- `docs/positions/pas-content-architecture.md` preserving and hardening the PAS research position.
- `docs/positions/wdbasic-evaluation-model.md` preserving the superseded additive evaluation model and its rationale/history.
- `docs/positions/research-findings-2026-08-14.md` preserving the complete August 14 research trajectory and unresolved original PAS coefficients.
- `docs/positions/adversarial-audit-2026-08-14.md` preserving the adversarial audit against Google, W3C/WAI, OWASP, HTMX, performance guidance, Semrush, and peer-reviewed research.
- `engineering-validation.md` defining the Thorough, Early, Systematic, Transparent, Independent, Non-destructive, and Gradual implementation-validation philosophy.
- WDBASIC integration with repository-wide authority, invariant, mutation, and evidence governance.
- Local `AGENTS.md` files for forms, tokens, components, compliance, authoring, profiles, positions, and glossaries.
- This subsystem changelog.

### Changed

- Hardened WDBASIC from v2 to **v2.1**.
- Reorganized the conceptual framework into four explicit layers: **Core invariants**, **Experience evaluation**, **Content strategies**, and **Technology profiles**.
- Made `docs/core-invariants.md` the highest WDBASIC authority.
- Rewrote `docs/architecture_rules.md` to be strict about trusted state/security/integrity outcomes while allowing HTMX, SSR, static, JavaScript application, hybrid/native, and mixed rendering profiles.
- Replaced the duplicated v2 framework contract with a concise v2.1 routing contract that defers detailed behavior to specialized contracts/profiles.
- Reworked root `README.md`, root `AGENTS.md`, `docs/README.md`, `docs/AGENTS.md`, and `docs/implementation-agent-contract.md` around the v2.1 authority/read-order model.
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
- Strengthened agent governance to prevent future automated work from reintroducing superseded v2 assumptions.
- Preserved the distinction between external requirements, external guidance/research, binding WDBASIC contracts, practitioner positions, heuristics, and unresolved historical findings.
