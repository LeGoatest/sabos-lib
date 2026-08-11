# SEObasic Technical Agent Instructions

> **Scope:** `SEObasic/docs/technical/`  
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
- conflate the legacy `<meta name="keywords">` field with legitimate keyword/topic language in visible page content.

## Legacy metadata rule

When a tag/directive is retained as historical or legacy knowledge, record:

1. its historical purpose;
2. the named platform/consumer whose current behavior is being described;
3. whether it is ignored, unsupported, deprecated, or simply no longer used for the stated purpose;
4. whether another consumer may still require it;
5. the authoritative/current evidence supporting the status.

Prefer **“unused by Google Search”** over an unsupported universal statement such as **“nobody uses this.”**

See [`metadata.md`](metadata.md) for the current metadata-status model and legacy examples.

## Contracts

Stable technical rules SHOULD be formalized under `contracts/` within this domain when repeated implementations need the same behavior.

## Cross-domain routing

Read website, entity, local-search, and WDBASIC contracts whenever a technical change alters those surfaces.

For current keyword/topic-language use in visible website content, read [`../websites/keyword-use.md`](../websites/keyword-use.md). Do not infer that keywords themselves are obsolete because the `meta keywords` tag is legacy.

## Changelog

Material technical-framework changes require an entry in [`../../CHANGELOG.md`](../../CHANGELOG.md).
