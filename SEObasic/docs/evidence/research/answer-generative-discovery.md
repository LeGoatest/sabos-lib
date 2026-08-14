# Answer and Generative Discovery Research

> **Status:** Research evidence registry  
> **Scope:** AEO, GEO, generative search, retrieval/source selection, citations, attribution, source influence, answer-engine referrals, benchmarks, bias and optimization risks  
> **Last reviewed:** 2026-08-14

This document preserves academic/research evidence separately from current platform guidance.

Read [`AGENTS.md`](AGENTS.md) before changing research interpretation. Claim/publication status is governed by the binding [`Evidence Classification Contract`](../../invariants/evidence-classification.md).

## Evidence classification

Use these labels:

| Label | Meaning |
| --- | --- |
| **Peer-reviewed proceedings/article** | Published through a scholarly peer-review venue or journal/proceedings record. |
| **Preprint** | Public research manuscript not assumed peer-reviewed merely because it appears on arXiv or another repository. |
| **Benchmark/dataset** | Evaluation resource; conclusions depend on the benchmark and implementation. |
| **Research index** | Discovery/citation index such as Google Scholar; useful for finding research, not independent evidence for a substantive claim. |

Do not convert a preprint into a universal SEObasic contract. Do not assume a peer-reviewed result generalizes beyond its tested models, domains, prompts, retrieval systems or time period.

A record labeled **Preprint** MUST be checked for a subsequent peer-reviewed publication before its review/verification date is advanced. When a peer-reviewed version exists, use that publication as the publication-status authority while retaining the preprint when useful for manuscript access/version history.

# Foundational GEO research

## GEO: Generative Engine Optimization

**Status:** Peer-reviewed conference paper — KDD 2024.  
**Authors:** Pranjal Aggarwal, Vishvak Murahari, Tanmay Rajpurohit, Ashwin Kalyan, Karthik Narasimhan, Ameet Deshpande.  
**Venue:** 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining (KDD 2024), pages 5–16.  
**DOI:** `10.1145/3637528.3671900`

Primary/authoritative records:

- DOI: https://doi.org/10.1145/3637528.3671900
- arXiv: https://arxiv.org/abs/2311.09735
- KDD 2024 research-track record: https://www.kdd.org/kdd2024/research-track-papers/
- Princeton publication record: https://collaborate.princeton.edu/en/publications/geo-generative-engine-optimization/
- DBLP record: https://dblp.org/rec/conf/kdd/AggarwalMRKND24

### Contribution

The paper formalized **Generative Engine Optimization (GEO)**, introduced GEO-bench and proposed visibility metrics/optimization strategies for generative-engine responses.

The authors reported visibility improvements of up to 40% in their experimental framework and found substantial domain dependence in strategy effectiveness.

### SEObasic interpretation boundary

The reported improvement belongs to the paper's experimental setup. It is not a guaranteed percentage for current Google AI Overviews/AI Mode, ChatGPT search, Microsoft Copilot, Perplexity or other production systems.

# AEO-focused and comparative research

## Disentangling Answer Engine Optimization from Platform Growth

**Status:** Preprint — 2026.  
**Authors:** Keisuke Watanabe, Kazuki Nakayashiki.  
**Title:** *Disentangling Answer Engine Optimization from Platform Growth: A Log-Based Natural Experiment on ChatGPT Referral Traffic*.

- arXiv: https://arxiv.org/abs/2606.04362

### Contribution

Uses first-party analytics/server logs and an on-domain treated/control comparison to separate intervention effects from broader ChatGPT platform referral growth.

The paper reports a suggestive intervention-aligned increase but also reports a conservative placebo test that did not establish conclusive causality, illustrating why raw AEO traffic growth should not automatically be attributed to optimization work.

### SEObasic implication

When measuring AEO/GEO traffic, account for platform-wide growth, seasonality, site-wide trends and untreated/control groups when possible.

## Navigating the Shift: A Comparative Analysis of Web Search and Generative AI Response Generation

**Status:** Preprint — 2026.  
**Authors:** Mahe Chen, Xiaoxuan Wang, Kaiwen Chen, Nick Koudas.

- arXiv: https://arxiv.org/abs/2601.16858

### Contribution

Large-scale empirical comparison of Google Search and leading generative AI services across source domains, source types, intent and freshness. The work discusses implications for emergent AEO practice and differences from traditional SEO.

### SEObasic implication

Do not assume source ecosystems and retrieval behavior are identical between traditional search and generative systems.

# Citation, attribution and source-selection research

## Evaluating Verifiability in Generative Search Engines

