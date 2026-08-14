# SEObasic Answer and Generative Discovery

> **Status:** Evolving knowledge domain  
> **Scope:** Answer Engine Optimization (AEO), Generative Engine Optimization (GEO), AI-assisted search visibility, answer surfaces, generative citations, source representation, and related discovery evidence  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

This domain documents answer-oriented and generative discovery without treating AEO or GEO as replacements for foundational SEO or as one universal cross-platform ranking system.

## Core model

```text
search/discovery
│
├── traditional search visibility
│
├── AEO
│   └── visibility and usefulness in direct-answer / answer-oriented experiences
│
└── GEO
    └── visibility, citation, source selection and representation in generative responses
```

These surfaces overlap. A page can be crawled and indexed once, then participate in classic search results, featured/direct answers, generative search responses, citations, summaries, shopping/local experiences, or agentic workflows depending on the platform.

## Current documents

- [`answer-engine-optimization.md`](answer-engine-optimization.md) — AEO terminology, answer-oriented practice, platform boundaries, anti-patterns, and measurement.
- [`generative-engine-optimization.md`](generative-engine-optimization.md) — GEO terminology, citation/representation concepts, research evidence, platform boundaries, anti-patterns, and measurement.

Related canonical knowledge:

- [`../technical/ai-discovery-controls.md`](../technical/ai-discovery-controls.md) — crawler, robots, indexing and AI-search access controls.
- [`../measurement/ai-discovery.md`](../measurement/ai-discovery.md) — answer/generative visibility and citation measurement semantics.
- [`../standards/ai-search-platform-guidance.md`](../standards/ai-search-platform-guidance.md) — current platform-owned guidance from Google, Microsoft/Bing, OpenAI, Perplexity and protocol owners.
- [`../research/answer-generative-discovery.md`](../research/answer-generative-discovery.md) — primary research, benchmarks, limitations, Google Scholar and other research discovery indexes.
- [`../websites/keyword-use.md`](../websites/keyword-use.md) — visible topic/keyword language without legacy meta-keyword assumptions.
- [`../entities/`](../entities/README.md) — entity relationships and internal linking.
- [`../content/`](../content/README.md) — content quality, source material and the canonical T.E.S.T.I.N.G. philosophy.

## SEObasic position

AEO and GEO are useful terms when they identify a real discovery surface or measurement problem. They MUST NOT be used to justify unsupported claims such as:

- a universal “AI ranking factor” list;
- guaranteed citation or recommendation;
- special AI-only schema requirements without platform documentation;
- `llms.txt` as a Google Search ranking/inclusion requirement;
- content chunking solely for AI systems;
- fabricated third-party mentions or citations;
- rewriting useful human content into repetitive question-answer fragments merely because an AI system might extract them;
- treating one platform's crawler, index, citation metric or answer behavior as universal.

For Google Search specifically, Google currently states that AEO and GEO are common terms for work focused on AI-search visibility, but optimizing for Google's generative Search experiences remains SEO and foundational SEO best practices continue to apply.

Other platforms may expose their own crawler controls, indexing paths, citations, reporting or search behavior. Those differences belong in platform-specific guidance rather than being generalized into a universal GEO contract.

## Governing rule

> **Optimize for accurate discoverability, useful answers, strong source identity and measurable representation; do not invent an AI-ranking theory where the platform or evidence does not establish one.**

See [`AGENTS.md`](AGENTS.md) before automated changes.