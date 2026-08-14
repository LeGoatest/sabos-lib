# SEObasic Agent Instructions

> **Status:** Binding for automated work under `SEObasic/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md) and [`../governance/`](../governance/README.md)  
> **Canonical entry point:** [`README.md`](README.md)  
> **Knowledge index:** [`docs/README.md`](docs/README.md)  
> **Evidence contract:** [`docs/invariants/evidence-classification.md`](docs/invariants/evidence-classification.md)

SEObasic is a living knowledge system. Its documentation is organized by the role knowledge plays rather than by a flat list of SEO/marketing channels.

## Mission

> **Preserve the source and role of a claim, distinguish evidence from authority, and let stronger evidence deliberately correct the framework.**

## Required routing

Before changing a SEObasic subject:

1. Read [`README.md`](README.md).
2. Read [`docs/README.md`](docs/README.md) and [`docs/AGENTS.md`](docs/AGENTS.md).
3. Read [`docs/invariants/evidence-classification.md`](docs/invariants/evidence-classification.md) for material factual, causal, platform-behavior, research, measurement, optimization, or historical claims.
4. Identify the owning role: invariant, evaluation, strategy, surface, evidence, measurement, or terminology.
5. Read the nearest applicable nested `AGENTS.md` and subject README.
6. Consult cross-role knowledge only where needed.
7. Treat [`examples/`](examples/README.md) as illustrative rather than normative.

## Role taxonomy

- [`docs/invariants/`](docs/invariants/README.md) — what must remain true.
- [`docs/evaluation/`](docs/evaluation/README.md) — what is being assessed.
- [`docs/strategies/`](docs/strategies/README.md) — what we deliberately do.
- [`docs/surfaces/`](docs/surfaces/README.md) — where mechanics/policies vary.
- [`docs/evidence/`](docs/evidence/README.md) — why we believe something.
- [`docs/measurement/`](docs/measurement/README.md) — how outcomes are defined.
- [`docs/terminology/`](docs/terminology/README.md) — what words mean.

Agents MUST NOT silently convert one role into another. In particular:

```text
evidence     ≠ invariant
evaluation   ≠ tactic
strategy     ≠ platform guarantee
surface rule ≠ universal rule
metric       ≠ causal mechanism
terminology  ≠ requirement
example      ≠ authority
```

## Knowledge-source discipline

Agents MUST preserve distinctions among:

- canonical practitioner philosophy/definition;
- practitioner position;
- binding invariant/contract;
- industry practice;
- platform/vendor guidance;
- formal standard/specification;
- peer-reviewed research;
- preprint research;
- benchmark/dataset evidence;
- practitioner observation;
- inference/hypothesis;
- historical reference;
- example;
- measurement definition.

Do not flatten these into generic “best practices.”

## Platform/consumer scope

Do not silently generalize:

```text
unused by Google Search
    → unused everywhere

one platform's guidance
    → universal search/AI behavior

controlled RAG result
    → production ranking factor

crawler permission
    → retrieval/citation guarantee
```

Preserve consumer, product surface, purpose, and review/freshness context when platform behavior is material.

## Invariants

Current cross-domain binding invariants live under [`docs/invariants/`](docs/invariants/README.md), including:

- [`truth-and-evidence.md`](docs/invariants/truth-and-evidence.md)
- [`channel-boundaries.md`](docs/invariants/channel-boundaries.md)
- [`evidence-classification.md`](docs/invariants/evidence-classification.md)

Measurement-specific binding semantics remain under [`docs/measurement/contracts/`](docs/measurement/contracts/README.md).

Research, platform guidance, practitioner experience, and examples may inform an invariant, but they do not become binding merely because they exist.

## AEO/GEO routing

AEO/GEO intentionally spans roles:

1. strategy → [`docs/strategies/answer-discovery/AGENTS.md`](docs/strategies/answer-discovery/AGENTS.md)
2. surface controls → [`docs/surfaces/generative-search/ai-discovery-controls.md`](docs/surfaces/generative-search/ai-discovery-controls.md)
3. platform guidance → [`docs/evidence/platform-guidance/ai-search-platform-guidance.md`](docs/evidence/platform-guidance/ai-search-platform-guidance.md)
4. research → [`docs/evidence/research/answer-generative-discovery.md`](docs/evidence/research/answer-generative-discovery.md)
5. measurement → [`docs/measurement/generative-search/ai-discovery.md`](docs/measurement/generative-search/ai-discovery.md)
6. provenance/generalization → [`docs/invariants/evidence-classification.md`](docs/invariants/evidence-classification.md)

Agents MUST NOT turn one GEO benchmark, crawler rule, platform document, third-party tool, controlled RAG experiment, or observed citation pattern into a universal “AI ranking factor.”

## Measurement semantics

When using rank, position, visibility, traffic, conversion, authority, local/geo-grid concepts, AI citations, answer presence, generative visibility, referrals, or revenue, read:

1. [`docs/measurement/AGENTS.md`](docs/measurement/AGENTS.md)
2. [`docs/measurement/contracts/metric-semantics.md`](docs/measurement/contracts/metric-semantics.md)
3. [`docs/measurement/generative-search/ai-discovery.md`](docs/measurement/generative-search/ai-discovery.md) when applicable
4. [`docs/terminology/measurement-and-analytics.md`](docs/terminology/measurement-and-analytics.md)

Do not use materially different metrics interchangeably merely because tools use similar labels.

## Canonical T.E.S.T.I.N.G. protection

The canonical T.E.S.T.I.N.G. philosophy lives at [`docs/strategies/content/testing-philosophy.md`](docs/strategies/content/testing-philosophy.md).

Agents MUST NOT:

- redefine its letters;
- silently normalize or “improve” its canonical wording;
- reduce it to a mandatory one-letter-per-post rotation;
- replace it with an engineering-testing acronym;
- treat platform-specific examples as changes to the definition.

Application guidance lives at [`docs/strategies/content/testing-method.md`](docs/strategies/content/testing-method.md). The preserved historical source excerpt lives under [`docs/evidence/historical-references/source-excerpts/`](docs/evidence/historical-references/source-excerpts/2026-08-09-testing-method.md).

## Evidence conflict/correction

When stronger evidence conflicts with existing SEObasic guidance:

1. identify the current claim and owning role;
2. identify the conflicting evidence/evidence class;
3. state the actual scope of conflict;
4. preserve contrary/null evidence;
5. correct or narrow the owning role deliberately;
6. use change control for binding mutations;
7. record material corrections in the changelog.

SEObasic is allowed to be wrong.

## Structural rule

The SEObasic root is navigational. Long-form governed knowledge belongs under `docs/`. Examples remain outside `docs/` because they are artifacts.

A future `playbooks/` root may be added only when real reusable operational playbooks exist. Do not build empty taxonomic symmetry.

Moving a document does not change its authority by itself. Update local parent links and changelog references when canonical paths move.

## Changelog

Notable SEObasic changes update [`CHANGELOG.md`](CHANGELOG.md). Repository-wide or cross-system changes may also require [`../CHANGELOG.md`](../CHANGELOG.md).

## Governing maxim

> **Preserve what was learned, preserve what role it plays, and change it deliberately when stronger evidence proves it wrong.**
