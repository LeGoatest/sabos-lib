# Metadata and Head Elements

> **Status:** Technical SEO guidance  
> **Scope:** Search presentation metadata, indexing/serving controls, canonical URL signals, document/browser metadata, social-sharing metadata, and legacy/unused metadata  
> **Primary platform basis:** Google Search documentation unless another consumer is named explicitly

Metadata must be classified by the system that consumes it. Not every element in `<head>` is an SEO ranking signal, and a historically familiar tag must not be treated as current merely because browsers still accept the markup.

## Status model

SEObasic uses these labels when documenting metadata:

| Status | Meaning |
| --- | --- |
| **Current** | The named consumer currently documents or uses the element/directive for the stated purpose. |
| **Platform-specific** | Used by a named platform/protocol; it is not automatically a search-ranking signal. |
| **Document/browser** | Important to HTML/browser behavior, but not itself a search-ranking directive. |
| **Legacy / unused by `<consumer>`** | Historically used, commonly encountered, or previously supported, but the named consumer explicitly does not use it for the stated purpose. |

A legacy/unused item SHOULD remain documented so maintainers know that its absence is intentional rather than an oversight.

Do not claim that a tag is universally unused unless the evidence actually covers every relevant consumer. Prefer precise statements such as **“not used by Google Search”**.

## Search presentation metadata

### `<title>`

**Status:** Current — Google Search presentation signal and document title.

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

**Status:** Current.

```html
<meta name="robots" content="index,follow">
```

Robots metadata can control page-level indexing and serving behavior. Examples of supported directives depend on the search engine. For Google Search, current directives include controls such as `noindex`, `nofollow`, `nosnippet`, `max-snippet`, `max-image-preview`, and related serving rules.

Do not add `index,follow` merely for decoration when it only expresses the default behavior.

### `<meta name="googlebot">`

**Status:** Current — Google-specific.

```html
<meta name="googlebot" content="nosnippet">
```

Use a crawler-specific directive only when behavior intentionally differs from the general robots directive.

### `X-Robots-Tag`

**Status:** Current — HTTP response control.

`X-Robots-Tag` is not an HTML meta element, but belongs in the same indexing-control model. It is especially useful for non-HTML resources such as PDFs, images, or other files where an HTML `<meta>` element cannot be used.

## Canonical URL metadata

### `<link rel="canonical">`

**Status:** Current canonicalization signal.

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

## Legacy and unused search metadata

Legacy entries are retained deliberately. Their documentation tells implementers **not to reintroduce them as modern SEO requirements**.

### `<meta name="keywords">`

**Status:** **Legacy / unused by Google Search.**

```html
<meta name="keywords" content="keyword one, keyword two, keyword three">
```

Historically, the keywords meta tag was used to declare page keywords to search systems.

**Current Google Search behavior:** Google Search does not use the meta-keywords tag. Google states that it has **no effect on indexing or ranking**.

SEObasic rule:

- Do **not** add `meta keywords` for Google SEO.
- Do **not** treat its presence as evidence of keyword optimization.
- Do **not** spend audit/remediation effort populating it for Google Search.
- If a separate legacy CMS, internal search product, or other named consumer requires it, document that consumer and purpose explicitly.

### `<link rel="next">` / `<link rel="prev">`

**Status:** **Legacy / unused by Google Search for indexing.**

```html
<link rel="next" href="https://example.com/page/2">
<link rel="prev" href="https://example.com/page/1">
```

Google Search documents these link relationships as no longer used for indexing. Do not add them under the assumption that they provide a Google pagination/indexing signal.

They may still have meaning in other standards, software, accessibility, navigation, or application contexts; this status is specifically about Google Search consumption.

### `nositelinkssearchbox`

**Status:** **Legacy / unused by Google Search.**

```html
<meta name="google" content="nositelinkssearchbox">
```

Google Search no longer uses this rule because the sitelinks search box feature it controlled no longer exists.

Do not retain or add this tag as a current Google Search requirement.

### Robots rule `noarchive`

**Status:** **Historical / unused by Google Search.**

Google Search no longer uses `noarchive` to control cached-result links because the cached-link feature no longer exists.

### Robots rule `nocache`

**Status:** **Unused by Google Search.**

Google Search documents `nocache` as ignored.

## Legacy-removal rule

“Unused by Google Search” does not automatically mean “delete immediately.” Before removing an existing legacy tag from a production system:

1. Identify whether another crawler, internal search system, CMS integration, social platform, browser feature, analytics system, or downstream consumer reads it.
2. Confirm whether removal changes any non-search behavior.
3. Remove it when no required consumer remains, or retain it with a documented non-Google purpose.

This prevents two opposite errors:

- preserving dead metadata because it looks like SEO; and
- deleting metadata merely because Google Search does not use it when another real consumer still does.

## Implementation classification

When auditing `<head>` metadata, record at least:

```yaml
metadata:
  element: <tag-or-directive>
  status: current | platform-specific | document-browser | legacy-unused
  consumer: <google-search|open-graph|x|browser|other>
  purpose: <what-it-controls>
  present: true | false
  required: true | false
  evidence: <platform-doc-or-contract>
  notes: <limitations-or-consumer-specific-context>
```

## Source basis

Current Google Search behavior should be checked against official Google Search Central documentation because supported and historical directives can change.

Primary references used for this document:

- Google Search Central — Meta tags and attributes that Google supports: https://developers.google.com/search/docs/crawling-indexing/special-tags
- Google Search Central — Robots meta tag and X-Robots-Tag specifications: https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
- Google Search Central — Google does not use the keywords meta tag in web ranking: https://developers.google.com/search/blog/2009/09/google-does-not-use-keywords-meta-tag
- Open Graph protocol: https://ogp.me/

See [`AGENTS.md`](AGENTS.md) before changing consumer-specific support claims.