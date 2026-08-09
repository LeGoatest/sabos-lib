# SEObasic Measurement and Analytics Glossary

> **Status:** Informative  
> **Normative companion:** [`../measurement/contracts/metric-semantics.md`](../measurement/contracts/metric-semantics.md)

This glossary defines recurring measurement terms used across SEObasic. Provider-specific tools may use different formulas; where that happens, retain the provider definition rather than silently replacing it with a generic meaning.

## Search Results

### Search engine results page (SERP)
The result interface returned by a search engine for a query. A SERP can contain multiple result types and modules rather than a single ordered list of organic links.

### Organic result
An unpaid search result selected by the search engine's ranking systems. Organic result does not include paid ads and should not be assumed to include every non-ad module.

### Local Pack
A Google local-business result module shown for some locally oriented queries. Often used interchangeably in industry speech with *Map Pack*, although interfaces and placement can vary.

### Map Pack
Common industry shorthand for a local result module presenting businesses with map context. When precision matters, identify the exact Google/Search/Maps surface being measured.

### Rich result
A search result enhanced beyond a basic title/link/snippet presentation through supported search features. Structured data can support eligibility for some rich results but does not guarantee display.

### Featured snippet
A search result format that prominently presents an extracted answer or content segment for some queries. It is distinct from a standard organic position even when sourced from an organically indexed page.

## Ranking Metrics

### Keyword position
The observed position of a result for a specific query under defined conditions. Geography, device, personalization, surface, time, and result-type handling can materially affect the observation.

### Average position
An aggregate position measure over multiple impressions, observations, keywords, locations, devices, or another defined population. The source population and aggregation method must be known before interpretation.

### Ranking distribution
The distribution of tracked rankings across position ranges, result types, queries, locations, or another defined grouping—for example positions 1–3, 4–10, 11–20, and beyond.

### Geo-grid rank
The observed local-search rank at one geographic grid point for a defined query and scan configuration. A geo-grid contains multiple such observations; the grid itself does not have one inherent rank unless an aggregation is defined.

## Visibility Metrics

### Search visibility
An aggregate estimate of how prominently a site, page, or entity appears across a defined search/query population. Formula, keyword set, result types, weights, geography, device, and provider must be retained when material.

### Local visibility
An aggregate estimate of local-search presence across a defined geographic/query scan or market. It is not synonymous with one local rank observation.

### Share of Voice (SOV)
A measure of a subject's relative presence compared with competitors across a defined market, query set, advertising set, media set, or other measurement universe. The denominator and weighting method are essential to its meaning.

### Competitor visibility
A comparative visibility measure for another business/domain/entity using the same defined measurement universe and methodology as the subject being evaluated.

## Traffic Metrics

### Impression
An instance in which a result, ad, listing, post, video, or other item is counted by the source platform as having been shown or eligible under that platform's definition. Impression definitions vary by platform.

### Click
A platform- or analytics-defined interaction counted as a click. A click is not automatically equivalent to a website session, user, lead, or conversion.

### Click-through rate (CTR)
Clicks divided by impressions for a defined source and scope, usually expressed as a percentage.

```text
CTR = clicks / impressions
```

CTR comparisons require compatible impression and click definitions.

### Organic traffic
Traffic attributed to unpaid search according to a defined analytics attribution/channel classification. Organic traffic should not be assumed to equal search-console clicks because the systems measure different events and populations.

## Conversion Metrics

### Call
A phone-call outcome or interaction. The definition should identify whether it is a click-to-call action, connected call, tracked call, qualified call, or another call state.

### Form conversion
A defined form outcome such as form submission, qualified form submission, lead creation, or another explicitly defined event. A form start is not the same as a completed form unless stated.

### Booking
A scheduled appointment/reservation outcome according to the business or booking system's definition.

### Conversion
A defined action considered meaningful to the business, campaign, or funnel. The exact event must be specified.

### Conversion rate
A defined number of conversions divided by a defined opportunity population.

```text
conversion rate = conversions / denominator
```

Common denominators include sessions, users, clicks, leads, form starts, or qualified opportunities; rates with different denominators are not directly interchangeable.

### Assisted conversion
A conversion for which a channel, interaction, or touchpoint is credited with assistance rather than sole/final attribution under a defined attribution model.

