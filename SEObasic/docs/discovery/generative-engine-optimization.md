# Generative Engine Optimization (GEO)

> **Status:** Current research/industry term with platform-specific behavior  
> **Scope:** Improving the discoverability, selection, citation, representation and measurable influence of truthful web content in generative-engine responses  
> **Last reviewed:** 2026-08-14

## Definition

**Generative Engine Optimization (GEO)** is the term introduced in academic research for optimization aimed at improving content visibility in generative-engine responses. The foundational GEO paper was published at KDD 2024:

- Aggarwal et al., *GEO: Generative Engine Optimization*, KDD 2024, DOI `10.1145/3637528.3671900`.
- Primary preprint: https://arxiv.org/abs/2311.09735
- KDD record: https://www.kdd.org/kdd2024/research-track-papers/

SEObasic uses GEO as a scoped term for **generative discovery and representation**, not as a claim that all generative systems share one optimization formula.

## Relationship to SEO

GEO does not erase traditional search foundations.

```text
technical accessibility
        ↓
search/index/retrieval eligibility
        ↓
relevance + source quality + entity clarity
        ↓
retrieval / source selection
        ↓
generative synthesis
        ↓
citation / representation / referral / conversion
```

For Google Search specifically, Google currently states that AEO/GEO work aimed at its generative Search experiences is still SEO: AI Overviews and AI Mode are rooted in Google's Search ranking and quality systems and require no separate AI-specific technical optimization layer.

Source: https://developers.google.com/search/docs/fundamentals/ai-optimization-guide

Other platforms expose different controls and measurements. GEO therefore requires **platform-specific evidence**.

## Core GEO outcomes

GEO can concern several distinct outcomes:

### Retrieval eligibility

Can the platform discover/access the source at all?

This depends on the platform's crawler/index/retrieval path and control mechanisms.

### Source selection

Is the source selected among documents used to ground or construct an answer?

Selection is not the same as a classic SERP rank and may be hidden from publishers.

### Citation

Is the source visibly cited or linked in the generated answer?

Citation count, citation order and citation presence are different metrics.

### Citation absorption / answer influence

Does information from the source materially contribute facts, wording, evidence, definitions, comparisons or procedures to the answer?

A source can be retrieved without being cited, cited without being influential, or influential in ways that are difficult to observe externally.

### Representation quality

When the system discusses an entity, service, product, place or organization, is the representation accurate, current and attributable to defensible sources?

### Referral and conversion

Does generative discovery lead to useful visits, leads, sales, calls, bookings, subscriptions or other defined outcomes?

These measurements must not be collapsed into one “GEO rank.” See [`../measurement/ai-discovery.md`](../measurement/ai-discovery.md).

## Research evidence

The GEO literature is developing quickly and contains both useful findings and substantial limitations.

The 2024 KDD GEO study introduced GEO-bench and reported that tested optimization strategies could improve its visibility metrics by up to 40% in its experimental setting. The same paper also found that strategy effectiveness varied by domain.

That finding is **not a promise of a 40% improvement on Google, ChatGPT, Copilot, Perplexity or any current production platform**. The result belongs to the paper's benchmark, models, metrics and experimental conditions.

Subsequent research has examined:

- source/citation selection;
- content influence beyond visible citation;
- e-commerce GEO;
- query-intent-aware optimization;
- citation bias and source prominence;
- attribution gaps between retrieved and cited sources;
- synthetic/AI-generated source citation;
- authority-aware generative retrieval;
- optimization incentives that can degrade content quality.

The canonical research registry is [`../research/answer-generative-discovery.md`](../research/answer-generative-discovery.md).

## Durable GEO practices

SEObasic treats these as defensible practices when they are useful to people and supported by the applicable platform/research context.

### 1. Maintain a crawlable, indexable, retrievable source

A source that cannot be accessed cannot reliably participate in retrieval-grounded generative systems.

Different platforms use different bots and controls. See [`../technical/ai-discovery-controls.md`](../technical/ai-discovery-controls.md).

### 2. Publish non-commodity first-party value

Prefer content containing information that is difficult to reproduce generically:

- first-hand project experience;
- original measurements/data;
- clear methodology;
- expert explanation;
- specific examples;
- primary business/product/service information;
- original images/video;
- documented results and limitations;
- unique comparisons grounded in actual evidence.

Google's current generative Search guidance explicitly emphasizes unique, valuable, non-commodity and people-first content rather than AI-specific formatting tricks.

### 3. Make factual claims extractable without making prose artificial

Useful structure can make facts easier for both readers and retrieval systems to locate:

- accurate headings;
- explicit definitions;
- clearly labeled comparisons;
- tables where tabular structure is natural;
- steps where a process genuinely has steps;
- named units and dates;
- citations to primary/authoritative sources;
- direct statements followed by explanation/qualification.

