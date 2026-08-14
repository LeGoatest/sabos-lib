# SEObasic Agent Instructions

> **Status:** Binding for automated work under `SEObasic/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md) and [`../governance/`](../governance/README.md)  
> **Canonical entry point:** [`README.md`](README.md)  
> **Knowledge index:** [`docs/README.md`](docs/README.md)  
> **Evidence contract:** [`docs/contracts/evidence-classification.md`](docs/contracts/evidence-classification.md)

SEObasic is a living knowledge system. It preserves practitioner knowledge, positions, contracts, platform/vendor guidance, standards, research, historical references, metric semantics, and examples without pretending those sources have equal authority.

## Mission

> **Preserve the source of a claim, distinguish evidence from opinion, and adapt established SEObasic knowledge without silently redefining it.**

## Required routing

Before changing a SEObasic subject:

1. Read [`README.md`](README.md).
2. Read [`docs/AGENTS.md`](docs/AGENTS.md).
3. Read [`docs/contracts/evidence-classification.md`](docs/contracts/evidence-classification.md) when work makes or changes material factual, causal, platform-behavior, research, measurement, optimization, or historical claims.
4. Read the nearest applicable nested `AGENTS.md`.
5. Read the subject README and binding contracts.
6. Read applicable practitioner positions and glossary definitions.
7. Consult standards, research, references, or examples only when relevant to the claim/change.

## Knowledge-source discipline

Agents MUST distinguish:

- canonical practitioner philosophy/definition;
- practitioner position;
- binding contract;
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

Do not flatten these into one category called “best practices.”

Material claims MUST preserve their actual evidence class and scope under the [`Evidence Classification Contract`](docs/contracts/evidence-classification.md).

## Platform/consumer scope

Agents MUST preserve the consumer, product surface, purpose, and review date when platform behavior is material.

Do not silently generalize:

```text
unused by Google Search
    → unused everywhere

Google guidance
    → universal AI/search behavior

controlled RAG finding
    → production ranking factor
