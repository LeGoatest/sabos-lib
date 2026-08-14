# SEObasic

> **Status:** Evolving knowledge framework  
> **Canonical entry point:** `SEObasic/README.md`  
> **Knowledge index:** [`docs/README.md`](docs/README.md)

SEObasic is SABOS Lib's governed body of practitioner knowledge for search, discovery, Answer Engine Optimization (AEO), Generative Engine Optimization (GEO), content, local visibility, digital channels, measurement, and related marketing evidence. It is not a generic SEO checklist.

SEObasic now organizes long-form knowledge primarily by **the role that knowledge plays**, rather than by whichever SEO/marketing channel happened to produce it.

## Structure

```text
SEObasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
├── agents/
│   ├── manifest.yaml
│   ├── standard.yaml
│   ├── rules/
│   │   ├── crawl/
│   │   ├── indexing/
│   │   ├── metadata/
│   │   ├── content/
│   │   ├── links/
│   │   ├── entities/
│   │   ├── structured-data/
│   │   ├── local/
│   │   ├── eeat/
│   │   ├── aeo/
│   │   ├── geo/
│   │   └── performance/
│   ├── profiles/
│   ├── page-types/
│   ├── patterns/
│   ├── vocabulary/
│   ├── evidence/
│   ├── schemas/
│   ├── validation/
│   ├── evaluation/
│   ├── strategies/
│   ├── surfaces/
│   ├── measurement/
│   └── terminology/
│
├── docs/
│   ├── README.md
│   ├── AGENTS.md
│   ├── invariants/
│   ├── evaluation/
│   ├── strategies/
│   ├── surfaces/
│   ├── evidence/
│   ├── measurement/
│   └── terminology/
│
└── examples/
```

The governing taxonomy is:

```text
what must remain true       → docs/invariants/
what we evaluate            → docs/evaluation/
what we deliberately do     → docs/strategies/
where behavior varies       → docs/surfaces/
why we believe something    → docs/evidence/
how outcomes are defined    → docs/measurement/
what words mean             → docs/terminology/
```

This is not a hierarchy of prestige. Moving a document does not automatically change its authority.

## Machine-readable interface

[`agents/manifest.yaml`](agents/manifest.yaml) is SEObasic's deterministic machine-readable entry point. Version `0.2.0` uses progressive disclosure and exposes granular rule domains for crawl, indexing, metadata, content, links, entities, structured data, local search, E-E-A-T, AEO, GEO, and performance; derived profiles and page-type contracts; governed content/discovery patterns; vocabulary; evidence provenance; type-specific schemas; and conformance checks.

The existing evaluation, strategy, surface, measurement, and terminology registries remain as compatibility/context indexes. The more granular files do not erase SEObasic's role-based knowledge model.

Machine rules carry stable IDs, effect/strength, scope/applicability, validation mode, and failure semantics. Platform-specific claims preserve consumer scope; research remains classified as research; derived profiles/page types/patterns cannot turn themselves into ranking factors or platform policy merely by existing as YAML.

`agents/` does **not** replace `docs/` or promote structured data into authority. Each machine record points to a canonical source. If a machine-readable record conflicts with its canonical source, the canonical source wins and the projection must be corrected.

## Start here

| Role | Start here |
| --- | --- |
| Binding cross-domain invariants | [`docs/invariants/README.md`](docs/invariants/README.md) |
| Evaluation dimensions | [`docs/evaluation/README.md`](docs/evaluation/README.md) |
| Content/discovery strategies | [`docs/strategies/README.md`](docs/strategies/README.md) |
| Platform/channel surfaces | [`docs/surfaces/README.md`](docs/surfaces/README.md) |
| Research/platform/practitioner/historical evidence | [`docs/evidence/README.md`](docs/evidence/README.md) |
| Measurement/analytics semantics | [`docs/measurement/README.md`](docs/measurement/README.md) |
| Terminology/disambiguation | [`docs/terminology/README.md`](docs/terminology/README.md) |
| Machine-readable projection | [`agents/manifest.yaml`](agents/manifest.yaml) |
| Illustrative examples | [`examples/README.md`](examples/README.md) |

## Knowledge flow

```text
invariants
    ↓
evaluation
    ↓
strategy
    ↓
surface application
    ↓
measurement
    ↓
evidence + outcomes
    ↓
retain / revise / falsify
```

Evidence surrounds the whole cycle. A platform recommendation is authoritative only within its actual scope. Research does not automatically become an invariant. A practitioner position does not become a platform guarantee. An example does not become a contract merely because it exists.

