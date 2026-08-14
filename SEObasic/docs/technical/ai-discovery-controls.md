# AI Search Crawlers, Retrieval Access, and Discovery Controls

> **Status:** Technical/platform-specific guidance  
> **Scope:** Crawling, indexing, URL discovery, robots controls, search-specific AI crawlers, snippet/preview controls, sitemaps, IndexNow and related inclusion/exclusion mechanics for answer/generative discovery  
> **Last reviewed:** 2026-08-14

AI/search discovery controls are **platform-specific**. Do not treat one crawler name, robots rule or indexing path as a universal AI-discovery standard.

Read the binding [`Evidence Classification Contract`](../contracts/evidence-classification.md) when making platform-support claims.

## Core distinction

```text
URL discovery
    ≠ crawler/content access
    ≠ indexing eligibility
    ≠ retrieval/source selection
    ≠ citation/link presentation
    ≠ ranking/placement
    ≠ snippet/summary generation
    ≠ model-training permission
```

A crawler can be allowed while a page is not selected. A page can be indexed without being cited. A platform can learn that a URL exists through a path other than its direct content crawler. Search crawling and model-training controls may use different user agents, directives, or policies.

## Google Search / AI Overviews / AI Mode

Google currently documents its generative Search features as using Google Search's existing crawling/indexing/ranking systems.

### Crawler

Googlebot remains the primary Search crawler.

Official source:

- https://developers.google.com/search/docs/crawling-indexing/googlebot

Google states that blocking Googlebot affects Google Search, including Google Search features.

### Eligibility

Google's current generative-Search guidance describes more than one eligibility layer:

1. A page must satisfy normal Google Search technical/indexing requirements and be indexed/eligible to appear in Search with a snippet for supporting-link eligibility.
2. Google's current rollout/guidance also refers to the site being included in Search generative AI features in Search Console.

Meeting these conditions does **not** guarantee retrieval, citation, linking, ranking, or display.

There is no separate documented AEO/GEO crawler requirement for Google's generative Search features.

Sources:

- https://developers.google.com/search/docs/appearance/ai-features
- https://developers.google.com/search/docs/fundamentals/ai-optimization-guide
- https://developers.google.com/search/blog/2026/06/gen-ai-performance-reports

Because Search Console generative reporting/eligibility is evolving, re-check Google's current documentation before treating a specific property as eligible or ineligible.

### Robots/index controls

Use normal Google Search controls:

- robots.txt for crawl access;
- `noindex` for indexing exclusion when Google can crawl/read the directive;
- robots meta/X-Robots-Tag for serving/snippet controls.

Sources:

- https://developers.google.com/search/docs/crawling-indexing/robots/intro
- https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag

### `llms.txt`

Google currently states that Google Search does not use `llms.txt` for Search/generative Search visibility. Do not add it as a Google AEO/GEO requirement.

Source:

- https://developers.google.com/search/docs/fundamentals/ai-optimization-guide

## Microsoft Bing / Copilot

### Crawler

Bing documents **Bingbot** as its standard crawler.

Sources:

- https://www.bing.com/webmasters/help/help/which-crawlers-does-bing-use-8c184ec0
- https://www.bing.com/webmasters/help/how-to-report-an-issue-with-bingbot-25c19802

### robots.txt

Bingbot honors robots.txt and Bing Webmaster Tools crawl controls.

Source:

- https://www.bing.com/webmasters/help/how-to-create-a-robots-txt-file-cb7c31ec

### Index/noindex controls

Bing documents robots meta tags and X-Robots-Tag controls, including `noindex` and snippet-related directives.

Source:

- https://www.bing.com/webmasters/help/robots-meta-tags-and-attributes-that-bing-supports-5198d240

### `noarchive` and `nocache`

Do not inherit Google's current `noarchive`/`nocache` status into Bing.

Microsoft/Bing documentation assigns current Bing/Copilot-related behavior to these directives, including restrictions on generative presentation/content use under the documented conditions. Their exact semantics MUST be checked against current Microsoft documentation before production changes.

Sources:

- https://www.bing.com/webmasters/help/robots-meta-tags-and-attributes-that-bing-supports-5198d240
- https://blogs.bing.com/webmaster/september-2023/Announcing-new-options-for-webmasters-to-control-usage-of-their-content-in-Bing-Chat

This is a canonical example of why:

```text
unused by Google
    ≠ unused by Bing
```

### `data-nosnippet`

Bing added support for the `data-nosnippet` HTML attribute in 2025 to keep selected page content out of Bing Search snippets and AI-generated previews while preserving the rest of the page's discoverability under Bing's documented behavior.

Source:

- https://blogs.bing.com/webmaster/October-2025/Bing-Introduces-Support-for-the-data-nosnippet-HTML-Attribute

### Sitemaps and IndexNow

Bing recommends XML sitemaps for coverage and accurate `lastmod` values for freshness, and IndexNow for timely URL-change notification.

Sources:

- https://blogs.bing.com/webmaster/July-2025/Keeping-Content-Discoverable-with-Sitemaps-in-AI-Powered-Search
- https://www.indexnow.org/documentation

A successful IndexNow response indicates that the URL notification was received; it does not guarantee crawling, indexing, ranking or AI citation.

