# SEObasic Documentation

> **Status:** Canonical SEObasic knowledge index  
> **Framework root:** [`../README.md`](../README.md)  
> **Agent instructions:** [`AGENTS.md`](AGENTS.md)

`SEObasic/docs/` is organized by the **role knowledge plays**, not primarily by the channel where it was first created.

The canonical model is:

```text
what must remain true       → invariants/
what we evaluate            → evaluation/
what we deliberately do     → strategies/
where behavior varies       → surfaces/
why we believe something    → evidence/
how outcomes are defined    → measurement/
what words mean             → terminology/
```

This structure is intentionally different from a flat SEO checklist. A single subject may participate in several layers without those layers becoming interchangeable.

## Taxonomy

```text
SEObasic/docs/
├── README.md
├── AGENTS.md
│
├── invariants/
│   ├── truth-and-evidence.md
│   ├── channel-boundaries.md
│   └── evidence-classification.md
│
├── evaluation/
│   └── README.md
│
├── strategies/
│   ├── content/
│   ├── answer-discovery/
│   ├── entity-relationships/
│   └── on-page/
│
├── surfaces/
│   ├── owned-web/
│   │   └── technical/
│   ├── generative-search/
│   ├── local-maps/
│   ├── social/
│   ├── paid/
│   └── youtube/
│
├── evidence/
│   ├── research/
│   ├── platform-guidance/
│   ├── practitioner-positions/
│   └── historical-references/
│
├── measurement/
│   ├── contracts/
│   └── generative-search/
│
└── terminology/
```

Only real knowledge boundaries should become directories. Do not create empty folders merely to make the taxonomy look complete.

## 1. Invariants — what must remain true

[`invariants/`](invariants/README.md) contains cross-domain obligations that strategy or platform changes must not silently violate.

Current binding invariants include:

- truthful and supportable claims;
- channel/surface boundaries;
- evidence provenance and scope;
- measurement-definition integrity through the measurement contracts.

Entity identity, URL integrity, user value, and similar concepts may become additional explicit invariants when SEObasic has enough binding material to justify dedicated contracts. Do not promote descriptive guidance into an invariant merely for taxonomy symmetry.

## 2. Evaluation — what we assess

[`evaluation/`](evaluation/README.md) defines the dimensions SEObasic can evaluate across strategies and surfaces, including:

- discoverability;
- crawl/index eligibility;
- retrieval and visibility;
- intent alignment;
- presentation/snippets;
- citation and attribution;
- authority/trust;
- local relevance;
- engagement;
- conversion;
- technical performance.

Evaluation criteria describe **what is being assessed**. They do not automatically prescribe a tactic.

## 3. Strategies — what we deliberately do

[`strategies/`](strategies/README.md) contains adopted approaches and content/discovery methods.

Current strategy families include:

- canonical T.E.S.T.I.N.G. philosophy and application guidance;
- customer pain/problem-solution framing;
- AEO/GEO and answer/generative discovery strategy;
- entity relationship/internal-link strategy;
- natural on-page keyword/topic-language use.

A strategy may apply to several surfaces. It must not redefine a platform's mechanics merely because it is useful operationally.

## 4. Surfaces — where behavior varies

[`surfaces/`](surfaces/README.md) owns platform/channel-specific behavior and implementation context.

Current surface profiles include:

- owned web;
- owned-web technical metadata and structured data;
- generative/answer-search access controls;
- local/maps discovery;
- organic social;
- paid media;
- YouTube.

A surface profile may consume a strategy, but the surface owns its own mechanics, policies, eligibility rules, presentation, and platform-specific constraints.

## 5. Evidence — why we believe something

[`evidence/`](evidence/README.md) preserves the provenance behind SEObasic claims.

Current evidence classes are physically separated into:

- academic/empirical research;
- platform guidance and protocol-owner documentation;
- explicit practitioner positions;
- historical/source references.

The binding [`Evidence Classification Contract`](invariants/evidence-classification.md) governs claim-level classification. A source being stored under `evidence/` does not automatically make every statement inside it universally true.

## 6. Measurement — how outcomes are defined

[`measurement/`](measurement/README.md) remains a first-class layer because SEO/marketing terminology frequently collapses materially different observations.

The binding [`Metric Semantics Contract`](measurement/contracts/metric-semantics.md) preserves distinctions among rank, visibility, traffic, conversion, authority, geographic observations, citations, answer presence, referrals, and business outcomes.

Generative/answer measurement lives under [`measurement/generative-search/`](measurement/generative-search/ai-discovery.md).

## 7. Terminology — what words mean

[`terminology/`](terminology/README.md) owns glossary language and disambiguation.

Terminology does not create requirements by itself. A glossary definition cannot override an invariant, measurement contract, or platform-owned definition.

## AEO/GEO routing

AEO/GEO spans several roles and therefore should not be treated as one self-contained silo:

- strategy → [`strategies/answer-discovery/`](strategies/answer-discovery/README.md)
- crawler/access surface → [`surfaces/generative-search/ai-discovery-controls.md`](surfaces/generative-search/ai-discovery-controls.md)
- measurement → [`measurement/generative-search/ai-discovery.md`](measurement/generative-search/ai-discovery.md)
- current platform guidance → [`evidence/platform-guidance/ai-search-platform-guidance.md`](evidence/platform-guidance/ai-search-platform-guidance.md)
- academic evidence → [`evidence/research/answer-generative-discovery.md`](evidence/research/answer-generative-discovery.md)
- claim provenance → [`invariants/evidence-classification.md`](invariants/evidence-classification.md)

This prevents a strategy, crawler rule, benchmark, platform statement, or metric from silently becoming a universal "AI ranking factor."

## Artifact boundary

[`../examples/`](../examples/) remains outside `docs/` because examples are illustrative artifacts rather than authority by existence alone.

A future root `playbooks/` artifact may be added only when real reusable operational playbooks exist.

## Governing principle

> **Preserve invariants, evaluate explicitly, choose a strategy, apply it to a named surface, measure with defined semantics, and let evidence revise the system.**
