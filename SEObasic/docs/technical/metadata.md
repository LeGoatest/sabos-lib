# Metadata and Head Elements

> **Status:** Technical SEO guidance  
> **Scope:** Search presentation metadata, indexing/serving controls, canonical URL signals, document/browser metadata, social-sharing metadata, and consumer-specific legacy/unused behavior  
> **Primary platform basis:** Google Search documentation unless another consumer is named explicitly

Metadata must be classified by the system that defines or consumes it. Not every element in `<head>` is an SEO ranking signal, and a historically familiar tag must not be treated as current for a particular search purpose merely because the underlying HTML syntax remains valid.

Read the binding [`Evidence Classification Contract`](../contracts/evidence-classification.md) before assigning `legacy`, `unused`, `obsolete`, or other broad support labels.

## Status model

SEObasic separates **standards-layer status** from **consumer-layer status**.

| Status | Meaning |
| --- | --- |
| **Standards-defined** | The element/name/directive remains defined by the applicable formal/living standard or specification. |
| **Current — `<consumer>/<purpose>`** | The named consumer currently documents or uses the element/directive for the stated purpose. |
| **Platform-specific** | Used by a named platform/protocol; it is not automatically a search-ranking signal or universal behavior. |
| **Document/browser** | Important to HTML/browser behavior, but not itself a search-ranking directive. |
| **Unused / historical — `<consumer>/<purpose>`** | The named consumer explicitly does not use it for that stated purpose, or the prior purpose no longer exists. |

Do not collapse these into one global status. A metadata name can remain standards-defined while a particular search engine ignores it for ranking. A directive unused by one search engine can still have current semantics for another.

## Search presentation metadata

### `<title>`

**Status:** Current — Google Search presentation source and document title.

```html
<title>Example service in Clearwater | Example Company</title>
```

The document title is an important source Google may use when generating a search-result title link. It is not a guarantee that the exact `<title>` text will be displayed; search systems may generate a different title from other page signals.

The title should describe the actual page rather than function as a keyword container.

### `<meta name="description">`

**Status:** Current — Google may use it when generating a search-result snippet.

```html
<meta name="description" content="A concise and accurate description of the page.">
```

The description is a snippet candidate, not a guaranteed search-result description and not a general ranking field. It should summarize the actual page content accurately.

## Indexing and serving controls

### `<meta name="robots">`

**Status:** Current, with directive semantics depending on the consumer.

```html
<meta name="robots" content="index,follow">
```

Robots metadata can control page-level indexing and serving behavior. Supported directives and their semantics differ by search engine. For Google Search, current directives include controls such as `noindex`, `nofollow`, `nosnippet`, `max-snippet`, `max-image-preview`, and related serving rules.

Do not add `index,follow` merely for decoration when it only expresses the default behavior.

### `<meta name="googlebot">`

**Status:** Current — Google-specific.

```html
<meta name="googlebot" content="nosnippet">
```

Use a crawler-specific directive only when behavior intentionally differs from the general robots directive.

### `X-Robots-Tag`

**Status:** Current — HTTP response control with consumer-specific directive support.

`X-Robots-Tag` is not an HTML meta element, but belongs in the same indexing-control model. It is especially useful for non-HTML resources such as PDFs, images, or other files where an HTML `<meta>` element cannot be used.

## Canonical URL metadata

### `<link rel="canonical">`

**Status:** Current canonicalization signal for supporting search engines.

```html
<link rel="canonical" href="https://example.com/preferred-url">
```

The canonical link identifies the preferred representative URL for duplicate or substantially similar content. It is a canonicalization signal, not a mechanism for avoiding a generic “duplicate-content penalty.”

Canonical declarations must agree with the site's real URL/content architecture and should not be used to disguise unrelated pages as duplicates.

## Document and responsive metadata

These elements belong in the technical `<head>` model but should not be mislabeled as direct SEO ranking tags.

### `<meta charset="utf-8">`

**Status:** Document/browser metadata.

```html
<meta charset="utf-8">
```

Declares the document character encoding.

### `<meta name="viewport">`

**Status:** Document/browser and responsive-layout metadata.

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

Controls viewport sizing/scaling behavior used for responsive rendering. It is important to usable mobile presentation, but SEObasic does not classify it as a direct search-ranking metadata field.

## Social-sharing metadata

Social metadata is platform/protocol metadata. It must not be described as search-ranking metadata merely because it lives in `<head>`.

### Open Graph

**Status:** Platform/protocol-specific.

Core Open Graph properties include:

```html
<meta property="og:title" content="Example title">
<meta property="og:type" content="website">
<meta property="og:url" content="https://example.com/page">
<meta property="og:image" content="https://example.com/image.jpg">
```

Common additional properties include:

```html
<meta property="og:description" content="Example description">
<meta property="og:image:alt" content="Description of the share image">
<meta property="og:site_name" content="Example Company">
<meta property="og:locale" content="en_US">
```

The Open Graph protocol defines `og:title`, `og:type`, `og:image`, and `og:url` as the four basic required properties for graph objects.

### X / Twitter Card metadata

**Status:** Platform-specific.

A card declaration commonly begins with:

```html
<meta name="twitter:card" content="summary_large_image">
```

Platform-specific title, description, image, and related fields should be documented against the current platform implementation when used. Do not assume that social-card metadata affects organic search ranking.

## Consumer-specific historical and unused search metadata

