# SEObasic Research Agent Instructions

> **Scope:** `SEObasic/docs/research/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Binding evidence contract:** [`../contracts/evidence-classification.md`](../contracts/evidence-classification.md)

Agents handling research MUST preserve evidence quality, publication status, scope, and uncertainty.

## Required

- Prefer primary research, proceedings/publisher records, authoritative datasets, and DOI records when available.
- Apply the binding [`Evidence Classification Contract`](../contracts/evidence-classification.md) to material claims.
- Record publication date and platform/time context when behavior can change.
- Distinguish peer-reviewed publications from preprints, benchmarks/datasets, surveys, practitioner observations, and platform claims.
- Before advancing a record's review/verification date, check whether a work still labeled `preprint` has since received a peer-reviewed publication.
- When a peer-reviewed publication exists, use it as the publication-status authority while retaining the preprint when useful for manuscript access/version history.
- Separate findings from interpretation and from SEObasic's adopted position.
- Record meaningful limitations, sample constraints, conflicts of interest, methodology caveats, model/retrieval setup, domain, and benchmark scope when material.
- Distinguish correlation, causal evidence, controlled experiment, observational evidence, practitioner case evidence, and platform claims.
- Distinguish direct production-platform/search evidence from adjacent RAG, LLM-attribution, citation-methodology, or scientific-writing research.
- Preserve negative, null, mixed, and contrary findings rather than selecting only evidence that supports an existing position.
- Link research to contracts only when the relationship is real and documented.

## Research discovery indexes

Google Scholar, Semantic Scholar, DBLP, OpenAlex, Crossref, Scopus, Web of Science, and similar services are useful for:

- discovering related work;
- tracing citations;
- locating later publication versions;
- verifying bibliographic identity;
- finding DOI/publisher/proceedings records.

They are **discovery/index resources, not independent evidence for the substantive finding of a paper**.

When an index finds a material paper, read and cite the primary paper or authoritative publication record before converting the result into SEObasic guidance.

## Generalization boundary

Agents MUST NOT treat a result from one model, benchmark, retrieval pipeline, domain, query set, platform, or time period as a universal SEO/AEO/GEO rule without evidence supporting that generalization.

In particular:

```text
controlled RAG result
    ≠ production-platform ranking factor

citation-attribution methodology
    ≠ publisher inclusion/ranking evidence

one platform observation
    ≠ universal AI-search behavior
```

## Prohibited

Agents MUST NOT:

- cite a headline or research-index snippet without checking the underlying study when material;
- leave a study classified as `preprint` after verifying that a peer-reviewed publication exists;
- turn one study into universal law;
- omit contrary or null evidence merely because it challenges an existing preference;
- present adjacent methodology as direct evidence of Google, Bing/Copilot, ChatGPT Search, Perplexity, or another production platform unless the study actually evaluates that surface;
- alter canonical practitioner material to agree with research automatically;
- fabricate citations, venues, DOI values, sample sizes, findings, or statistical significance.

When research materially challenges a binding contract, report the conflict and use deliberate contract/change-control review rather than silently changing the rule.

Material research changes that alter framework interpretation should update [`../../CHANGELOG.md`](../../CHANGELOG.md).
