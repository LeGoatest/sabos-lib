# SEObasic Documentation Agent Instructions

> **Status:** Binding for automated work under `SEObasic/docs/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Knowledge index:** [`README.md`](README.md)  
> **Evidence contract:** [`invariants/evidence-classification.md`](invariants/evidence-classification.md)

SEObasic documentation is organized by the role knowledge plays:

```text
invariants/   → what must remain true
evaluation/   → what is being assessed
strategies/   → what we deliberately do
surfaces/     → where behavior varies
evidence/     → why we believe something
measurement/  → how outcomes are defined
terminology/  → what words mean
```

## Required routing

Before changing a subject:

1. Read [`../AGENTS.md`](../AGENTS.md).
2. Read [`README.md`](README.md).
3. Read [`invariants/evidence-classification.md`](invariants/evidence-classification.md) whenever work makes or changes material factual, causal, platform-behavior, research, optimization, measurement, or historical claims.
4. Identify the role of the change: invariant, evaluation, strategy, surface, evidence, measurement, or terminology.
5. Read the nearest nested `AGENTS.md` and subject README.
6. Consult other roles only when the change crosses those boundaries.
7. Treat [`../examples/`](../examples/) as illustrative, not normative.

## Role boundaries

Agents MUST NOT silently convert:

- evidence into an invariant;
- evaluation criteria into a mandatory tactic;
- a strategy into a platform guarantee;
- a surface-specific behavior into universal law;
- a measurement label into a causal explanation;
- terminology into a requirement;
- an example into authority.

A subject can span several roles. Preserve those roles instead of forcing the subject into one silo.

## Invariants

[`invariants/`](invariants/README.md) contains binding cross-domain obligations. Material changes to an invariant require explicit reasoning, evidence scope, affected behavior, and changelog coverage.

Current cross-domain invariants include truth/evidence, channel boundaries, and evidence classification. Measurement-specific binding semantics remain under [`measurement/contracts/`](measurement/contracts/README.md).

## Evaluation

[`evaluation/`](evaluation/README.md) describes what SEObasic can assess across strategies and surfaces: discoverability, eligibility, visibility, intent alignment, presentation, citation/attribution, trust, local relevance, engagement, conversion, and technical performance.

Evaluation criteria do not become optimization tactics automatically.

## Strategies

[`strategies/`](strategies/README.md) owns deliberate methods and content/discovery approaches.

Canonical T.E.S.T.I.N.G. wording now lives under [`strategies/content/testing-philosophy.md`](strategies/content/testing-philosophy.md). Preserve it exactly where its canonical identity matters.

AEO/GEO strategy lives under [`strategies/answer-discovery/`](strategies/answer-discovery/README.md). Entity-relationship strategy and on-page keyword/topic-language guidance also live under `strategies/`.

## Surfaces

[`surfaces/`](surfaces/README.md) owns channel/platform-specific mechanics and implementation context.

Do not generalize behavior among owned web, generative search, local/maps, organic social, paid media, and YouTube without evidence.

Crawler/access behavior for answer/generative systems lives at [`surfaces/generative-search/ai-discovery-controls.md`](surfaces/generative-search/ai-discovery-controls.md).

## Evidence

[`evidence/`](evidence/README.md) owns research, platform guidance, practitioner positions, and historical/source references.

Material claims MUST preserve evidence class, scope, primary source, publication status where applicable, limitations, and freshness context.

Research discovery services such as Google Scholar, Semantic Scholar, DBLP, Crossref, OpenAlex, Scopus, and Web of Science are discovery/bibliographic aids, not substitutes for primary research records.

## Measurement

Measurement work MUST preserve the binding [`Metric Semantics Contract`](measurement/contracts/metric-semantics.md).

For answer/generative measurement use [`measurement/generative-search/ai-discovery.md`](measurement/generative-search/ai-discovery.md).

Do not collapse rank, visibility, retrieval, citation, answer presence, referral, conversion, authority, or revenue into interchangeable terms.

## Terminology

[`terminology/`](terminology/README.md) owns glossary language and disambiguation. Glossary shorthand cannot override platform-owned definitions or binding metric semantics.

## Claim-level provenance

Material claims should preserve, as applicable:

- evidence class;
- platform/consumer;
- surface;
- purpose;
- primary source;
- review/freshness context;
- publication status and venue/DOI;
- method/sample/domain limitations;
- whether the statement is an observation, inference, position, or binding rule.

Unqualified words such as `legacy`, `obsolete`, `unsupported`, `ranking factor`, `AI visibility`, and `authority` MUST NOT be used when the evidence is narrower.

## Correction discipline

SEObasic is expected to change when stronger evidence falsifies or narrows a current claim.

When correcting an error:

1. preserve the stronger evidence and its scope;
2. correct the canonical current claim;
3. keep historical source excerpts unchanged when they are historical records;
4. update affected cross-role routing;
5. record the material correction in the subsystem changelog.

## Structural rule

Taxonomy describes responsibility, not prestige. Moving a file between roles does not automatically strengthen or weaken its authority.

Do not create directories merely for visual symmetry. Create a role/subdomain only when actual knowledge justifies it.