## OpenAI / ChatGPT search

### Search crawler: `OAI-SearchBot`

OpenAI states that publishers who want public content discoverable, surfaced, clearly cited and linked in ChatGPT search summaries/snippets should not block **`OAI-SearchBot`**.

Primary source:

- https://help.openai.com/en/articles/12627856-publishers-and-developers-faq

Example robots rule when a publisher intentionally allows ChatGPT search crawling:

```text
User-agent: OAI-SearchBot
Allow: /
```

Do not add this blindly. Confirm the site's publishing/content-use policy and current OpenAI documentation first.

### Searchbot IP/resource data

- https://openai.com/searchbot.json

### URL discovery versus content inclusion

Blocking `OAI-SearchBot` does **not** prove that OpenAI cannot learn that a URL exists through another documented discovery path.

OpenAI's publisher documentation describes cases where a disallowed page URL may still be learned through another source, with a link/title potentially surfaced even though normal page-content inclusion/summarization is restricted.

Therefore preserve these states separately:

```text
URL known/discovered
    ≠ page crawled by OAI-SearchBot
    ≠ page content available for summary/snippet generation
    ≠ page visibly cited/linked
    ≠ model-training permission
```

Do not infer more than the current OpenAI documentation establishes for the specific surface.

### `noindex`

OpenAI's publisher FAQ documents `noindex` as relevant when publishers do not want pages surfaced from known URLs in the described search/Atlas behavior. Because a crawler must access a page to read its meta directive, do not assume a robots.txt block and `noindex` are interchangeable.

Source:

- https://help.openai.com/en/articles/12627856-publishers-and-developers-faq

### Search crawling versus training

Do not treat `OAI-SearchBot` as a generic control for every OpenAI use of web content. OpenAI documents crawler purposes separately. Preserve the current user-agent/purpose distinction from official OpenAI documentation rather than inferring it.

## Perplexity

### Search crawler: `PerplexityBot`

Perplexity states that **`PerplexityBot`** is designed to surface and link websites in Perplexity search results and is not used to crawl content for AI foundation models.

Source:

- https://docs.perplexity.ai/docs/resources/perplexity-crawlers

Example when a publisher intentionally allows Perplexity search discovery:

```text
User-agent: PerplexityBot
Allow: /
```

Perplexity documents multiple crawler/user-agent purposes. Do not use `PerplexityBot` as shorthand for every possible Perplexity fetch path. Verify current crawler/IP documentation before configuring production controls.

## Robots Exclusion Protocol baseline

The standards-level baseline for robots.txt is the IETF Robots Exclusion Protocol:

- RFC 9309: https://www.rfc-editor.org/rfc/rfc9309

Platform-specific extensions, crawler tokens and non-standard directives should be documented as platform-specific rather than attributed to RFC 9309 universally.

## Sitemap baseline

- Sitemap protocol: https://www.sitemaps.org/protocol.html

A sitemap communicates discoverable URLs and selected metadata. It does not guarantee indexing, answer inclusion or citation.

## IndexNow baseline

IndexNow provides participating search engines with URL-change notifications.

Official resources:

- https://www.indexnow.org/documentation
- https://www.indexnow.org/faq
- https://www.indexnow.org/searchengines

Treat IndexNow as a discovery/freshness notification protocol, not an AI-ranking mechanism.

## Access-control audit model

When auditing AI/search discovery access, record the platform and crawler explicitly:

```yaml
discovery_access:
  platform: <google|bing|openai|perplexity|other>
  surface: <search-or-ai-surface>
  crawler: <documented-user-agent-or-unknown>
  url_discovered: true | false | unknown
  robots_allowed: true | false | unknown
  http_access: <status-or-result>
  index_control: <index|noindex|platform-specific|unknown>
  snippet_control: <value-or-unknown>
  training_control: <value-or-unknown>
  sitemap_present: true | false | not-applicable
  indexnow_used: true | false | not-applicable
  verified_platform_source: <url>
  reviewed_at: <ISO-date>
```

## WAF/CDN/bot protection

A robots.txt allow rule does not guarantee technical access. WAFs, CDNs, bot mitigation, authentication, CAPTCHAs, rate limiting, geographic restrictions and JavaScript challenges can independently block a crawler.

When a documented crawler should have access but does not:

1. verify the user agent/IP using the platform's published mechanism;
2. inspect HTTP status codes and server/CDN logs;
3. inspect robots.txt;
4. inspect WAF/bot-management rules;
5. inspect authentication/challenge requirements;
6. retest using platform-provided tools where available.

## Anti-patterns

Do not:

- allow every bot solely because “GEO needs it”;
- block all AI-named bots without distinguishing search discovery from training or other purposes;
- claim that one robots rule covers Google, Bing, ChatGPT and Perplexity;
- use `noindex` and robots.txt interchangeably;
- infer that a blocked search crawler means the platform cannot know the URL exists;
- promise citation after crawler access is enabled;
- treat `llms.txt` as a universal AI crawler-control standard;
- spoof or trust user-agent strings without verification when security matters.

## Governing rule

> **Control each documented crawler for its documented purpose. Preserve the difference between URL discovery, content access, indexing, retrieval, citation, ranking, snippets/summaries, and training.**