**Status:** Peer-reviewed conference publication — Findings of EMNLP 2023.  
**Authors:** Nelson F. Liu, Tianyi Zhang, Percy Liang.  
**Venue:** Findings of the Association for Computational Linguistics: EMNLP 2023.  
**Pages:** 7001–7025.  
**DOI:** `10.18653/v1/2023.findings-emnlp.467`

Primary records:

- ACL Anthology: https://aclanthology.org/2023.findings-emnlp.467/
- DOI: https://doi.org/10.18653/v1/2023.findings-emnlp.467
- arXiv manuscript: https://arxiv.org/abs/2304.09848

### Contribution

Human evaluation of generative search engines with inline citations, focusing on citation completeness/recall and citation correctness/precision.

The study found substantial gaps between fluent answers and fully supported/correctly cited claims in the tested systems.

### SEObasic implication

A visible citation is not proof that every associated claim is supported by that citation. The study's measured rates are historical experimental results for the systems tested, not current universal platform quality rates.

## From Citation Selection to Citation Absorption

**Status:** Preprint — 2026.  
**Evidence maturity:** Emerging experimental research construct; not a standardized platform metric.  
**Authors:** Zhang Kai, He Xinyue, Yao Jingang.

- arXiv: https://arxiv.org/abs/2604.25707

### Contribution

Proposes separating **citation selection** from **citation absorption**, where a cited page materially contributes evidence/language/structure to an answer.

### SEObasic implication

Citation count and substantive source influence should not be treated as the same metric. `Citation absorption` MUST retain this paper/tool's methodology when used and must not be turned into a generic provider-neutral GEO percentage or a claimed first-party commercial-platform metric.

## What Gets Cited: Competitive GEO in AI Answer Engines

**Status:** Preprint — 2026.  
**Authors:** Rahul Vishwakarma, Shushant Kumar, Ratnesh Jamidar.

- arXiv: https://arxiv.org/abs/2605.25517

### Contribution

Controlled two-document RAG experiments across six LLMs examining which source receives the first citation. The authors report topical relevance and source/list position as major factors in their controlled environment, with smaller effects from several content features.

### SEObasic boundary

Controlled RAG results do not establish production-platform ranking factors. Source order in an experimental context may itself reflect upstream retrieval behavior that publishers cannot directly control.

## Synthetic Sources?: Auditing Generative Search Engine Citations for Evidence of AI-Generated Sources

**Status:** Preprint — 2026.  
**Authors:** Mowafak Allaham, Nicholas Diakopoulos.

- arXiv: https://arxiv.org/abs/2605.23684

### Contribution

Audit of ChatGPT, Copilot, Gemini and Perplexity citations across public-interest topics, examining evidence of AI-generated sources among cited pages.

### SEObasic implication

Generative citation is not an automatic certification of source originality, authority or human authorship.

## The Attribution Crisis in LLM Search Results

**Status:** Preprint — 2025.  
**Authors:** Ilan Strauss, Jangho Yang, Tim O'Reilly, Sruly Rosenblat, Isobel Moure.

- arXiv: https://arxiv.org/abs/2508.00838

### Contribution

Analyzes an attribution gap between relevant pages accessed by web-enabled LLMs and pages visibly credited/cited in outputs.

### SEObasic implication

Publisher exposure can differ materially between retrieval and visible attribution; citation monitoring may underestimate source use.

# Adjacent citation-attribution methodology

The works in this section inform **citation correctness, attribution methodology, RAG grounding and evidence-based text generation**. They are useful for measurement/design concepts but MUST NOT be presented as direct evidence of publisher ranking, source inclusion or citation behavior in Google AI Overviews/AI Mode, ChatGPT Search, Bing/Copilot, Perplexity, or another production search surface unless the study actually evaluates that surface.

## CiteGuard: Faithful Citation Attribution for LLMs via Retrieval-Augmented Validation

**Status:** Peer-reviewed — ACL 2026.  
**Authors:** Yee Man Choi, Xuehang Guo, Yi R. Fung, Qingyun Wang.

- ACL Anthology: https://aclanthology.org/2026.acl-long.282/
- DOI: https://doi.org/10.18653/v1/2026.acl-long.282

### Contribution

Research on validating citation attribution alignment in LLM-generated text.

### SEObasic implication

Citation quality itself is an evaluable property and should not be assumed from citation presence. This is adjacent citation-attribution methodology, not direct commercial-search ranking evidence.

## CiteFix: Enhancing RAG Accuracy Through Post-Processing Citation Correction

**Status:** Peer-reviewed — ACL Industry Track 2025.

- ACL Anthology: https://aclanthology.org/2025.acl-industry.23/

