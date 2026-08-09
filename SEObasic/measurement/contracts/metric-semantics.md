# Metric Semantics Contract

> **Status:** Binding  
> **Scope:** All SEObasic measurement, reporting, dashboards, audits, comparisons, experiments, and analytics integrations  
> **Owner:** `SEObasic/measurement/`

## Requirement

Every material metric used by SEObasic MUST be interpretable from its name plus sufficient context to determine what was actually measured.

At minimum, a metric definition MUST preserve the dimensions necessary to avoid semantic ambiguity, including source/provider, scope, time window, and formula or provider definition when the metric is not self-evident.

Metrics MUST NOT be renamed or aggregated in a way that causes materially different measurements to appear equivalent.

## Metric-family separation

SEObasic distinguishes these metric families:

- **Search-result state** — what type of result/surface appeared.
- **Ranking** — observed position/order for a query or query set.
- **Visibility** — an aggregate measure of how often/how prominently a site/entity appears across a defined search/query/geographic set.
- **Traffic** — visits, clicks, sessions, users, or other arrival/activity measurements depending on the source definition.
- **Conversion** — defined outcomes or actions.
- **Local-search interaction** — profile/map/local-surface actions and reputation/business-data measurements.
- **Authority/link** — backlinks/referring domains/link-derived or third-party modeled authority signals.
- **Technical** — crawling, indexing, canonicalization, page-experience, and related implementation-state measurements.
- **Geographic** — spatially sampled rank/visibility/distribution measurements.

A metric from one family MUST NOT be described as another family without an explicit transformation and documented rationale.

## Minimum definition record

When a metric is stored, compared, reported, or used for decisions, its record SHOULD capture as applicable:

```yaml
metric:
  name: <canonical-name>
  family: <ranking|visibility|traffic|conversion|local|authority|technical|geographic|other>
  source: <provider-or-system>
  definition: <formula-or-provider-definition>
  numerator: <value-or-null>
  denominator: <value-or-null>
  time_window: <period>
  query_scope: <query-or-query-set-or-null>
  geography: <location/grid/market-or-null>
  device: <device-or-null>
  surface: <organic|local-pack|maps|youtube|paid|social|other>
  attribution: <model-or-null>
  sampling: <method-or-null>
  limitations: <notes-or-null>
```

The exact schema may differ by implementation. The contract is semantic, not tied to YAML.

## Ranking rules

A ranking observation MUST identify enough context to reproduce or interpret the observation, including the query and relevant geography/device/surface when those affect results.

An average position MUST disclose the population and aggregation method when material.

Geo-grid ranking MUST NOT be reduced to one unlabeled rank without documenting the aggregation method.

## Visibility rules

A visibility score MUST identify:

- the query/keyword population;
- weighting method if any;
- result/surface types included;
- geography/device context where relevant;
- provider/formula when proprietary.

The phrase **search visibility** MUST NOT be used as a synonym for organic traffic.

The phrase **local visibility** MUST NOT be used as a synonym for a single geo-grid point rank.

## Traffic rules

Traffic metrics MUST preserve the analytics/search platform definition used.

For example, clicks, sessions, users, and pageviews are distinct measurements and MUST NOT be silently merged under the label “traffic” when the distinction matters.

## Conversion rules

A conversion MUST have an explicit event/outcome definition.

Conversion rate MUST identify its numerator and denominator, such as:

```text
qualified leads / landing-page sessions
calls / ad clicks
bookings / form starts
purchases / sessions
```

Different formulas MUST NOT be compared as if they represent the same conversion rate.

Platform-reported conversions MUST be distinguishable from independently verified business outcomes when the difference matters.

Assisted conversions MUST retain the attribution or assistance definition used by the source system.

## Local-search rules

Google Business Profile interactions, direction requests, calls, website clicks, reviews, review velocity, citation consistency, and local rank/visibility measurements are separate metrics.

Review velocity MUST define the period over which review acquisition is measured.

Citation consistency MUST define which business fields and citation sources are evaluated.

## Authority/link rules

Backlinks and referring domains are count/relationship metrics.

Link equity is a conceptual or modeled value and MUST be defined by the implementation/source using it.

Third-party metrics such as Domain Authority, Domain Rating, Authority Score, or similar provider scores MUST retain the provider identity and MUST NOT be represented as Google metrics or interchangeable universal authority values.

## Technical rules

Crawlability and indexability are distinct states.

Indexing/coverage reports MUST preserve the source and diagnostic category because platform labels can change over time.

Canonicalization reporting SHOULD distinguish declared canonical, observed/resolved canonical, and search-engine-selected canonical when the data source exposes those concepts.

Core Web Vitals MUST preserve metric names, thresholds/version context, source (field/lab), and aggregation scope when reported materially.

## Geographic measurement rules

Geographic measurements MUST preserve enough scan geometry to interpret the result.

As applicable this includes:

- grid point coordinates/location;
- grid dimensions;
- scan radius or spacing;
- centroid/center;
- proximity/distance assumptions;
- query;
- device;
- timestamp/time window;
- result surface;
- aggregation method.

A coverage area derived from rank or visibility thresholds MUST state the threshold and interpolation/aggregation method.

## Comparability

Before comparing two metric values, verify that the underlying definitions are materially compatible.

If provider, formula, query set, geography, device, attribution, denominator, or sampling methodology changes, the comparison MUST be qualified or treated as a methodology change rather than a simple trend.

## Rationale

SEO and marketing tools frequently reuse words such as *rank*, *visibility*, *authority*, *traffic*, and *conversion* while calculating materially different things. Without semantic contracts, dashboards and agent-generated reports can create false comparisons or incorrect conclusions while appearing numerically precise.

SEObasic therefore treats measurement definitions as part of the data contract.

## Validation

A measurement implementation or report SHOULD be reviewable for:

- canonical metric name;
- source/provider;
- formula/definition;
- required dimensions;
- denominator where relevant;
- comparable methodology across periods;
- proprietary metric labeling;
- geographic scan context;
- attribution limitations;
- missing/unknown values rather than fabricated estimates.

## Exceptions

Informal conversational shorthand may omit full metadata when context is already unambiguous. Stored data, dashboards, formal reports, automated comparisons, and cross-period analyses MUST retain enough metadata to recover the actual definition.
