# SEObasic Measurement and Analytics

> **Scope:** Search, ranking, visibility, traffic, conversion, local-search, authority, technical, geographic, answer/generative discovery, campaign, and cross-channel measurement.

Measurement in SEObasic exists to make outcomes interpretable rather than merely collectible.

A metric is useful only when its definition, source, scope, denominator, time window, attribution model, and limitations are clear enough that another person or implementation can reproduce or correctly interpret it.

## Subject map

SEObasic measurement covers several distinct metric families.

### Search-result terminology

- Search engine results page (SERP)
- Organic result
- Local Pack / Map Pack
- Rich result
- Featured snippet

### Ranking metrics

- Keyword position
- Average position
- Ranking distribution
- Geo-grid rank

### Visibility metrics

- Search visibility
- Local visibility
- Share of Voice
- Competitor visibility

### Traffic metrics

- Impressions
- Clicks
- Click-through rate (CTR)
- Organic traffic

### Conversion metrics

- Calls
- Forms
- Bookings
- Conversion rate
- Assisted conversions

### Answer/generative discovery metrics

- Answer presence
- Citation presence
- Citation count/rate
- Unique cited pages
- Platform-defined cited-page metrics
- Grounding-query observations
- Citation position/order when explicitly defined
- Source selection/retrieval presence when observable
- Citation absorption/source influence when a methodology defines it
- Generative visibility scores with provider/formula preserved
- AI/search impressions when supplied by the platform
- AI referral traffic
- AI-assisted/direct conversions
- Brand/entity representation quality
- Citation correctness/source support

See [`ai-discovery.md`](ai-discovery.md).

### Local-search metrics

- Google Business Profile interactions
- Direction requests
- Calls
- Reviews
- Review velocity
- Citation consistency

### Authority/link metrics

- Backlinks
- Referring domains
- Link equity
- Third-party authority metrics such as DA/DR-style scores

### Technical metrics

- Indexing/indexability state
- Crawlability
- Core Web Vitals
- Coverage/indexing diagnostics
- Canonicalization consistency

### Geographic measurement

- Grid point
- Scan radius
- Centroid
- Proximity
- Geographic rank distribution
- Coverage area

## Measurement principle

> **Do not use different metric names as if they describe the same thing. Define the measurement before interpreting the result.**

Examples:

- Ranking position is not search visibility.
- Search visibility is not traffic.
- Traffic is not conversion.
- Conversion count is not conversion quality.
- A third-party domain metric is not Google authority.
- Geo-grid rank is not a single location-wide rank.
- Platform-reported conversions are not automatically verified business outcomes.
- AI citation is not classic organic rank.
- Answer presence is not citation presence.
- Citation count is not authority.
- Retrieval is not necessarily visible attribution.
- AI visibility is not referral traffic.

## Contracts

Binding measurement semantics are defined under [`contracts/`](contracts/README.md).

Current contract:

- [`contracts/metric-semantics.md`](contracts/metric-semantics.md) — defines how SEObasic measurements must be named, scoped, sourced, and interpreted.

AI/answer/generative measurement guidance:

- [`ai-discovery.md`](ai-discovery.md) — provider-neutral and platform-specific definitions for AEO/GEO observations, citations, answer presence, retrieval/source selection, generative visibility, referrals and conversions.

## Glossary

Detailed metric terminology lives in [`../glossaries/measurement-and-analytics.md`](../glossaries/measurement-and-analytics.md).

## Cross-domain relationships

Measurement supports every SEObasic channel but does not replace channel-specific interpretation:

- Answer/generative discovery → [`../discovery/`](../discovery/README.md)
- Technical SEO → [`../technical/`](../technical/README.md)
- Websites → [`../websites/`](../websites/README.md)
- Local search / GBP / maps → [`../local-search/`](../local-search/README.md)
- Organic social → [`../social-media/`](../social-media/README.md)
- Paid media / PPC → [`../paid-media/`](../paid-media/README.md)
- YouTube → [`../youtube/`](../youtube/README.md)
- Entity/link analysis → [`../entities/`](../entities/README.md)

A metric name may appear in more than one channel while requiring a different source, denominator, attribution model, or interpretation.

See [`AGENTS.md`](AGENTS.md) before automated measurement changes.