```

A standards-layer status and a platform-consumption status may differ and must be recorded separately when material.

## Domain routing

All governed knowledge domains now live under [`docs/`](docs/README.md):

- [`docs/contracts/`](docs/contracts/README.md)
- [`docs/positions/`](docs/positions/README.md)
- [`docs/content/`](docs/content/README.md)
- [`docs/websites/`](docs/websites/README.md)
- [`docs/discovery/`](docs/discovery/README.md) — AEO, GEO and answer/generative discovery.
- [`docs/technical/`](docs/technical/README.md)
- [`docs/entities/`](docs/entities/README.md)
- [`docs/local-search/`](docs/local-search/README.md)
- [`docs/social-media/`](docs/social-media/README.md)
- [`docs/paid-media/`](docs/paid-media/README.md)
- [`docs/youtube/`](docs/youtube/README.md)
- [`docs/measurement/`](docs/measurement/README.md)
- [`docs/research/`](docs/research/README.md)
- [`docs/standards/`](docs/standards/README.md)
- [`docs/references/`](docs/references/README.md)
- [`docs/glossaries/`](docs/glossaries/README.md)

[`examples/`](examples/README.md) remains a root artifact and is illustrative rather than normative.

## Contracts

Research, standards, platform guidance, experience, references, positions, and measurements may inform a contract, but they do not become binding merely because they exist.

Agents MUST NOT weaken contracts to match a regression or silently create a new binding rule from one external source.

Current cross-domain contracts begin under [`docs/contracts/`](docs/contracts/README.md), including the binding [`Evidence Classification Contract`](docs/contracts/evidence-classification.md). Measurement semantics are separately governed under [`docs/measurement/contracts/`](docs/measurement/contracts/README.md).

## Practitioner positions

Agents MUST NOT:

- erase a documented preference because common industry practice differs;
- present a practitioner position as a search-engine/platform guarantee;
- silently convert a position into a contract;
- silently replace a position with vendor guidance.

If evidence materially challenges a documented position, preserve the conflict until the position is deliberately reviewed.

## Answer/generative discovery

For AEO, GEO, AI-search visibility, generative citations, answer-engine claims, crawler controls, or AI-discovery measurement, read:

1. [`docs/discovery/AGENTS.md`](docs/discovery/AGENTS.md)
2. [`docs/discovery/README.md`](docs/discovery/README.md)
3. [`docs/contracts/evidence-classification.md`](docs/contracts/evidence-classification.md)
4. [`docs/standards/ai-search-platform-guidance.md`](docs/standards/ai-search-platform-guidance.md)
5. [`docs/research/answer-generative-discovery.md`](docs/research/answer-generative-discovery.md) when a claim relies on research
6. [`docs/technical/ai-discovery-controls.md`](docs/technical/ai-discovery-controls.md) for crawler/index/access behavior
7. [`docs/measurement/ai-discovery.md`](docs/measurement/ai-discovery.md) for citations, answer presence, referrals or visibility metrics.

Agents MUST NOT turn one GEO benchmark, one crawler rule, one platform's documentation, one third-party tool, one controlled RAG experiment, or one observed citation pattern into a universal “AI ranking factor.”

For Google Search specifically, preserve Google's current platform position that AEO/GEO terminology does not create a separate optimization system for its generative Search features; foundational SEO remains controlling. Do not generalize that Google-specific statement to every other platform.

## Research publication status

When a material research record is labeled `preprint`, agents MUST check whether a later peer-reviewed publication exists before advancing its review/verification date.

Research indexes such as Google Scholar, Semantic Scholar, DBLP, Crossref, OpenAlex, Scopus, and Web of Science are discovery/bibliographic aids. They do not replace reading the primary paper or authoritative proceedings/publisher record.

Direct production-platform research and adjacent RAG/citation-attribution methodology MUST remain distinguishable.

## Measurement semantics

When work uses rank, position, visibility, traffic, conversion, authority, local visibility, geo-grid concepts, AI citations, answer presence, generative visibility or AI referral traffic, read:

1. [`docs/measurement/AGENTS.md`](docs/measurement/AGENTS.md)
2. [`docs/measurement/contracts/metric-semantics.md`](docs/measurement/contracts/metric-semantics.md)
3. [`docs/measurement/ai-discovery.md`](docs/measurement/ai-discovery.md) when AEO/GEO is involved
4. [`docs/glossaries/measurement-and-analytics.md`](docs/glossaries/measurement-and-analytics.md)

Do not use materially different metrics interchangeably merely because tools use similar labels.

## Canonical T.E.S.T.I.N.G. protection

The canonical T.E.S.T.I.N.G. philosophy lives at [`docs/content/testing-philosophy.md`](docs/content/testing-philosophy.md).

Agents MUST NOT:

- redefine its letters;
- silently improve or normalize its canonical wording;
- reduce it to a mandatory one-letter-per-post rotation;
- replace it with an engineering-testing acronym;
- treat platform-specific examples as changes to the definition.

Application guidance belongs in [`docs/content/testing-method.md`](docs/content/testing-method.md). The canonical source excerpt remains under [`docs/references/source-excerpts/`](docs/references/source-excerpts/2026-08-09-testing-method.md).

## Cross-channel rule

Websites, answer/generative discovery, Google Business Profile/Maps/local search, organic social, paid media, and YouTube may support one strategy while retaining different mechanics, policies, audiences, conversion roles, attribution, and measurement definitions.

Do not copy advice or metric assumptions from one channel/surface into another without checking whether the behavior actually transfers.

## Research and standards rule

When evidence conflicts with an established SEObasic position or contract:

1. identify the existing position/contract;
2. identify the conflicting evidence and source/evidence class;
3. explain the scope of conflict;
4. preserve contrary/null evidence rather than suppressing it;
5. preserve both until an intentional framework decision is made;
6. use repository change control for material binding mutations.

SEObasic is allowed to be wrong. When stronger evidence falsifies or materially narrows an existing claim, correct it deliberately and record the material correction rather than defending the previous wording.

## Structural rule

The SEObasic root is navigational. Long-form governed knowledge belongs under `docs/`. Examples remain outside `docs/` because they are artifacts.

A future `playbooks/` root may be added only when real reusable operational playbooks exist.

Moving a document does not change its authority by itself. Update local parent links and changelogs when canonical paths move.

## Changelog

Notable SEObasic changes update [`CHANGELOG.md`](CHANGELOG.md). Repository-wide or cross-system changes may also require [`../CHANGELOG.md`](../CHANGELOG.md).

## Governing maxim

> **Preserve what was learned. Identify where it came from. Change it deliberately when stronger evidence proves it wrong.**
