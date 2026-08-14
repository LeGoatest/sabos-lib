# SEObasic Measurement and Analytics

> **Role:** How outcomes are defined  
> **Scope:** Search, ranking, visibility, traffic, conversion, local, authority/link, technical, geographic, answer/generative, campaign, and cross-surface measurement.  
> **Parent:** [`../README.md`](../README.md)  
> **Agent instructions:** [`AGENTS.md`](AGENTS.md)

Measurement in SEObasic exists to make outcomes interpretable rather than merely collectible.

A metric is useful only when its definition, source, scope, denominator, time window, attribution model, sampling method, and limitations are clear enough that another person or implementation can reproduce or correctly interpret it.

## Binding semantics

Binding measurement semantics live under [`contracts/`](contracts/README.md).

Current contract:

- [`contracts/metric-semantics.md`](contracts/metric-semantics.md) — defines how SEObasic measurements must be named, scoped, sourced, compared, and interpreted.

## Core measurement families

### Search-result and ranking

- SERP/result type
- keyword/result position
- average position
- ranking distribution
- geo-grid rank

### Visibility

- search visibility
- local visibility
- share of voice
- competitor visibility

### Traffic

- impressions
- clicks
- CTR
- sessions/users/pageviews where applicable

### Conversion/business outcomes

- calls
- forms
- bookings
- purchases
- conversion rate with explicit numerator/denominator
- assisted conversions with attribution definition
- revenue/business outcome where explicitly measured

### Local

- Google Business Profile interactions
- direction requests
- calls
- reviews/review velocity
- citation consistency
- geo-grid/geographic observations

### Authority/link

- backlinks
- referring domains
- link equity under a named definition/model
- third-party provider metrics such as DA/DR-style scores with provider identity preserved

### Technical

- indexability/indexing state
- crawlability
- Core Web Vitals
- coverage/indexing diagnostics
- canonicalization observations

### Answer/generative discovery

- answer presence
- visible citation/reference presence
- citation count/rate with explicit unit and denominator
- unique cited pages/domains
- platform-defined cited-page or grounding-query fields
- citation position/order when explicitly defined
- retrieval/source selection when directly observable or methodologically qualified
- **experimental** citation-absorption/source-influence constructs with exact methodology retained
- composite generative/AI visibility scores with provider/formula preserved
- AI/search impressions when supplied by a platform
- AI referral sessions
- AI-assisted/direct conversions
- representation quality
- citation correctness/source support

See [`generative-search/ai-discovery.md`](generative-search/ai-discovery.md).

## Measurement principle

> **Define the measurement before interpreting the result.**

Examples:

```text
ranking position ≠ search visibility
search visibility ≠ traffic
traffic ≠ conversion
conversion ≠ revenue unless defined that way
third-party authority score ≠ Google authority
geo-grid rank ≠ one location-wide rank
AI citation ≠ classic organic rank
answer presence ≠ citation presence
retrieval ≠ visible citation
citation count ≠ authority
AI visibility ≠ referral traffic
```

## Cross-role routing

Measurement is cross-surface. Route interpretation through the actual role involved:

- evaluation context → [`../evaluation/`](../evaluation/README.md)
- strategies → [`../strategies/`](../strategies/README.md)
- owned-web/local/social/paid/YouTube/generative mechanics → [`../surfaces/`](../surfaces/README.md)
- research/platform evidence → [`../evidence/`](../evidence/README.md)
- binding cross-domain obligations → [`../invariants/`](../invariants/README.md)
- metric terminology → [`../terminology/measurement-and-analytics.md`](../terminology/measurement-and-analytics.md)

A metric name may appear on more than one surface while requiring a different provider, denominator, attribution model, sampling method, or interpretation.

See [`AGENTS.md`](AGENTS.md) before automated measurement changes.
