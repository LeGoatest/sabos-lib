# SEObasic Documentation Agent Instructions

> **Status:** Binding for automated work under `SEObasic/docs/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Knowledge index:** [`README.md`](README.md)  
> **Evidence contract:** [`contracts/evidence-classification.md`](contracts/evidence-classification.md)

SEObasic documentation preserves multiple knowledge types with different authority: contracts, practitioner positions, platform guidance, formal standards, peer-reviewed research, preprints, benchmarks/datasets, practitioner observations, historical references, glossaries, and channel/domain knowledge.

## Required routing

Before changing a subject:

1. Read [`../AGENTS.md`](../AGENTS.md).
2. Read [`README.md`](README.md).
3. Read [`contracts/evidence-classification.md`](contracts/evidence-classification.md) whenever work makes or changes material factual, causal, platform-behavior, research, optimization, measurement, or historical claims.
4. Read the nearest nested `AGENTS.md`.
5. Read the subject README and binding contracts.
6. Consult positions, standards, research, references, and glossaries as relevant.
7. Treat [`../examples/`](../examples/) as illustrative evidence, not authority.

## Preserve knowledge type

Do not silently convert:

- research into a contract;
- platform guidance into universal law;
- a practitioner position into an external standard;
- a practitioner observation into a causal mechanism;
- a controlled benchmark/RAG result into a production-platform ranking factor;
- an example into a requirement;
- a historical reference into current canonical guidance;
- glossary shorthand into a metric definition that violates the measurement contract.

## Claim-level provenance

Material claims MUST preserve the evidence status needed to interpret them correctly.

As applicable this includes:

- evidence class;
- platform/consumer;
- product surface;
- purpose;
- primary source;
- review date/freshness context;
- publication status;
- venue/DOI;
- method/sample/domain limitations;
- whether the statement is an observation, inference, or binding adopted rule.

Unqualified words such as `legacy`, `obsolete`, `unsupported`, `ranking factor`, `AI visibility`, and `authority` MUST NOT be used where the actual evidence is consumer-specific, provider-specific, experimental, or otherwise narrower.

## Platform claims

For changing platform behavior, prefer current first-party documentation for that platform's own behavior and preserve its actual scope.

Do not infer:

```text
unused by one consumer
    = unused everywhere

crawler blocked
    = URL necessarily unknown

crawler allowed
    = indexing/citation/ranking guaranteed
```

Platform documentation governs only the platform/product surface it actually owns.

## Research

When a research record is labeled `preprint`, check for a later peer-reviewed publication before advancing its review date.

Research discovery services such as Google Scholar, Semantic Scholar, DBLP, Crossref, OpenAlex, Scopus, and Web of Science are discovery/bibliographic aids; they are not substitutes for the primary research record or paper.

Preserve contrary, null, and mixed evidence. Separate direct search/platform audits from adjacent RAG, citation-attribution, and scientific-writing methodology.

## Canonical definitions

Preserve user-authored canonical definitions and philosophies exactly when their identity matters, including the canonical T.E.S.T.I.N.G. wording under `content/`.

Evidence can challenge claims made *about* a canonical philosophy without silently rewriting the philosophy itself.

## Measurement

Measurement work MUST preserve the metric-semantics contract and must not collapse rank, visibility, traffic, conversion, authority, geographic observations, answer presence, citations, referrals, or business outcomes into interchangeable terms.

For AEO/GEO measurements, preserve the binding layer separation in [`measurement/contracts/metric-semantics.md`](measurement/contracts/metric-semantics.md).

## Correction discipline

SEObasic documentation is expected to change when stronger evidence falsifies or narrows an existing claim.

When correcting an error:

1. preserve the stronger evidence and its scope;
2. correct the canonical current claim;
3. keep historical source excerpts unchanged when they are historical records;
4. update affected cross-links/contracts;
5. record the material correction in the subsystem changelog.

Do not defend stale wording merely because SEObasic previously documented it.

## Structural changes

Moving knowledge under `docs/` does not weaken or strengthen a contract by itself. Update root routing, local authority paths, cross-links, and changelogs when canonical paths move.
