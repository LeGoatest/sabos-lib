# SEObasic Measurement Agent Instructions

> **Scope:** `SEObasic/docs/measurement/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

## Mission

> **Make measurements reproducible, comparable, and interpretable without collapsing distinct metrics into convenient shorthand.**

## Required discipline

Agents MUST identify, when material:

- metric name;
- metric family;
- data source/provider;
- exact definition or formula;
- numerator and denominator;
- time window;
- geographic scope;
- query/keyword scope;
- device/surface scope;
- attribution model;
- sampling/scanning method;
- known limitations;
- whether the value is first-party, platform-reported, inferred, or third-party.

## Semantic integrity

Agents MUST NOT use these terms interchangeably without an explicit defined mapping:

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
- crawlability.

If a tool uses a proprietary definition, retain the provider name and definition rather than silently normalizing it to a generic SEObasic term.

## Third-party metrics

Metrics such as Domain Authority, Domain Rating, visibility scores, difficulty scores, or proprietary local-rank scores are provider-specific models.

Agents MUST NOT present them as:

- Google metrics;
- universal authority scores;
- direct ranking factors without evidence;
- interchangeable values across providers.

## Geographic measurement

Geo-grid and local-rank reporting MUST preserve scan geometry and context when relevant, including grid dimensions/points, spacing or radius, center/centroid, location used for each observation, and query/device assumptions.

Do not collapse a grid into one “rank” without defining the aggregation method.

## Contracts

Read [`contracts/metric-semantics.md`](contracts/metric-semantics.md) for binding measurement rules.

## Glossary

Use [`../glossaries/measurement-and-analytics.md`](../glossaries/measurement-and-analytics.md) for subject terminology. Glossary definitions explain terms; the contract defines normative behavior.

## Changelog

Material measurement-framework changes require an entry in [`../../CHANGELOG.md`](../../CHANGELOG.md).