Do not convert every page into tiny chunks, repeated Q&A fragments or formulaic “AI-ready” prose.

### 4. Support claims with evidence

Research on generative retrieval/citation repeatedly centers on evidence, attribution and source trustworthiness. For SEObasic, that means making important claims defensible rather than adding citations cosmetically.

Prefer primary sources when the claim depends on a standard, law, platform policy, dataset, study, specification or first-party fact.

### 5. Preserve entity identity and relationships

Clear entity naming, ownership, location, authorship, product/service relationships and canonical first-party information reduce ambiguity.

Relevant domains:

- [`../entities/`](../entities/README.md)
- [`../local-search/`](../local-search/README.md)
- [`../technical/structured-data.md`](../technical/structured-data.md)

Structured data must match visible content. Google currently states there is no special schema.org markup specifically required for its generative Search features.

### 6. Keep time-sensitive information current

Prices, hours, availability, policies, software versions, statistics, leadership, products and other changing facts should be updated when reality changes.

Do not fake freshness by mechanically changing dates.

### 7. Measure by platform and surface

Google, Bing/Copilot, ChatGPT and Perplexity expose different visibility/citation/referral controls and reporting.

A GEO experiment must record at least:

```yaml
geo_observation:
  platform: <platform>
  surface: <surface>
  query_or_prompt: <exact-input-or-defined-query-set>
  location: <if-material>
  language: <if-material>
  date: <timestamp-or-period>
  retrieval_observed: true | false | unknown
  citation_present: true | false
  cited_url: <url-or-null>
  citation_position: <defined-value-or-unknown>
  answer_presence: <defined-measure>
  referral_sessions: <defined-source>
  conversion_definition: <if-used>
  notes: <limitations>
```

## Platform-specific differences

### Google Search

Current Google guidance says:

- existing SEO fundamentals remain relevant;
- AI Overviews/AI Mode require Search indexing/snippet eligibility rather than special AI markup;
- no special schema is required;
- Google Search does not use `llms.txt` for these features;
- content does not need special “chunking” for generative AI;
- AI-specific rewriting is not required;
- inauthentic mentions are not a recommended tactic;
- third-party tools do not have access to Google's internal ranking/AI systems.

Canonical platform record: [`../standards/ai-search-platform-guidance.md`](../standards/ai-search-platform-guidance.md).

### Microsoft Bing / Copilot

Bing Webmaster Tools now exposes AI Performance reporting in public preview, including citation counts, cited pages and grounding-query information across supported Microsoft AI experiences. Bing also continues to document sitemaps, IndexNow and snippet controls as relevant to its search/AI ecosystem.

### ChatGPT search

OpenAI documents `OAI-SearchBot` as the crawler to allow when publishers want public content discoverable, surfaced, cited and linked in ChatGPT search summaries/snippets. OpenAI does not guarantee top placement.

### Perplexity

Perplexity documents `PerplexityBot` as the crawler designed to surface and link websites in Perplexity search results, distinct from foundation-model crawling.

## What GEO does not justify

SEObasic rejects universal claims such as:

- “add `llms.txt` and AI systems will rank you”;
- “use this schema and ChatGPT will cite you”;
- “put an answer in the first 40 words” as a universal rule;
- “use exactly N citations per page”;
- “repeat your entity name X times”;
- “AI engines always prefer listicles/tables/FAQs”;
- “citation frequency equals authority”;
- “a citation proves the model trusted every claim on the page”;
- “traditional SEO no longer matters”;
- “GEO visibility is equivalent across Google, ChatGPT, Copilot and Perplexity.”

## Optimization versus manipulation

GEO research itself creates an optimization incentive: publishers may rewrite pages to attract source selection/citation. That incentive can conflict with source quality.

SEObasic adopts this guardrail:

> **A GEO change is invalid if its primary effect is to make content more citation-seeking while making the underlying information less accurate, less useful, less attributable or more misleading.**

Recent research explicitly studies the risk of “citation wars” and citation-seeking rewrites that degrade document quality. This is evidence that GEO requires quality safeguards, not permission to optimize every measurable surface aggressively.

## Research and source registry

Use [`../research/answer-generative-discovery.md`](../research/answer-generative-discovery.md) for:

- peer-reviewed conference papers;
- arXiv/preprint research;
- ACL Anthology research;
- KDD/ACM records;
- Google Scholar discovery queries;
- Semantic Scholar/OpenAlex/DBLP/Crossref discovery;
- benchmark/dataset records;
- limitations and evidence classification.

## Governing rule

> **Improve real source quality and retrievability first; treat citation and generative visibility as platform-specific measurable outcomes, not as permission to manufacture signals.**