### Contribution

Studies post-processing methods to improve citation accuracy in RAG systems.

## Ground Every Sentence: Improving Retrieval-Augmented LLMs with Interleaved Reference-Claim Generation

**Status:** Peer-reviewed — Findings of NAACL 2025.

- ACL Anthology: https://aclanthology.org/2025.findings-naacl.55/

### Contribution

Fine-grained attributed text generation with sentence-level citations.

## Attribution, Citation, and Quotation: A Survey of Evidence-based Text Generation with Large Language Models

**Status:** Peer-reviewed survey — ACL 2026.  
**Authors:** Tobias Schreieder, Tim Schopf, Michael Färber.

- ACL Anthology: https://aclanthology.org/2026.acl-long.1430/
- DOI: https://doi.org/10.18653/v1/2026.acl-long.1430

### Contribution

Systematic survey of evidence-based LLM text generation, citation/attribution/quotation terminology and evaluation metrics.

### SEObasic implication

Useful for terminology and measurement design, but it is not a platform-specific AEO/GEO optimization guide.

# Retrieval, authority and content-feature research

## From Relevance to Authority: Authority-aware Generative Retrieval in Web Search Engines

**Status:** Peer-reviewed — ACL Industry Track 2026.

- ACL Anthology: https://aclanthology.org/2026.acl-industry.54/
- DOI: https://doi.org/10.18653/v1/2026.acl-industry.54

### Contribution

Studies retrieval that incorporates authority signals in addition to relevance, including online evaluation in a commercial web-search context.

### SEObasic implication

Research evidence supports treating source trust/authority as a retrieval-quality concern, but it does not expose a universal publisher-facing “authority score” for generative engines.

## Do Metadata and Appearance of the Retrieved Webpages Affect LLM's Reasoning in Retrieval-Augmented Generation?

**Status:** Peer-reviewed workshop paper — BlackboxNLP 2024.  
**Authors:** Cheng-Han Chiang, Hung-yi Lee.

- ACL Anthology: https://aclanthology.org/2024.blackboxnlp-1.24/
- DOI: https://doi.org/10.18653/v1/2024.blackboxnlp-1.24

### Contribution

Investigates whether webpage metadata/appearance can affect LLM reasoning when retrieved evidence conflicts.

### SEObasic boundary

This is evidence about tested RAG behavior, not proof that a production search platform uses a specific HTML appearance property as a ranking factor.

# GEO benchmarking and optimization research

## E-GEO: A Testbed for Generative Engine Optimization in E-Commerce

**Status:** Preprint — 2025.  
**Authors:** Puneet S. Bagga, Vivek F. Farias, Tamar Korkotashvili, Tianyi Peng, Yuhang Wu.

- arXiv: https://arxiv.org/abs/2511.20867
- Dataset/code referenced by authors: https://github.com/psbagga17/E-GEO

### Contribution

Introduces an e-commerce GEO benchmark and evaluates rewriting heuristics/optimization approaches for product-query contexts.

### SEObasic boundary

E-commerce findings should not be generalized to local service pages, news, healthcare, B2B, reference content or other domains without testing.

## Beyond Keywords: Driving Generative Search Engine Optimization with Content-Centric Agents

**Status:** Preprint — 2025.  
**Authors:** Qiyuan Chen et al.

- arXiv: https://arxiv.org/abs/2509.05607

### Contribution

Introduces CC-GSEO-Bench and a content-influence evaluation framework aimed at measuring substantive influence rather than surface citation alone.

## Role-Augmented Intent-Driven Generative Search Engine Optimization

**Status:** Preprint — 2025.  
**Authors:** Xiaolu Chen, Haojie Wu, Jie Bao, Zhen Chen, Yong Liao, Hu Huang.

- arXiv: https://arxiv.org/abs/2508.11158

### Contribution

Tests intent-driven content optimization in generative-search settings and extends GEO-style benchmark methodology.

# Exposure, prominence and ecosystem research

## When Attention Becomes Exposure in Generative Search

**Status:** Preprint — 2026.  
**Authors:** Shayan Alipour, Mehdi Kargar, Morteza Zihayat.

- arXiv: https://arxiv.org/abs/2601.01750

### Contribution

Examines relationships between external attention/prominence and citation exposure for Web3 enterprises.

### SEObasic boundary

Observed associations are not universal causal ranking factors. Domain, platform and query design matter.

# Optimization-risk research

## Mechanism Design for Generative Engines: From Exploitation toward Win-Win Outcomes

**Status:** Preprint — 2026-08-11; very recent and subject to revision.  
**Authors:** Chen Xu, Zitian Guo, Chenyan Xiong.

