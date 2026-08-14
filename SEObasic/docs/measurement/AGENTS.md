# SEObasic Measurement Agent Instructions

> **Scope:** `SEObasic/docs/measurement/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Domain entrypoint:** [`README.md`](README.md)

## Mission

> **Make measurements reproducible, comparable, and interpretable without collapsing distinct metrics into convenient shorthand.**

## Required discipline

Agents MUST identify, when material:

- metric name and family;
- data source/provider;
- exact definition or formula;
- numerator and denominator;
- time window;
- geographic, query, device, and surface scope;
- attribution model;
- sampling/scanning method;
- known limitations;
- whether the value is first-party, platform-reported, inferred, experimental, or third-party.

## Semantic integrity

Agents MUST NOT use materially different concepts interchangeably without an explicit defined mapping, including:

- rank / position;
- visibility;
- impressions;
- traffic;
- clicks;
- conversions;
- conversion quality;
- authority;
- local visibility;
- geo-grid rank;
- coverage;
- indexability;
- crawlability;
- retrieval;
- visible citation/reference;
- answer presence;
- source influence;
- referral;
- revenue.

If a tool uses a proprietary definition, retain the provider name and definition rather than silently normalizing it to a generic SEObasic term.

## Third-party and experimental metrics

Provider-specific metrics such as Domain Authority, Domain Rating, visibility scores, difficulty scores, proprietary local-rank scores, or composite AI/generative visibility scores MUST retain provider/formula context.

Research constructs such as citation absorption/source influence MUST retain the exact methodology and MUST NOT be presented as standardized first-party platform metrics.

## Geographic measurement

Geo-grid and local-rank reporting MUST preserve scan geometry and context when relevant, including grid dimensions/points, spacing or radius, center/centroid, location used for each observation, and query/device assumptions.

Do not collapse a grid into one “rank” without defining the aggregation method.

## Contracts

Read [`contracts/metric-semantics.md`](contracts/metric-semantics.md) for binding measurement rules.

For answer/generative discovery measurement, also read [`generative-search/ai-discovery.md`](generative-search/ai-discovery.md).

## Terminology

Use [`../terminology/measurement-and-analytics.md`](../terminology/measurement-and-analytics.md) for subject terminology. Terminology explains language; the metric contract defines normative measurement behavior.

## Cross-role routing

- evaluation context → [`../evaluation/`](../evaluation/README.md)
- strategy → [`../strategies/`](../strategies/README.md)
- platform/channel mechanics → [`../surfaces/`](../surfaces/README.md)
- supporting evidence → [`../evidence/`](../evidence/README.md)
- cross-domain binding obligations → [`../invariants/`](../invariants/README.md)

A metric value does not establish its cause. Preserve observation versus mechanism under [`../invariants/evidence-classification.md`](../invariants/evidence-classification.md).

## Changelog

Material measurement-framework changes require an entry in [`../../CHANGELOG.md`](../../CHANGELOG.md).