Entries remain documented deliberately so maintainers can see **which consumer stopped using what, for which purpose**, rather than treating absence as an oversight.

### `<meta name="keywords">`

**HTML status:** **Standards-defined** — `keywords` remains a metadata name in the WHATWG HTML Living Standard.  
**Google Search status:** **Unused for Google web-search ranking.**  
**SEObasic Google-SEO status:** **Do not implement or populate it as a Google SEO optimization field.**

```html
<meta name="keywords" content="keyword one, keyword two, keyword three">
```

Historically, the keywords meta tag was used to declare page keywords to search systems. Its continued definition by HTML does **not** imply that Google Search uses it as a ranking signal.

Google Search explicitly states that it disregards the meta-keywords tag for web-search ranking.

SEObasic rule:

- Do **not** add or populate `meta keywords` for Google SEO.
- Do **not** treat its presence as evidence of modern keyword optimization.
- Do **not** spend Google-SEO audit/remediation effort populating it.
- Do **not** describe the HTML metadata name itself as removed or invalid merely because Google ignores it.
- If a CMS, internal search product, or another named consumer requires it, document that consumer and purpose explicitly.

### `<link rel="next">` / `<link rel="prev">`

**Google Search status:** **Unused by Google Search for indexing.**

```html
<link rel="next" href="https://example.com/page/2">
<link rel="prev" href="https://example.com/page/1">
```

Google Search documents these link relationships as no longer used for indexing. Do not add them under the assumption that they provide a Google pagination/indexing signal.

They may still have meaning in other standards, software, accessibility, navigation, or application contexts; this status is specifically about Google Search consumption.

### `nositelinkssearchbox`

**Google Search status:** **Historical / unused by Google Search.**

```html
<meta name="google" content="nositelinkssearchbox">
```

Google Search no longer uses this rule because the sitelinks search box feature it controlled no longer exists.

Do not retain or add this tag as a current Google Search requirement.

### Robots rule `noarchive`

**Google Search status:** **Historical / unused for Google's former cached-result-link purpose.**  
**Bing/Copilot status:** **Current consumer-specific semantics are documented by Microsoft.**

Google no longer uses `noarchive` to control cached-result links because that cached-link feature no longer exists.

Microsoft/Bing documentation gives `noarchive` current Bing/Copilot-related semantics, including restrictions on how content may be used or linked in its generative experiences and documented model-training controls. Therefore `noarchive` MUST NOT be globally classified as a dead directive merely because Google no longer uses it.

Current Bing behavior must be checked against Microsoft's official robots-meta documentation before production changes.

### Robots rule `nocache`

**Google Search status:** **Ignored by Google Search.**  
**Bing/Copilot status:** **Current consumer-specific semantics are documented by Microsoft.**

Google Search documents `nocache` as ignored.

Microsoft/Bing documentation assigns current Bing/Copilot behavior to `nocache`, including more limited generative presentation under the documented conditions. Therefore `nocache` MUST NOT be globally classified as unused without naming the consumer and purpose.

## Consumer-specific removal rule

“Unused by Google Search” does not mean “unused everywhere” or “delete immediately.” Before removing an existing metadata element or directive from a production system:

1. Identify its standards/specification status where relevant.
2. Identify each material consumer, surface, and purpose.
3. Confirm current support from primary platform documentation.
4. Confirm whether removal changes any non-Google, browser, CMS, internal-search, AI/search, or downstream behavior.
5. Remove it only when no required consumer remains, or retain it with a documented current purpose.

This prevents two opposite errors:

- preserving dead behavior because it looks like SEO; and
- deleting behavior merely because one search engine no longer consumes it.

## Implementation classification

When auditing `<head>` metadata or related directives, record at least:

```yaml
metadata:
  element: <tag-or-directive>
  standards_status: <defined|not-applicable|unknown>
  consumer: <google-search|bing|open-graph|x|browser|other>
  surface: <search|copilot|social|browser|other>
  purpose: <rank|snippet|index|canonicalization|training|presentation|other>
  support_status: <current|unused|historical|unknown>
  present: true | false
  required: true | false
  evidence: <primary-platform-doc-standard-or-contract>
  reviewed_at: <ISO-date>
  notes: <limitations-or-consumer-specific-context>
```

One element may require multiple consumer records when its semantics differ across platforms.

## Source basis

Consumer behavior should be checked against current official platform documentation because supported and historical directives can change.

Primary references used for this document:

- WHATWG HTML Living Standard — metadata names/semantics: https://html.spec.whatwg.org/multipage/semantics.html
- Google Search Central — Meta tags and attributes that Google supports: https://developers.google.com/search/docs/crawling-indexing/special-tags
- Google Search Central — Robots meta tag and X-Robots-Tag specifications: https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
- Google Search Central — Google does not use the keywords meta tag in web ranking: https://developers.google.com/search/blog/2009/09/google-does-not-use-keywords-meta-tag
- Bing Webmaster Tools — Robots meta tags and attributes Bing supports: https://www.bing.com/webmasters/help/robots-meta-tags-and-attributes-that-bing-supports-5198d240
- Bing Webmaster Blog — Bing Chat content-use controls: https://blogs.bing.com/webmaster/september-2023/Announcing-new-options-for-webmasters-to-control-usage-of-their-content-in-Bing-Chat
- Open Graph protocol: https://ogp.me/

See [`AGENTS.md`](AGENTS.md) before changing consumer-specific support claims.
