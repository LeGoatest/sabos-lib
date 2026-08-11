# SEObasic Websites Agent Instructions

> **Scope:** `SEObasic/docs/websites/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

Agents working on website strategy MUST distinguish search/content guidance from WDBASIC implementation authority.

## Required cross-reading

Read applicable:

- [`../content/AGENTS.md`](../content/AGENTS.md) for content philosophy;
- [`../technical/AGENTS.md`](../technical/AGENTS.md) for crawl/index/metadata mechanics;
- [`../entities/AGENTS.md`](../entities/AGENTS.md) for internal relationships;
- [`../local-search/AGENTS.md`](../local-search/AGENTS.md) for local intent;
- [`../../../Wdbasic/AGENTS.md`](../../../Wdbasic/AGENTS.md) when implementation architecture, accessibility, security, forms, or progressive enhancement are affected.

## Preserve

Agents MUST:

- preserve useful, natural topic/search language in visible page content when it accurately describes the page;
- distinguish current on-page keyword use from the legacy `<meta name="keywords">` field;
- keep URLs, titles, headings, body content, link text, and alt text aligned with their real semantic/user purpose rather than treating them as keyword containers;
- evaluate search intent and content usefulness rather than targeting an arbitrary keyword-density percentage.

Agents MUST NOT:

- turn every website page into an SEO landing page;
- generate mass location/service pages without meaningful differentiation;
- change established positioning, service taxonomy, site architecture, or conversion paths merely to fit a generic SEO template;
- duplicate complete channel content when a canonical first-party source and channel-specific adaptation would be clearer;
- imply services, locations, credentials, proof, or customer outcomes the business cannot substantiate;
- remove legitimate topic terms merely because `meta keywords` is obsolete;
- add hidden keyword fields or unnatural repetition under the assumption that more occurrences automatically improve ranking;
- create headings, alt text, anchor text, city lists, or body paragraphs primarily to stuff keyword variants.

See [`keyword-use.md`](keyword-use.md) for current on-page guidance and [`../technical/metadata.md`](../technical/metadata.md) for metadata/legacy status.

## Contracts

Website contracts SHOULD capture stable obligations such as page-purpose clarity, truthful service/location representation, canonical first-party content, internal-link relationships, conversion-path integrity, and landing-page/channel alignment.

## Changelog

Material changes require an entry in [`../../CHANGELOG.md`](../../CHANGELOG.md).
