# AI Search Crawlers, Retrieval Access, and Discovery Controls

> **Status:** Technical/platform-specific guidance  
> **Scope:** Crawling, indexing, robots controls, search-specific AI crawlers, snippet/preview controls, sitemaps, IndexNow and related inclusion/exclusion mechanics for answer/generative discovery  
> **Last reviewed:** 2026-08-14

AI/search discovery controls are **platform-specific**. Do not treat one crawler name, robots rule or indexing path as a universal AI-discovery standard.

## Core distinction

```text
crawl permission
    ≠ indexing guarantee
    ≠ retrieval guarantee
    ≠ citation guarantee
    ≠ ranking/placement guarantee
    ≠ model-training permission
```

A crawler can be allowed while a page is not selected. A page can be indexed without being cited. Search crawling and model-training controls may use different user agents or policies.

## Google Search / AI Overviews / AI Mode

Google currently documents its generative Search features as using Google Search's existing crawling/indexing/ranking systems.

### Crawler

Googlebot remains the primary Search crawler.

Official source:

- https://developers.google.com/search/docs/crawling-indexing/googlebot

Google states that blocking Googlebot affects Google Search, including Google Search features.

### Eligibility

For a page to be eligible as a supporting link in AI Overviews or AI Mode, Google states that it must be indexed and eligible to appear in Search with a snippet. There is no separate documented AEO/GEO crawler requirement.

Sources:

- https://developers.google.com/search/docs/appearance/ai-features
- https://developers.google.com/search/docs/fundamentals/ai-optimization-guide

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

OpenAI states that publishers who want their public content discoverable, surfaced, clearly cited and linked in ChatGPT search summaries/snippets should not block **`OAI-SearchBot`**.

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

Perplexity documents crawler/IP details and states that its different crawler settings operate independently. Verify current documentation before configuring production controls.

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
  robots_allowed: true | false | unknown
  http_access: <status-or-result>
  index_control: <index|noindex|platform-specific|unknown>
  snippet_control: <value-or-unknown>
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
- promise citation after crawler access is enabled;
- treat `llms.txt` as a universal AI crawler-control standard;
- spoof or trust user-agent strings without verification when security matters.

## Governing rule

> **Control each documented crawler for its documented purpose. Preserve the difference between access, indexing, retrieval, citation, ranking and training.**