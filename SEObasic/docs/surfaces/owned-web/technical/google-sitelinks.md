# Google Search Sitelinks — Owned-Web Readiness

> **Status:** Google Search-specific platform guidance and practitioner audit method, not a display guarantee  
> **Evidence class:** Platform guidance for Google behavior; practitioner observation/position for audit checks  
> **Reviewed:** 2026-11-21  
> **Scope:** Ordinary Google organic text-result sitelinks only

## Platform behavior and boundaries

Google's **ordinary sitelinks** are links from the same domain grouped under a text result. Google's systems analyze the site's link structure and show them only when useful for the particular search query. They are **automatically selected**. A website owner cannot submit a fixed list, control their labels or order, reserve slots, or guarantee their appearance.

Google Search Central recommends informative, compact page titles and headings; a logical site structure; links to important destinations from relevant pages; concise, relevant internal anchor text; and avoiding repeated content. These are recommendations, not a deterministic feature-eligibility recipe.

Do not confuse three distinct features:

- **Ordinary sitelinks** continue to exist and are algorithmically selected.
- **Sitelinks search box** was retired by Google starting 2024-11-21. Its historical `nositelinkssearchbox` directive is not a current way to control ordinary sitelinks.
- **Breadcrumb rich results** may use `BreadcrumbList` markup to describe a visible hierarchy. Breadcrumb markup does not select ordinary sitelinks.

Likewise, `Organization`, `LocalBusiness`, and `WebSite` structured data can describe truthful entities and site identity; none is a special switch to request ordinary sitelinks. Google's Organization guidance recommends placing organization data on the homepage or a single organization-description page rather than blindly on every route.

## Reusable audit sequence

1. **Inventory genuine destinations.** Identify the homepage, service index, useful categories and detail pages, regional service-area hub, gallery, quote/contact pages, and any other *existing, independently useful* pages. Do not fabricate About, Warranty, Testimonials, or city landing pages merely to occupy imagined sitelink slots.
2. **Verify eligibility separately.** Check each candidate's HTTP response, crawlable HTML, intended canonical URL, indexing directives, redirect chain, and actual content. Sitemap inclusion assists discovery; it does not guarantee indexing or sitelink selection.
3. **Audit the actual internal graph.** Inspect desktop and mobile menus, homepage, footer, categories, and contextual service links. Use ordinary crawlable HTML links with concise, descriptive anchor text; link to the final canonical URL rather than a legacy redirect if the destination is known.
4. **Align page identity.** Confirm titles, headings, link labels, visible business name, and structured-data business identity consistently describe the page and the real entity. Avoid keyword stuffing, fake local claims, and repetitive boilerplate.
5. **Keep technical signals in their roles.** Verify a valid canonical sitemap, accurate organization/service URLs in JSON-LD, and meaningful page-specific breadcrumbs where appropriate. These can support the site's interpretation; they do not dictate ordinary sitelinks. `BreadcrumbList` should follow real navigational hierarchy.
6. **Respect doorway-abuse boundaries.** A consolidated, useful `/service-area` page listing verified coverage is often better than near-identical city-name-swapped pages. Independently useful city pages require distinct local purpose and supported information; a need for extra sitelinks is not justification.
7. **Inspect rendered production output and measure honestly.** Check final URLs, 200/301/404 behavior, canonical/robots tags, structured data and sitemap, then use Search Console for indexing diagnosis and observe branded-search results. Observing a sitelink after a change does not establish causation.

### What these signals can and cannot do

| Signal | Helps establish | Does not establish |
| --- | --- | --- |
| Navigation and contextual links | Useful, understandable link relationships | Guaranteed sitelink selection or order |
| Titles, headings, anchors | Page meaning and hierarchy | Exact Google-generated title or label |
| Sitemap, canonical, redirects | Discovery and URL consistency | Indexing or a sitelink slot |
| `BreadcrumbList` / organization schema | Truthful structured hierarchy/entity information | A mechanism to choose ordinary sitelinks |

**Do not apply `noindex` just to reshuffle sitelinks.** That changes a page's wider Google indexing eligibility. Do not manipulate site navigation or invent pages solely to force SERP presentation.

## Practitioner audit observation (not a platform causality finding)

A 2026-11-21 review of a PHP service-business website found an existing menu, sitemap, page metadata, canonical tags, and a consolidated service-area hub. The same source contained a link to a retired service-area route, legacy redirecting service URLs in site-wide schema, mixed brand names, and visible breadcrumbs without matching page-level breadcrumb JSON-LD. These are actionable consistency checks, **not proof that Google suppressed or would add sitelinks**. This was a source-code audit, not a verified Google crawl or SERP experiment.

## Official sources

- [Google Search Central: Sitelinks](https://developers.google.com/search/docs/appearance/sitelinks) — platform guidance, updated 2025-12-10; reviewed 2026-11-21.
- [Google Search Central: Breadcrumb structured data](https://developers.google.com/search/docs/appearance/structured-data/breadcrumb) — separate search feature, updated 2026-09-08; reviewed 2026-11-21.
- [Google Search Central: Organization structured data](https://developers.google.com/search/docs/appearance/structured-data/organization) — identity/schema guidance; reviewed 2026-11-21.
- [Google Search Central Blog: Farewell, Sitelinks Search Box](https://developers.google.com/search/blog/2024/10/sitelinks-search-box) — published 2024-10-21.
- [Google Search Central: Spam policies](https://developers.google.com/search/docs/essentials/spam-policies) — doorway-abuse boundary; reviewed 2026-11-21.

Related authority: [Entity graph and internal linking](../../../strategies/entity-relationships/entity-graph.md), [service-area page strategy](../service-area-page-strategy.md), [structured data](structured-data.md), and [evidence classification](../../../invariants/evidence-classification.md).