## AEO and GEO

SEObasic treats AEO and GEO as useful scoped terms, not replacements for SEO and not universal ranking systems.

They intentionally span several roles:

- strategy → [`docs/strategies/answer-discovery/`](docs/strategies/answer-discovery/README.md)
- generative/search crawler and access mechanics → [`docs/surfaces/generative-search/`](docs/surfaces/generative-search/README.md)
- current platform-owner guidance → [`docs/evidence/platform-guidance/ai-search-platform-guidance.md`](docs/evidence/platform-guidance/ai-search-platform-guidance.md)
- academic/experimental evidence → [`docs/evidence/research/answer-generative-discovery.md`](docs/evidence/research/answer-generative-discovery.md)
- answer/citation/referral measurement → [`docs/measurement/generative-search/ai-discovery.md`](docs/measurement/generative-search/ai-discovery.md)
- claim provenance and generalization limits → [`docs/invariants/evidence-classification.md`](docs/invariants/evidence-classification.md)

This preserves the distinctions established by the adversarial evidence audit: access, retrieval, citation, answer influence, referral, conversion, and business outcomes are not interchangeable.

## Binding invariants

Current cross-domain invariants include:

- [`Truth and Evidence`](docs/invariants/truth-and-evidence.md)
- [`Channel Boundaries`](docs/invariants/channel-boundaries.md)
- [`Evidence Classification`](docs/invariants/evidence-classification.md)

Measurement-specific binding semantics remain under [`docs/measurement/contracts/`](docs/measurement/contracts/README.md).

SEObasic is deliberately designed to be corrected when stronger evidence shows that a current claim is wrong, overbroad, outdated, or less mature than previously documented.

## Canonical T.E.S.T.I.N.G. philosophy

The authoritative T.E.S.T.I.N.G. philosophy now lives at [`docs/strategies/content/testing-philosophy.md`](docs/strategies/content/testing-philosophy.md). Its canonical wording remains unchanged.

Application guidance lives at [`docs/strategies/content/testing-method.md`](docs/strategies/content/testing-method.md), while the preserved historical source excerpt lives under [`docs/evidence/historical-references/source-excerpts/2026-08-09-testing-method.md`](docs/evidence/historical-references/source-excerpts/2026-08-09-testing-method.md).

## Measurement semantics

The binding [`Metric Semantics Contract`](docs/measurement/contracts/metric-semantics.md) separates concepts including rank, visibility, traffic, conversion, local interaction, authority/link metrics, geographic observations, and answer/generative discovery stages.

Generative measurement lives at [`docs/measurement/generative-search/ai-discovery.md`](docs/measurement/generative-search/ai-discovery.md).

Core rule:

> **Define the measurement before interpreting the result.**

See [`docs/terminology/measurement-and-analytics.md`](docs/terminology/measurement-and-analytics.md).

## Surface boundary

Owned web, generative/answer search, local/maps, organic social, paid media, and YouTube may share a strategy while retaining different mechanics, policies, audiences, attribution, and measurement definitions.

> **Strategies may travel across surfaces; mechanics do not travel automatically.**

## Relationship to WDBASIC

SEObasic complements [`../Wdbasic/`](../Wdbasic/) rather than replacing it.

WDBASIC governs framework-independent web architecture, accessibility, security, semantics, progressive enhancement, forms, and implementation behavior. SEObasic governs search/discovery strategy, channel/surface behavior, evidence, and measurement semantics.

## Integrity and regression protection

SEObasic work must not:

- fabricate reviews, locations, customers, credentials, performance, rankings, citations, partnerships, awards, or campaign evidence;
- rewrite canonical practitioner philosophy to fit a platform;
- erase an explicit practitioner position merely because common practice differs;
- silently change metric definitions, denominators, attribution, sampling, geography, or provider methodology;
- present correlation or folklore as guaranteed causation;
- turn one vendor recommendation, GEO benchmark, controlled RAG experiment, crawler rule, or proprietary score into universal law;
- use an example as a hidden normative contract.

## Artifact boundary

`examples/` remains outside `docs/` because examples are illustrative artifacts rather than authority by existence alone.

A future `playbooks/` root may be added when real reusable operational playbooks exist. Do not create empty structure merely for symmetry.

## Ongoing development

SEObasic is intentionally incomplete. Add knowledge when there is a real lesson, evidence source, standard, practitioner position, invariant, metric definition, example, or meaningful subject boundary to preserve.

> **Preserve invariants, evaluate explicitly, choose a strategy, apply it to a named surface, measure with defined semantics, and let evidence revise the system.**