- arXiv: https://arxiv.org/abs/2608.11390

### Contribution

Studies incentives for citation-seeking optimization and reports experimental scenarios where adaptive GEO rewrites can degrade document quality or introduce unsupported claims, motivating mechanisms that reward verifiable content.

### SEObasic implication

This supports a strong anti-manipulation boundary: increasing citation probability is not a sufficient success criterion when source quality declines.

# Research discovery resources

These resources are **discovery/index tools**, not independent proof of a substantive claim.

## Google Scholar

General discovery:

- GEO exact phrase: https://scholar.google.com/scholar?q=%22Generative+Engine+Optimization%22
- AEO exact phrase: https://scholar.google.com/scholar?q=%22Answer+Engine+Optimization%22
- Generative search citations: https://scholar.google.com/scholar?q=%22generative+search%22+citations
- Generative search source attribution: https://scholar.google.com/scholar?q=%22generative+search%22+%22source+attribution%22
- Retrieval-augmented generation citations: https://scholar.google.com/scholar?q=%22retrieval-augmented+generation%22+citations
- AI search referral traffic: https://scholar.google.com/scholar?q=%22AI+search%22+referral+traffic
- AI answer engines / web search: https://scholar.google.com/scholar?q=%22answer+engine%22+web+search

Foundational-paper lookup:

- GEO KDD paper title: https://scholar.google.com/scholar?q=%22GEO%3A+Generative+Engine+Optimization%22
- Verifiability paper title: https://scholar.google.com/scholar?q=%22Evaluating+Verifiability+in+Generative+Search+Engines%22

When Scholar finds a paper, prefer the DOI/publisher/proceedings record or author-hosted primary manuscript for citation and interpretation.

## Semantic Scholar

- https://www.semanticscholar.org/

Use for citation graphs, related-paper discovery and author/topic exploration. Verify claims against the primary paper.

## arXiv

- https://arxiv.org/
- GEO search: https://arxiv.org/search/?query=generative+engine+optimization&searchtype=all
- Generative search search: https://arxiv.org/search/?query=generative+search&searchtype=all

arXiv is a primary manuscript repository but **arXiv presence does not itself mean peer review**.

## ACL Anthology

- https://aclanthology.org/

Useful for peer-reviewed NLP/IR proceedings and direct bibliographic/DOI records.

## ACM Digital Library / KDD

- ACM Digital Library: https://dl.acm.org/
- KDD: https://www.kdd.org/

Use DOI/proceedings records for the peer-reviewed GEO paper and related information-retrieval research.

## DBLP

- https://dblp.org/

Computer-science bibliographic index useful for conference/journal publication verification and author records.

## Crossref

- https://search.crossref.org/

Use DOI metadata to verify publication identity, publisher, venue and bibliographic details.

## OpenAlex

- https://openalex.org/

Open scholarly graph useful for related-work/citation discovery. Verify substantive claims against primary papers.

## ORCID

- https://orcid.org/

Useful for author identity/disambiguation; not a substitute for reading the work.

## PubPeer

- https://pubpeer.com/

Useful for identifying public post-publication discussion when relevant. Discussion is contextual evidence, not automatic invalidation of a paper.

## Scopus / Web of Science

Institutional-access bibliographic/citation databases can help with citation tracing and literature review. Verify conclusions against the original research.

# Search strategy for future updates

For a serious AEO/GEO literature review, search multiple concept families rather than only the acronyms:

```text
"generative engine optimization"
"answer engine optimization"
"generative search"
"AI search" citations
"generative search" attribution
"retrieval augmented generation" citations
"source attribution" LLM search
"generative retrieval" authority
"AI search" referral traffic
"web search" generative AI sources
"citation selection" generative
"source influence" generative search
```

Acronym-only searches can miss relevant information-retrieval, RAG, QA and attribution research that predates or avoids AEO/GEO terminology.

# Evidence-to-guidance rule

When research suggests an optimization tactic:

1. identify paper status (peer-reviewed/preprint);
2. check whether a preprint has a subsequent peer-reviewed publication;
3. record dataset/benchmark and domain;
4. record models/retrieval/generative-engine setup;
5. record the exact visibility/citation metric;
6. preserve negative/null results and limitations;
7. compare with current production-platform documentation;
8. classify the result as research evidence, not platform fact;
9. only create a practitioner position or contract after deliberate synthesis.

See the binding [`Evidence Classification Contract`](../../invariants/evidence-classification.md).

## Governing maxim

> **Search broadly, cite the primary work, preserve its limitations, and never turn one benchmark into a universal AI-search law.**