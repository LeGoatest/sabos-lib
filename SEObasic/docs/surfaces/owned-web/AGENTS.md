# SEObasic Owned Web Agent Instructions

> **Scope:** `SEObasic/docs/surfaces/owned-web/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

Agents working on the owned-web surface MUST distinguish search/content strategy from WDBASIC implementation authority.

## Required cross-reading

Read applicable:

- [`../../strategies/content/AGENTS.md`](../../strategies/content/AGENTS.md) for content philosophy/strategy;
- [`technical/AGENTS.md`](technical/AGENTS.md) for owned-web metadata/structured-data mechanics;
- [`../../strategies/entity-relationships/AGENTS.md`](../../strategies/entity-relationships/AGENTS.md) for internal relationships;
- [`../local-maps/AGENTS.md`](../local-maps/AGENTS.md) for local/maps surface mechanics;
- [`../../strategies/on-page/keyword-use.md`](../../strategies/on-page/keyword-use.md) for current on-page topic/keyword guidance;
- [`../../../../Wdbasic/AGENTS.md`](../../../../Wdbasic/AGENTS.md) when implementation architecture, accessibility, security, forms, semantics, resilience, or progressive enhancement are affected.

## Preserve

Agents MUST:

- preserve useful, natural topic/search language in visible page content when it accurately describes the page;
- distinguish current on-page keyword use from the Google-unused `<meta name="keywords">` field;
- keep URLs, titles, headings, body content, link text, and alt text aligned with their real semantic/user purpose rather than treating them as keyword containers;
- evaluate search intent and content usefulness rather than targeting an arbitrary keyword-density percentage.

Agents MUST NOT:

- turn every website page into an SEO landing page;
- generate mass location/service pages without meaningful differentiation;
- change established positioning, service taxonomy, site architecture, or conversion paths merely to fit a generic SEO template;
- duplicate complete surface content when a canonical first-party source and surface-specific adaptation would be clearer;
- imply services, locations, credentials, proof, or customer outcomes the business cannot substantiate;
- remove legitimate topic terms merely because `meta keywords` is unused by Google Search;
- add hidden keyword fields or unnatural repetition under the assumption that more occurrences automatically improve ranking;
- create headings, alt text, anchor text, city lists, or body paragraphs primarily to stuff keyword variants.

See [`../../strategies/on-page/keyword-use.md`](../../strategies/on-page/keyword-use.md) for current on-page guidance and [`technical/metadata.md`](technical/metadata.md) for metadata/consumer-specific legacy status.

## Surface boundary

Owned web is a surface. Cross-channel content/discovery methods belong under [`../../strategies/`](../../strategies/README.md), while platform/research support belongs under [`../../evidence/`](../../evidence/README.md). Do not turn an owned-web tactic into a universal rule for Maps, social, paid, YouTube, or generative search.

## Changelog

Material changes require an entry in [`../../../CHANGELOG.md`](../../../CHANGELOG.md).
