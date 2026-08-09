# Changelog

All notable repository-wide changes will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/). Subsystem-specific details remain in the changelog owned by each top-level system.

## [Unreleased]

### Added

- Repository-wide `governance/` layer for authority, invariants, change control, validation, and research evidence.
- Compact root `AGENTS.md` that routes automated work into scoped governance instead of duplicating the full policy surface.
- `governance/AGENTS.md` for controlled edits to repository governance itself.
- Binding `governance/knowledge-system-model.md` defining how `*basic` systems preserve practitioner experience, explicit positions/bias, contracts, industry practice, platform guidance, formal standards, research, references, examples, profiles/patterns, glossaries, local agent authority, and changelog history.
- `positions/` domains with local `AGENTS.md` under WDBASIC, TCBasic, SEObasic, and READMEbasic as the explicit home for deliberate practitioner preferences, rationale, tradeoffs, and divergence from common practice.
- Local WDBASIC `AGENTS.md` files for forms, tokens, components, compliance, authoring, profiles, and glossaries.
- Local TCBasic `AGENTS.md` files for build, tokens, components, integrations, compliance, profiles, glossaries, examples, canonical source, generated distribution, and regression-test boundaries.
- `SEObasic/` for search/discovery/marketing knowledge, including the canonical T.E.S.T.I.N.G. philosophy.
- Deep SEObasic domain structure covering contracts, positions, content, websites, technical SEO, entities/internal linking, local search/Google Business Profile/maps, organic social media, paid media/PPC, YouTube, measurement/analytics, research, standards, references, glossaries, and examples.
- SEObasic cross-domain Truth and Evidence Contract and Channel Boundaries Contract.
- SEObasic measurement/analytics domain with provider-neutral metric semantics covering search-result state, rankings, visibility, traffic, conversions, local-search interactions, authority/link metrics, technical metrics, and geographic/geo-grid measurements.
- Binding SEObasic Metric Semantics Contract preventing ambiguous interchange of rank, visibility, traffic, conversion, authority, geo-grid rank, and related terms.
- SEObasic measurement/analytics glossary covering SERP/result terminology, ranking/visibility/traffic/conversion/local/authority/technical metrics, and geographic measurement vocabulary.
- `READMEbasic/` for evidence-based README structure, agent instructions, reusable templates, best practices, resources, contracts, positions, glossaries, profiles, research, standards, references, and examples.
- READMEbasic README Integrity Contract formalizing README facts as evidence-backed user-facing obligations.
- READMEbasic governed domains for positions, profiles, research, standards/platform guidance, historical/comparative references, and examples, each with local `AGENTS.md` routing.
- `READMEbasic/resources.md` with curated GitHub guidance, README standards/templates, real-world examples, badge resources including Badges4-README.md-Profile, Shields.io, changelog guidance, and README tooling.
- Subject glossaries for SEObasic and READMEbasic, complementing the existing TCBasic and WDBASIC glossary structures.
- Top-level subsystem changelogs for WDBASIC, SEObasic, READMEbasic, and repository governance. TCBasic retains its existing changelog.
- Repository changelog-traceability governance requiring notable subsystem changes to update their own changelog and repository-wide/cross-subsystem changes to update this root changelog.

### Changed

- Reworked the root `README.md` into a concise repository entrypoint describing the `*basic` directories as evolving knowledge systems rather than flat checklists.
- Expanded the root knowledge model to explicitly preserve practitioner positions and acknowledged bias separately from standards/research and binding contracts.
- Updated the root `AGENTS.md` to route work through the shared Knowledge System Model plus each subsystem's own `AGENTS.md`, explicit practitioner positions, nested domain agents, contracts, and applicable knowledge sources.
- Expanded governance authority to recognize deep knowledge-system boundaries, local source-of-truth/evidence boundaries, contract ownership, and SEObasic measurement semantics as governed behavior.
- Clarified that local `AGENTS.md` files belong at meaningful authority/evidence/source-of-truth boundaries rather than being mechanically duplicated into every implementation leaf folder.
- Clarified that practitioner positions may intentionally diverge from common industry/vendor practice and must not be silently normalized or mislabeled as external standards.
- Restructured SEObasic from a mostly flat set of documents into domain-owned knowledge areas with local agent governance.
- Moved existing canonical SEObasic content into the new hierarchy while preserving the T.E.S.T.I.N.G. definition, application guidance, structured-data guidance, entity-graph guidance, and historical source material.
- Expanded READMEbasic into a deeper knowledge system with contract, position, profile, research, standards, reference, example, and glossary layers.
- Separated detailed governance and research from persistent agent instruction context to reduce duplication and instruction bloat.
