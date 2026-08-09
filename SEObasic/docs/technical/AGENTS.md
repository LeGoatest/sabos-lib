# SEObasic Technical Agent Instructions

> **Scope:** `SEObasic/technical/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

## Mission

Preserve technical discoverability and interpretation without manufacturing search claims or treating search-engine behavior as guaranteed.

## Required discipline

Agents MUST:

- distinguish platform documentation from observed behavior and third-party interpretation;
- verify current search-engine/vendor behavior when a rule depends on a changing platform;
- preserve canonical URL, indexing, redirect, metadata, sitemap, feed, and structured-data contracts during implementation changes;
- keep structured data consistent with visible content;
- treat technical regressions as observable behavior changes, not documentation-only defects;
- define mechanical validation where practical.

Agents MUST NOT:

- guarantee rankings or rich-result display;
- label all pages with the same schema type for convenience;
- add fabricated entities, reviews, dates, locations, authorship, or relationships to structured data;
- hide primary crawlable content behind client-only rendering when governing WDBASIC contracts require server-owned content;
- change canonicalization or URL behavior incidentally during unrelated work.

## Contracts

Stable technical rules SHOULD be formalized under `contracts/` within this domain when repeated implementations need the same behavior.

## Cross-domain routing

Read website, entity, local-search, and WDBASIC contracts whenever a technical change alters those surfaces.

## Changelog

Material technical-framework changes require an entry in [`../CHANGELOG.md`](../CHANGELOG.md).
