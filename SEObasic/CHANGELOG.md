# Changelog

All notable changes to SEObasic will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/).

## [Unreleased]

### Added

- `docs/` as the canonical home for SEObasic contracts, positions, content, website, technical, entity, local-search, social-media, paid-media, YouTube, measurement, research, standards, reference, and glossary knowledge.
- `docs/README.md` and `docs/AGENTS.md` as the SEObasic knowledge index and documentation authority router.
- Canonical T.E.S.T.I.N.G. philosophy using the original content/community definitions.
- T.E.S.T.I.N.G. application guidance that preserves the canonical acronym and holistic method.
- Structured-data guidance and a Go JSON-LD reference implementation.
- `docs/technical/metadata.md` documenting search-presentation metadata, indexing/serving controls, canonical links, browser/document metadata, social-sharing metadata, and an explicit legacy/unused status model.
- Explicit legacy documentation for `meta keywords` as unused by Google Search, plus other historical Google Search metadata/directives such as `rel="next"`/`rel="prev"`, `nositelinkssearchbox`, `noarchive`, and `nocache` where current platform documentation identifies them as unused.
- `docs/websites/keyword-use.md` separating current, natural on-page keyword/topic-language use from the obsolete `meta keywords` field and documenting URLs, titles, headings, body copy, link text, alt text, search intent, natural language, and keyword-stuffing boundaries.
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

- Moved all long-form SEObasic knowledge domains under `docs/` while keeping `examples/` as a root illustrative artifact.
- Reworked root `README.md` and `AGENTS.md` into concise entrypoint/authority routers for the new `docs/` hierarchy.
- Preserved canonical T.E.S.T.I.N.G. philosophy, source excerpt, measurement semantics, and other domain content byte-for-byte during the structural move before updating routing paths.
- Clarified that a future `playbooks/` artifact root should be created only when real reusable operational playbooks exist, not for structural symmetry.
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
- Added explicit agent protection against confusing the obsolete `meta keywords` field with legitimate visible keyword/topic language used naturally in website content.
- Removed the earlier engineering reinterpretation of T.E.S.T.I.N.G. from canonical SEObasic guidance.
