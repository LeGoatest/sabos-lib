# SEObasic Owned-Web Technical Agent Instructions

> **Scope:** `SEObasic/docs/surfaces/owned-web/technical/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

## Mission

Preserve technical discoverability and interpretation on the owned-web surface without manufacturing search claims or treating search-engine behavior as guaranteed.

## Required discipline

Agents MUST:

- distinguish platform documentation from observed behavior and third-party interpretation;
- verify current search-engine/vendor behavior when a rule depends on a changing platform;
- preserve canonical URL, indexing, redirect, metadata, sitemap, feed, and structured-data behavior during implementation changes;
- keep structured data consistent with visible content;
- treat technical regressions as observable behavior changes, not documentation-only defects;
- define mechanical validation where practical;
- document historically familiar metadata/directives that are no longer used when omission could cause them to be mistakenly reintroduced;
- identify the specific consumer when marking metadata as legacy, ignored, unsupported, deprecated, or no longer used.

Agents MUST NOT:

- guarantee rankings or rich-result display;
- label all pages with the same schema type for convenience;
- add fabricated entities, reviews, dates, locations, authorship, or relationships to structured data;
- hide primary crawlable content behind client-only rendering when governing WDBASIC contracts require server-owned content;
- change canonicalization or URL behavior incidentally during unrelated work;
- claim a tag is universally obsolete merely because one search engine ignores it;
- reintroduce legacy metadata as a current SEO requirement without evidence of a current consumer;
- conflate the Google-unused `<meta name="keywords">` field with legitimate keyword/topic language in visible page content.

## Legacy metadata rule

When a tag/directive is retained as historical or legacy knowledge, record:

1. its historical purpose;
2. the named platform/consumer whose current behavior is being described;
3. whether it is ignored, unsupported, deprecated, or simply no longer used for the stated purpose;
4. whether another consumer may still require it;
5. the authoritative/current evidence supporting the status.

Prefer **“unused by Google Search”** over an unsupported universal statement such as **“nobody uses this.”**

See [`metadata.md`](metadata.md) for the current metadata-status model and legacy examples.

## Cross-role routing

- claim provenance / consumer scoping → [`../../../invariants/evidence-classification.md`](../../../invariants/evidence-classification.md)
- current platform/protocol guidance → [`../../../evidence/platform-guidance/`](../../../evidence/platform-guidance/README.md)
- generative/answer crawler-access controls → [`../../generative-search/ai-discovery-controls.md`](../../generative-search/ai-discovery-controls.md)
- on-page keyword/topic-language strategy → [`../../../strategies/on-page/keyword-use.md`](../../../strategies/on-page/keyword-use.md)
- entity relationships → [`../../../strategies/entity-relationships/`](../../../strategies/entity-relationships/README.md)
- measurement semantics → [`../../../measurement/`](../../../measurement/README.md)
- implementation architecture/accessibility/security → [`../../../../../Wdbasic/AGENTS.md`](../../../../../Wdbasic/AGENTS.md)

## Local contracts

Stable owned-web technical rules MAY be formalized near this surface when repeated implementations need the same behavior. Do not promote a platform-specific rule into a cross-domain invariant merely because it is technical.

## Changelog

Material technical-framework changes require an entry in [`../../../../CHANGELOG.md`](../../../../CHANGELOG.md).
