# AI Search and Generative Discovery Platform Guidance

> **Status:** Platform/vendor guidance registry  
> **Scope:** Current publisher/webmaster guidance for answer-oriented and generative search/discovery systems  
> **Last reviewed:** 2026-08-14

This document records **platform-owned guidance** separately from SEObasic practitioner positions and academic GEO/AEO research.

Platform behavior changes quickly. Re-check the official source before treating any crawler, reporting field, indexing requirement or optimization recommendation as current.

Claims in this registry are governed by the binding [`Evidence Classification Contract`](../contracts/evidence-classification.md): consumer, surface, purpose, source, and review date matter.

## Google Search

### Current position on AEO/GEO

Google explicitly acknowledges the industry terms **AEO (Answer Engine Optimization)** and **GEO (Generative Engine Optimization)**, while stating that from Google Search's perspective, optimizing for generative AI search remains SEO because its generative Search features are rooted in core Search ranking and quality systems.

Primary source:

- Google Search Central — *Optimizing your website for generative AI features on Google Search*  
  https://developers.google.com/search/docs/fundamentals/ai-optimization-guide

### AI Overviews and AI Mode eligibility

Google states that foundational SEO best practices continue to apply. Current guidance describes at least two relevant eligibility layers:

1. a page must satisfy normal Google Search technical/indexing requirements and be indexed/eligible to be shown in Search with a snippet for supporting-link eligibility;
2. Google's current rollout/guidance also refers to the site being included in Search generative AI features in Search Console.

These conditions are **eligibility conditions, not guarantees of retrieval, citation, linking, ranking, or display**. Google states there is no separately documented AI-only technical optimization stack for these features.

Sources:

- https://developers.google.com/search/docs/appearance/ai-features
- https://developers.google.com/search/docs/fundamentals/ai-optimization-guide
- https://developers.google.com/search/blog/2026/06/gen-ai-performance-reports

Because Search Console generative reporting/eligibility is evolving, verify the current rollout and property status before making implementation claims.

### Google myth-busting / unsupported special requirements

Google currently states that for Google Search generative AI features:

- `llms.txt` is not used by Google Search and does not improve visibility/rankings there;
- special AI-only machine-readable files or markup are not required;
- special schema.org markup for AI Overviews/AI Mode is not required;
- content does not need to be “chunked” into tiny fragments for AI understanding;
- writing in a special AI-specific style is not required;
- publishers should not manufacture inauthentic mentions;
- creating separate pages for every possible query/fan-out variation primarily to manipulate ranking/generative responses can conflict with scaled-content-abuse policy.

Source:

- https://developers.google.com/search/docs/fundamentals/ai-optimization-guide

### Google content guidance

Google emphasizes unique, valuable, non-commodity, helpful and people-first content, including first-hand perspective where relevant, clear organization, and useful images/video.

Sources:

- https://developers.google.com/search/docs/fundamentals/ai-optimization-guide
- https://developers.google.com/search/blog/2025/05/succeeding-in-ai-search
- https://developers.google.com/search/docs/fundamentals/creating-helpful-content
- https://developers.google.com/search/docs/fundamentals/using-gen-ai-content
- https://developers.google.com/search/docs/essentials
- https://developers.google.com/search/docs/essentials/spam-policies

### Crawling and indexing

Google generative Search visibility uses Google's Search crawl/index systems rather than a separate documented AEO/GEO crawler.

Sources:

- Googlebot: https://developers.google.com/search/docs/crawling-indexing/googlebot
- Search technical requirements: https://developers.google.com/search/docs/essentials/technical
- Robots controls: https://developers.google.com/search/docs/crawling-indexing/robots/intro
- Robots meta/X-Robots-Tag: https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag

### Structured data

Google continues to support structured data for eligible Search features but says no special structured-data type is required specifically for generative AI Search.

Sources:

- https://developers.google.com/search/docs/appearance/structured-data/intro-structured-data
- https://developers.google.com/search/docs/fundamentals/ai-optimization-guide

### Measurement

Google introduced dedicated Generative AI performance reporting in Search Console in 2026, initially rolling it out to a subset of websites. Because rollout/status may change, verify current Search Console availability before promising a report exists for a particular property.

Source:

- https://developers.google.com/search/blog/2026/06/gen-ai-performance-reports

Additional Search appearance reference:

- https://developers.google.com/search/docs/appearance

## Microsoft Bing / Copilot

### AI Performance in Bing Webmaster Tools

Microsoft introduced **AI Performance** in Bing Webmaster Tools public preview in February 2026. Microsoft describes it as reporting how publisher content appears across supported AI experiences such as Microsoft Copilot, Bing AI-generated summaries and select partner integrations.

Microsoft's documented fields include:

- total citations;
- average cited pages;
- grounding queries;
- page-level citation activity;
- visibility trends over time.

Microsoft explicitly notes that citation activity does not by itself indicate ranking, authority, page importance or the role of a page within an answer.

Primary source:

- https://blogs.bing.com/webmaster/February-2026/Introducing-AI-Performance-in-Bing-Webmaster-Tools-Public-Preview

### Bing crawling/indexing

Bing documents `Bingbot` as its standard crawler and honors robots.txt controls.

Sources:

- Bing crawler overview: https://www.bing.com/webmasters/help/help/which-crawlers-does-bing-use-8c184ec0
- Bingbot issues/control: https://www.bing.com/webmasters/help/how-to-report-an-issue-with-bingbot-25c19802
- robots.txt: https://www.bing.com/webmasters/help/how-to-create-a-robots-txt-file-cb7c31ec

### Sitemaps and AI search

Bing states that XML sitemaps and accurate `lastmod` values remain useful for discovery/freshness in its search and AI-powered experiences. It also recommends IndexNow for timely URL-change notification.

