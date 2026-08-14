# SEObasic Answer and Generative Discovery Agent Instructions

> **Status:** Binding for work under `SEObasic/docs/strategies/answer-discovery/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Domain entrypoint:** [`README.md`](README.md)

## Mission

Preserve the distinction between established SEO foundations, AEO/GEO strategy, platform-specific answer/generative behavior, academic evidence, industry terminology, practitioner positions, and speculative optimization claims.

## Required routing

Before changing AEO/GEO strategy, read as applicable:

1. [`README.md`](README.md)
2. [`../../evidence/platform-guidance/ai-search-platform-guidance.md`](../../evidence/platform-guidance/ai-search-platform-guidance.md)
3. [`../../evidence/research/answer-generative-discovery.md`](../../evidence/research/answer-generative-discovery.md)
4. [`../../measurement/generative-search/ai-discovery.md`](../../measurement/generative-search/ai-discovery.md)
5. [`../../surfaces/generative-search/ai-discovery-controls.md`](../../surfaces/generative-search/ai-discovery-controls.md)
6. [`../../measurement/contracts/metric-semantics.md`](../../measurement/contracts/metric-semantics.md)
7. [`../../invariants/evidence-classification.md`](../../invariants/evidence-classification.md)
8. Relevant owned-web, content, entity-relationship, local/maps, or structured-data material.

## Evidence rules

Agents MUST:

- prefer current official platform documentation for current platform behavior;
- prefer primary papers, conference proceedings, datasets, and author/publisher records for research claims;
- record date/version context for fast-changing AI-search behavior;
- distinguish access, retrieval/source selection, visible citation/reference, answer contribution, referral traffic, conversion, and business outcomes;
- preserve negative/null findings and study limitations;
- state when evidence comes from a simulated or controlled generative-engine testbed rather than a live production platform;
- treat Google Scholar, Semantic Scholar, DBLP, Crossref, OpenAlex, and similar indexes as discovery/bibliographic tools, not independent proof of a finding.

Agents MUST NOT:

- present AEO/GEO as universal replacements for SEO;
- invent “LLM ranking factors” from correlations or one vendor's recommendations;
- generalize Google-specific guidance to ChatGPT Search, Bing/Copilot, Perplexity, or another platform;
- generalize crawler access rules from one AI/search service to another;
- promise citation, ranking, recommendation, answer inclusion, or traffic;
- convert one GEO experiment or benchmark into a cross-platform invariant;
- recommend manipulative citation-seeking rewrites that reduce accuracy, clarity, or user value;
- treat `llms.txt`, special AI schema, content chunking, fake mentions, or AI-specific prose style as required without platform-specific evidence.

## Terminology

Use AEO and GEO as scoped terms:

- **AEO** — answer-oriented discoverability/representation.
- **GEO** — generative-engine discoverability, source selection, citation, and representation.

When a platform uses different terminology, preserve the platform's own term alongside the SEObasic category.

## Strategy boundary

This directory owns **strategy**, not crawler/platform mechanics. Platform-specific controls belong under [`../../surfaces/generative-search/`](../../surfaces/generative-search/README.md). Current platform-owned claims and research evidence belong under [`../../evidence/`](../../evidence/README.md).

## Measurement

Do not use “AI rank” as shorthand for citation count, citation order, answer presence, referral traffic, visibility, or experimental source-influence constructs. Use [`../../measurement/generative-search/ai-discovery.md`](../../measurement/generative-search/ai-discovery.md) and the binding [`../../measurement/contracts/metric-semantics.md`](../../measurement/contracts/metric-semantics.md).

## Changelog

Material changes to AEO/GEO interpretation or adopted strategy update [`../../../CHANGELOG.md`](../../../CHANGELOG.md).
