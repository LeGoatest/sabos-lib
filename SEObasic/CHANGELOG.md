# Changelog

All notable changes to SEObasic will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/).

## [Unreleased]

### Added

- Canonical T.E.S.T.I.N.G. philosophy using the original content/community definitions.
- T.E.S.T.I.N.G. application guidance that preserves the canonical acronym and holistic method.
- Structured-data guidance and a Go JSON-LD reference implementation.
- Entity-graph guidance for internal linking, backlinks, tags, sitemaps, feeds, and related-content relationships.
- `AGENTS.md` for SEObasic-wide authority, knowledge-source classification, channel boundaries, contract use, and preservation rules.
- `contracts/` with a reusable contract model, contract-specific agent instructions, a Truth and Evidence Contract, and a Channel Boundaries Contract.
- `positions/` with local agent governance as the explicit home for deliberate SEObasic preferences/bias, rationale, tradeoffs, and divergence from common SEO/marketing practice.
- `content/` knowledge domain with its own README and agent instructions.
- `websites/` knowledge domain for first-party website, landing-page, service/location, proof, conversion, and channel relationships.
- `technical/` knowledge domain for crawl/index/metadata/structured-data and technical diagnostics.
- `entities/` knowledge domain for entity graphs, internal links, backlinks, and relationship modeling.
- `local-search/` knowledge domain covering Google Business Profile, local/map-pack visibility, business identity, reviews, citations, service areas, and local proof.
- `social-media/` knowledge domain for organic social publishing, community, content reuse, and channel-specific interaction.
- `paid-media/` knowledge domain for PPC, paid search/social campaigns, targeting, landing-page alignment, attribution, and business-outcome measurement.
- `youtube/` knowledge domain for channel/video discovery, packaging, retention, series/playlists, analytics, and cross-channel relationships.
- `measurement/` knowledge domain for ranking, visibility, traffic, conversion, local, authority/link, technical, geographic, and cross-channel analytics semantics.
- `measurement/contracts/metric-semantics.md` defining provider-neutral metric naming, scope, source, denominator, attribution, geographic context, comparability, and proprietary-score rules.
- `glossaries/measurement-and-analytics.md` defining SERP/result terminology, ranking metrics, visibility metrics, traffic/conversion metrics, local metrics, authority/link metrics, technical metrics, and geographic measurement vocabulary.
- `research/` knowledge domain for scholarly/empirical evidence, method, limitations, and synthesis.
- `standards/` knowledge domain for formal standards, platform documentation, policies, and applicability records.
- `references/` knowledge domain for historical records, source excerpts, and non-normative evidence.
- `glossaries/` with cross-domain SEO/marketing and measurement/analytics glossaries plus glossary agent governance.
- `examples/README.md` and `examples/AGENTS.md` to distinguish illustrative implementations from authority.
- This subsystem changelog.

### Changed

- Reframed SEObasic from a mostly flat technical/content SEO collection into an evolving multi-domain knowledge framework.
- Moved the canonical T.E.S.T.I.N.G. philosophy and application guide under `content/` without redefining their substance.
- Moved structured-data guidance under `technical/`.
- Moved entity-graph/internal-link guidance under `entities/`.
- Moved historical T.E.S.T.I.N.G. material and the verbatim source excerpt from `reference/` to `references/`.
- Removed obsolete flat duplicates after updating canonical links to the new hierarchy.
- Expanded SEObasic scope to explicitly include websites, organic social media, paid media/PPC, Google Business Profile/local/maps visibility, YouTube, measurement/analytics, research, standards, contracts, positions, references, examples, and glossaries.
- Clarified the separation between canonical philosophy, practitioner positions, contracts, industry practice, platform guidance, formal standards, research evidence, historical references, examples, and metric definitions.
- Added explicit protection against erasing or normalizing documented practitioner positions merely because a more common industry/vendor convention exists.
- Added binding routing so metrics such as rank, visibility, traffic, conversion, authority, and geo-grid rank cannot be used interchangeably without explicit definitions.
- Removed the earlier engineering reinterpretation of T.E.S.T.I.N.G. from canonical SEObasic guidance.
