# Changelog

All notable repository-wide changes will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/). Subsystem-specific details remain in the changelog owned by each top-level system.

## [Unreleased]

### Added

- Repository-wide `governance/` layer for authority, invariants, change control, validation, and research evidence.
- Compact root `AGENTS.md` that routes automated work into scoped governance instead of duplicating the full policy surface.
- `governance/AGENTS.md` for controlled edits to repository governance itself.
- Binding `governance/knowledge-system-model.md` defining how `*basic` systems preserve practitioner experience, explicit positions/bias, contracts, industry practice, platform guidance, formal standards, research, references, examples, profiles/patterns, glossaries, subject artifacts, local agent authority, and changelog history.
- Shared system-root convention separating concise entrypoint/governance files from long-form `docs/` knowledge and genuine subject artifacts such as reference source, templates, or future playbooks.
- Explicit artifact naming rule reserving `dist/` for actual generated/distribution output rather than canonical reference material.
- `positions/` domains with local `AGENTS.md` under WDBASIC, TCBasic, SEObasic, and READMEbasic as the explicit home for deliberate practitioner preferences, rationale, tradeoffs, and divergence from common practice.
- Local WDBASIC agent governance for forms, tokens, components, compliance, authoring, profiles, positions, and glossaries.
- `Wdbasic/docs/` as the canonical long-form WDBASIC knowledge tree, including preserved full framework and implementation-agent contracts.
- `TCbasic/docs/` as the canonical TCBasic knowledge tree plus `TCbasic/src/` as canonical reference CSS and `TCbasic/examples/` as illustrative adoption artifacts.
- `SEObasic/` for search/discovery/marketing knowledge, including the canonical T.E.S.T.I.N.G. philosophy.
- `SEObasic/docs/` as the canonical home for contracts, positions, content, websites, technical SEO, entities/internal linking, local search/Google Business Profile/maps, organic social media, paid media/PPC, YouTube, measurement/analytics, research, standards, references, and glossaries.
- SEObasic cross-domain Truth and Evidence Contract and Channel Boundaries Contract.
- SEObasic measurement/analytics domain with provider-neutral metric semantics covering search-result state, rankings, visibility, traffic, conversions, local-search interactions, authority/link metrics, technical metrics, and geographic/geo-grid measurements.
- Binding SEObasic Metric Semantics Contract preventing ambiguous interchange of rank, visibility, traffic, conversion, authority, geo-grid rank, and related terms.
- SEObasic measurement/analytics glossary covering SERP/result terminology, ranking/visibility/traffic/conversion/local/authority/technical metrics, and geographic measurement vocabulary.
- `READMEbasic/` for evidence-based README structure, agent instructions, templates, best practices, resources, contracts, positions, glossaries, profiles, research, standards, references, and examples.
- `READMEbasic/docs/` as the canonical long-form README knowledge tree.
- `READMEbasic/templates/` as a distinct reusable artifact layer containing the adaptable README template and template-specific agent guidance.
- READMEbasic README Integrity Contract formalizing README facts as evidence-backed user-facing obligations.
- READMEbasic governed domains for positions, profiles, research, standards/platform guidance, historical/comparative references, and examples, each with local `AGENTS.md` routing.
- Subject glossaries for SEObasic and READMEbasic, complementing the existing TCBasic and WDBASIC glossary structures.
- Top-level subsystem changelogs for WDBASIC, SEObasic, READMEbasic, and repository governance. TCBasic retains its existing changelog.
- Repository changelog-traceability governance requiring notable subsystem changes to update their own changelog and repository-wide/cross-subsystem changes to update this root changelog.

### Changed

- Renamed the repository from `tailwindcss-semantic-layer` to `sabos-lib` to reflect its role as the umbrella library for multiple governed knowledge systems rather than a Tailwind-only repository.
- Reframed the root `README.md` around SABOS Lib as the repository identity, with WDBASIC, TCBasic, SEObasic, READMEbasic, and governance presented as peer systems with distinct authority domains.
- Reframed SABOS Lib as a knowledge/reference repository rather than a package/build repository.
- Reframed TCBasic from an executable npm package into a Tailwind CSS semantic-architecture knowledge framework with canonical reference CSS under `src/`.
- Removed stale root documentation that described TCBasic as the repository's npm package or required package build/test commands.
- Moved TCBasic architecture, standards, components, tokens, integrations, compliance, profiles, positions, references, glossaries, customization, and migration knowledge under `TCbasic/docs/`.
- Preserved the project-specific Tailwind hard-pattern material under `TCbasic/docs/references/` instead of treating it as universal TCBasic law.
- Removed TCBasic package/distribution machinery that no longer matches repository purpose, including npm metadata, checked-in `dist/`, repository package/build tests, PostCSS repository configuration, build/package contracts, and package-oriented GitHub build/release workflows.
- Moved WDBASIC long-form knowledge under `Wdbasic/docs/`, preserving the former full root contract as `docs/framework-contract.md` and former detailed root agent contract as `docs/implementation-agent-contract.md`.
- Reworked WDBASIC root README/AGENTS into concise routers without weakening the preserved binding contracts.
- Moved SEObasic long-form knowledge under `SEObasic/docs/` while keeping `SEObasic/examples/` as an illustrative root artifact.
- Preserved canonical T.E.S.T.I.N.G. wording, source excerpts, metric semantics, and other SEObasic domain content through the structural move.
- Moved READMEbasic long-form knowledge under `READMEbasic/docs/`, moved the reusable root `TEMPLATE.md` to `READMEbasic/templates/README-template.md`, and retained `READMEbasic/examples/` as illustrative artifacts.
- Reworked the root SABOS Lib README and root `AGENTS.md` around the shared root → `docs/` → subject-artifact responsibility model.
- Expanded the root knowledge model to explicitly preserve practitioner positions and acknowledged bias separately from standards/research and binding contracts.
- Expanded governance authority to recognize deep knowledge-system boundaries, local source-of-truth/evidence/artifact boundaries, contract ownership, and SEObasic measurement semantics as governed behavior.
- Clarified that local `AGENTS.md` files belong at meaningful authority/evidence/source-of-truth boundaries rather than being mechanically duplicated into every leaf folder.
- Clarified that practitioner positions may intentionally diverge from common industry/vendor practice and must not be silently normalized or mislabeled as external standards.
- Separated detailed governance and research from persistent agent instruction context to reduce duplication and instruction bloat.

### Removed

- Repository-level assumptions that TCBasic must be installed, built, packed, or released from SABOS Lib.
- TCBasic npm-package identity as a current SABOS Lib contract; earlier package-oriented history remains preserved in `TCbasic/CHANGELOG.md`.
- Obsolete GitHub Actions workflows that existed solely to build/test/package/release TCBasic from this repository.
