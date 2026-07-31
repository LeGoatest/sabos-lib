# WDBASIC Sustainability Guidance

> **Status:** Informative profile unless an adopting project makes specified budgets binding  
> **Core entry point:** [`README.md`](README.md)

This document applies sustainability principles without representing draft guidance as a finalized conformance standard.

## 1. General principle

Reduce unnecessary transfer, computation, storage, third-party processing, and repeated user effort while preserving accessibility, security, reliability, and business value.

Sustainability must not be used to justify removing accessibility equivalents, security controls, or required content.

## 2. Product budgets

A project may define budgets for:

- Initial HTML.
- Critical CSS.
- Total CSS.
- JavaScript.
- Fonts and weights.
- Images.
- Video and audio.
- Third-party requests.
- Total request count.
- Cache lifetime and hit rate.
- Background polling.

Budgets should be measured by representative page type and workflow, not only the homepage.

## 3. Media

- Use responsive image sources and efficient formats.
- Provide explicit dimensions.
- Avoid delivering desktop-size media to narrow screens.
- Do not autoplay nonessential video.
- Provide poster images and user-controlled playback.
- Avoid decorative background video when a static asset communicates the same meaning.
- Remove obsolete media variants and duplicates.

## 4. Fonts

- Prefer system or already-required families when they satisfy the profile.
- Load only used character sets, styles, and weights.
- Use fallbacks that prevent invisible text.
- Avoid icon fonts for small sets of symbols.
- Respect font licensing and caching rules.

## 5. JavaScript and CSS

- Do not ship a client framework solely for local interaction that native HTML, CSS, or minimal JavaScript can provide.
- Remove unused dependencies and styles.
- Avoid continuous observers, timers, and polling without a measured need.
- Pause nonessential work when the document is hidden.
- Treat third-party scripts as optional failure and energy domains.

## 6. Data transfer and caching

- Cache stable public assets effectively.
- Invalidate deliberately rather than disabling caching globally.
- Avoid duplicate API calls and fragment reloads.
- Use conditional requests where supported.
- Do not cache across identity, authorization, tenant, or privacy boundaries.

## 7. User preferences

Progressively support relevant preferences such as reduced motion, reduced data, reduced transparency, color scheme, and contrast when supported by the declared browser baseline.

A draft or inconsistently supported preference must not be the only path to required behavior.

## 8. Durable content

- Use stable URLs.
- Avoid unnecessary redesign-driven content duplication.
- Preserve useful documents and redirects.
- Make archived or replaced content status explicit.
- Avoid thin generated pages that consume crawl and hosting resources without user value.

## 9. Measurement integrity

Do not make unverified claims such as “green,” “carbon neutral,” or “low impact.”

A sustainability claim requires:

- Defined scope.
- Measurement method.
- Date.
- Assumptions.
- Responsible owner.
- Evidence.
- Review condition.

## 10. Optional adoption record

```yaml
sustainability:
  status: informative | binding
  budgets: <path>
  measurement_method: <path-or-tool>
  representative_pages: []
  third_party_budget: <value>
  media_policy: <path>
  last_measured: <ISO-8601-date>
  owner: <role>
```
