# SEObasic Answer and Generative Discovery

> **Status:** Evolving strategy domain  
> **Role:** Answer Engine Optimization (AEO), Generative Engine Optimization (GEO), answer-oriented discoverability, source representation, and related strategy  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

This domain documents answer-oriented and generative discovery strategy without treating AEO or GEO as replacements for foundational SEO or as one universal cross-platform ranking system.

## Core model

```text
search/discovery
│
├── traditional search visibility
│
├── AEO
│   └── usefulness and discoverability in direct-answer / answer-oriented experiences
│
└── GEO
    └── discoverability, citation, source selection and representation in generative responses
```

These experiences can overlap, but platform mechanics remain surface-specific. A page may participate in classic search results, featured/direct answers, generative responses, citations, summaries, shopping/local experiences, or agentic workflows depending on the platform.

## Current strategy documents

- [`answer-engine-optimization.md`](answer-engine-optimization.md) — AEO terminology, answer-oriented practice, boundaries, anti-patterns, and measurement relationships.
- [`generative-engine-optimization.md`](generative-engine-optimization.md) — GEO terminology, citation/representation concepts, research boundaries, anti-patterns, and measurement relationships.

## Cross-role canonical knowledge

- surface controls → [`../../surfaces/generative-search/ai-discovery-controls.md`](../../surfaces/generative-search/ai-discovery-controls.md)
- generative measurement → [`../../measurement/generative-search/ai-discovery.md`](../../measurement/generative-search/ai-discovery.md)
- current platform guidance → [`../../evidence/platform-guidance/ai-search-platform-guidance.md`](../../evidence/platform-guidance/ai-search-platform-guidance.md)
- research/benchmarks → [`../../evidence/research/answer-generative-discovery.md`](../../evidence/research/answer-generative-discovery.md)
- on-page keyword/topic language → [`../on-page/keyword-use.md`](../on-page/keyword-use.md)
- entity relationships/internal linking → [`../entity-relationships/`](../entity-relationships/README.md)
- content strategy/T.E.S.T.I.N.G. → [`../content/`](../content/README.md)
- evidence provenance/generalization → [`../../invariants/evidence-classification.md`](../../invariants/evidence-classification.md)

## SEObasic position

AEO and GEO are useful terms when they identify a real discovery, representation, or measurement problem. They MUST NOT be used to justify unsupported claims such as:

- a universal “AI ranking factor” list;
- guaranteed citation or recommendation;
- special AI-only schema requirements without platform documentation;
- `llms.txt` as a Google Search ranking/inclusion requirement;
- content chunking solely for AI systems;
- fabricated third-party mentions or citations;
- rewriting useful human content into repetitive question-answer fragments merely because an AI system might extract them;
- treating one platform's crawler, index, citation metric, or answer behavior as universal.

For Google Search specifically, current Google guidance acknowledges AEO/GEO terminology while stating that optimization for Google's generative Search experiences remains SEO and foundational SEO practices continue to apply. That position is Google-specific and must not be generalized to every answer/generative platform.

Other platforms may expose different crawler controls, inclusion paths, citations, reporting, or answer behavior. Those differences belong under the owning surface/evidence documents rather than being converted into a universal GEO invariant.

## Governing rule

> **Optimize for accurate discoverability, useful answers, strong source identity and measurable representation; do not invent an AI-ranking theory where the platform or evidence does not establish one.**

See [`AGENTS.md`](AGENTS.md) before automated changes.