## Local SEO Metrics

### Google Business Profile (GBP) interaction
An interaction reported through Google Business Profile or related Google reporting, such as calls, website actions, direction requests, bookings, or other supported interaction types. Available metrics and definitions can change.

### Direction request
A platform-reported action indicating that a user requested directions to a business/location. It is not proof that the user completed the trip.

### Review count
The number of reviews associated with a business/profile according to the source platform at a point in time.

### Review velocity
The rate at which reviews are acquired over a defined time period.

```text
review velocity = new reviews / time period
```

### Citation consistency
A measure of how consistently selected business identity fields appear across a defined set of citation/directory sources. The fields and source set must be stated.

## Authority and Link Metrics

### Backlink
A link from an external page/resource to a page/resource on the measured site or property.

### Referring domain
A distinct external domain that contains at least one backlink to the measured property under the provider's counting rules.

### Link equity
A conceptual or modeled description of value/authority transmitted through links. It is not a directly observable universal numeric metric unless a specific model/provider defines one.

### Domain Authority (DA)
A proprietary Moz metric estimating a domain's ranking potential. It is not a Google metric and is not interchangeable with other providers' authority scores.

### Domain Rating (DR)
A proprietary Ahrefs metric representing the strength of a website's backlink profile under Ahrefs' model. It is not a Google metric and is not equivalent to DA.

### Third-party authority metric
Any provider-specific modeled score intended to summarize link/profile strength, authority, trust, or ranking potential. Provider name, scale, and definition must be retained.

## Technical Metrics

### Crawlability
The ability of a crawler to discover and retrieve a resource under the relevant technical conditions. Crawlability is not the same as indexability or actual indexing.

### Indexability
Whether a resource is eligible/intended to be indexed given technical directives and state. An indexable page is not guaranteed to be indexed.

### Indexing
The search engine's observed inclusion of a resource in its index under the source's reporting/diagnostic model.

### Coverage / indexing coverage
A platform- or tool-specific summary of indexing states across a set of URLs. Provider categories and terminology can change; retain the source definition.

### Canonicalization
The process/state by which duplicate or equivalent URLs are associated with a preferred canonical resource. Measurements should distinguish declared canonicals from search-engine-selected canonicals when possible.

### Core Web Vitals (CWV)
Google-defined user-experience metrics currently centered on loading, responsiveness, and visual stability. Reports should retain the exact metric names, source (field/lab), aggregation scope, and current threshold/version context rather than use “Core Web Vitals” as one undifferentiated score.

## Geographic Measurement

### Grid point
One sampled geographic location in a geo-grid or spatial ranking scan.

### Scan radius
The radial geographic extent covered by a scan from a defined center, when the tool/method uses radius-based geometry.

### Grid spacing
The geographic distance between adjacent grid points in a spatial scan.

### Centroid
A defined central point used to represent or calculate the center of a geographic area or grid. It is not automatically the business address or the user's location.

### Proximity
The spatial distance/relationship between two relevant locations, such as a searcher/grid point and a business. Proximity is context-dependent and should identify the locations being compared.

### Geographic rank distribution
The distribution of ranking observations across geographic sample points or defined position buckets.

### Coverage area
A geographic area derived from a defined criterion, such as locations where rank or visibility meets a threshold. The threshold and interpolation/aggregation method must be stated.

## Measurement Integrity Terms

### Metric family
A category grouping measurements that answer similar kinds of questions, such as ranking, visibility, traffic, conversion, local interaction, authority/link, technical, or geographic metrics.

### Measurement universe
The complete defined population over which a metric is calculated, such as a keyword set, competitor set, grid, impression population, audience, or market.

### Denominator
The opportunity/population value used to normalize or calculate a rate. Denominator changes can invalidate direct comparisons even when the metric label stays the same.

### Attribution model
The rule/system that assigns conversion credit across touchpoints or channels.

### Sampling method
The method used to choose observations included in a measurement. For local rankings this can include geo-grid points, spacing, radius, device, and query timing.

### Methodology change
A change to source, formula, population, geography, device, attribution, denominator, provider, sampling, or aggregation that can break comparability across time periods.

### Proprietary metric
A metric whose exact formula/model is owned or defined by a provider rather than by an open standard or directly observable count.