Source:

- https://blogs.bing.com/webmaster/July-2025/Keeping-Content-Discoverable-with-Sitemaps-in-AI-Powered-Search

### IndexNow

IndexNow is a protocol for notifying participating search engines when URLs are added, updated or deleted. A successful submission confirms receipt, not indexing or ranking.

Primary protocol sources:

- https://www.indexnow.org/documentation
- https://www.indexnow.org/faq
- https://www.indexnow.org/searchengines

### Snippet/AI answer controls

Bing documents robots meta/X-Robots-Tag controls and introduced `data-nosnippet` support for excluding marked content from Bing snippets and AI-generated previews while retaining discoverability under the documented conditions.

Importantly, **Google's current status for `noarchive` or `nocache` must not be copied into Bing**. Microsoft documents current Bing/Copilot-related semantics for these directives, including restrictions on generative presentation/content use under the documented conditions.

Sources:

- Bing robots meta support: https://www.bing.com/webmasters/help/robots-meta-tags-and-attributes-that-bing-supports-5198d240
- `data-nosnippet`: https://blogs.bing.com/webmaster/October-2025/Bing-Introduces-Support-for-the-data-nosnippet-HTML-Attribute
- Bing AI-content controls: https://blogs.bing.com/webmaster/september-2023/Announcing-new-options-for-webmasters-to-control-usage-of-their-content-in-Bing-Chat

Consumer-scoped rule:

```text
unused by Google Search
    ≠ unused by Bing/Copilot
```

### General Bing Webmaster Tools

- https://www.bing.com/webmasters/
- https://blogs.bing.com/webmaster/June-2025/Start-Using-Bing-Webmaster-Tools-to-Improve-Your-Site-Visibility

## OpenAI / ChatGPT search

### Discoverability in ChatGPT search

OpenAI states that any public website can appear in ChatGPT search and advises publishers who want content discoverable, surfaced, clearly cited and linked in ChatGPT summaries/snippets not to block **`OAI-SearchBot`**.

OpenAI also states that allowing OAI-SearchBot does not guarantee top placement.

Primary source:

- OpenAI Publishers and Developers FAQ: https://help.openai.com/en/articles/12627856-publishers-and-developers-faq

### URL discovery is not identical to SearchBot content access

Do not interpret a block on `OAI-SearchBot` as proof that OpenAI cannot learn that a URL exists.

OpenAI's publisher documentation describes cases where a URL may be learned through another path and a link/title may still be surfaced even when normal page-content inclusion/summarization is restricted.

Preserve these states separately:

```text
URL discovery
    ≠ OAI-SearchBot page-content access
    ≠ summary/snippet inclusion
    ≠ visible citation/link presentation
    ≠ training permission
```

This distinction is surface-specific and must not be generalized beyond current OpenAI documentation.

### Referral tracking

OpenAI documents use of the `utm_source=chatgpt.com` parameter on referral URLs from ChatGPT search so publishers can analyze referral traffic.

Source:

- https://help.openai.com/en/articles/12627856-publishers-and-developers-faq

### Search crawler verification

OpenAI publishes crawler information/IP data for OAI-SearchBot.

Resources:

- https://openai.com/searchbot.json
- https://help.openai.com/en/articles/12627856-publishers-and-developers-faq

### Search crawling is not a universal OpenAI-content-use control

Search discoverability and model-training controls should not be casually conflated. Preserve the exact crawler/control purpose documented by OpenAI when configuring robots rules.

## Perplexity

Perplexity documents multiple crawlers with separate purposes.

### `PerplexityBot`

Perplexity states that `PerplexityBot` is designed to surface and link websites in Perplexity search results and is **not** used to crawl content for AI foundation models.

Primary source:

- https://docs.perplexity.ai/docs/resources/perplexity-crawlers

Perplexity recommends allowing `PerplexityBot` in robots.txt when a publisher wants a site to appear in its search results, subject to the platform's current documentation and technical access controls.

Do not use `PerplexityBot` as shorthand for every Perplexity crawler/fetch path; preserve the purpose of each documented agent separately.

## Shared web/protocol standards

### Robots Exclusion Protocol

For standards-level robots.txt behavior, use the IETF Robots Exclusion Protocol specification rather than relying only on one search engine's examples.

- RFC 9309: https://www.rfc-editor.org/rfc/rfc9309

Individual platforms may support additional directives beyond the base protocol; those extensions remain platform-specific.

### Sitemaps

- Sitemap protocol: https://www.sitemaps.org/protocol.html

### Schema.org

- https://schema.org/

Schema.org vocabulary availability is not evidence that a specific search/AI platform uses a property for ranking, answer selection or a particular presentation. Use the platform's own structured-data documentation for platform support.

## Source-authority rule

When sources conflict about **current platform behavior**, prefer:

1. current official platform documentation/policy;
2. current official webmaster/search product announcements;
3. formal web/protocol specifications within their scope;
4. primary research as evidence about observed/experimental behavior;
5. practitioner observation;
6. third-party SEO/AEO/GEO claims.

This ordering is contextual, not a license to let a platform redefine a formal standard outside the platform's scope.

A platform's statement about its own system does not automatically describe another platform.

## Review triggers

Re-review this registry when any of the following changes:

- crawler/user-agent documentation;
- AI Search/Copilot/ChatGPT/Perplexity inclusion controls;
- Google AI Overview/AI Mode requirements;
- Search Console or Bing Webmaster Tools generative reporting;
- Bing robots-meta/Copilot content-use semantics;
- structured-data requirements;
- `llms.txt` or another proposed machine-readable convention gains documented platform adoption;
- robots/snippet controls change;
- new AI search/answer surfaces become material to SEObasic.
