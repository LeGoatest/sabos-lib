# SEObasic

> **Status:** Evolving knowledge framework  
> **Canonical entry point:** `SEObasic/README.md`  
> **Knowledge index:** [`docs/README.md`](docs/README.md)

SEObasic is SABOS Lib's governed body of practitioner knowledge for search, discovery, Answer Engine Optimization (AEO), Generative Engine Optimization (GEO), content, local visibility, digital channels, measurement, and related marketing evidence. It is not a generic SEO checklist.

SEObasic preserves practitioner experience, explicit positions, contracts, industry practice, platform/vendor guidance, formal standards, research evidence, historical references, examples, terminology, and metric semantics **without pretending those sources have equal authority**.

## Structure

```text
SEObasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
│
├── docs/
│   ├── README.md
│   ├── AGENTS.md
│   ├── contracts/
│   ├── positions/
│   ├── content/
│   ├── websites/
│   ├── discovery/
│   ├── technical/
│   ├── entities/
│   ├── local-search/
│   ├── social-media/
│   ├── paid-media/
│   ├── youtube/
│   ├── measurement/
│   ├── research/
│   ├── standards/
│   ├── references/
│   └── glossaries/
│
└── examples/
```

`examples/` remains outside `docs/` because examples are illustrative artifacts rather than knowledge authority by existence alone.

A future `playbooks/` artifact root may be added when SEObasic has real reusable operational playbooks. Do not create empty playbook structure merely for symmetry.

## Knowledge model

```text
practitioner experience + historical lessons
                +
industry practice + platform/vendor guidance
                +
formal standards + research evidence
                ↓
       documented understanding
                ↓
     explicit practitioner positions
                ↓
          binding contracts
                ↓
 channel / implementation / campaign practice
                ↓
 measurement + validation + outcomes
                ↓
         additional knowledge
```

A common industry practice does not automatically override an explicit practitioner position. A platform recommendation is authoritative only within its actual scope. Research does not automatically become a contract. Examples do not become requirements merely because they exist.

## Domain map

| Domain | Start here |
| --- | --- |
| Cross-domain contracts | [`docs/contracts/README.md`](docs/contracts/README.md) |
| Practitioner positions | [`docs/positions/README.md`](docs/positions/README.md) |
| Content / T.E.S.T.I.N.G. | [`docs/content/README.md`](docs/content/README.md) |
| Websites | [`docs/websites/README.md`](docs/websites/README.md) |
| AEO / GEO / generative discovery | [`docs/discovery/README.md`](docs/discovery/README.md) |
| Technical SEO | [`docs/technical/README.md`](docs/technical/README.md) |
| Entities/internal linking | [`docs/entities/README.md`](docs/entities/README.md) |
| Local search / GBP / Maps | [`docs/local-search/README.md`](docs/local-search/README.md) |
| Organic social media | [`docs/social-media/README.md`](docs/social-media/README.md) |
| Paid media / PPC | [`docs/paid-media/README.md`](docs/paid-media/README.md) |
| YouTube | [`docs/youtube/README.md`](docs/youtube/README.md) |
| Measurement/analytics | [`docs/measurement/README.md`](docs/measurement/README.md) |
| Research | [`docs/research/README.md`](docs/research/README.md) |
| Standards/platform guidance | [`docs/standards/README.md`](docs/standards/README.md) |
| Historical/source references | [`docs/references/README.md`](docs/references/README.md) |
| Terminology | [`docs/glossaries/README.md`](docs/glossaries/README.md) |
| Illustrative examples | [`examples/README.md`](examples/README.md) |

## AEO and GEO

SEObasic treats **AEO** and **GEO** as useful scoped terms, not replacements for SEO and not universal ranking systems.

- [`docs/discovery/answer-engine-optimization.md`](docs/discovery/answer-engine-optimization.md) defines AEO around answer-oriented discoverability and representation.
- [`docs/discovery/generative-engine-optimization.md`](docs/discovery/generative-engine-optimization.md) defines GEO around generative source selection, citation, representation and source influence.
- [`docs/technical/ai-discovery-controls.md`](docs/technical/ai-discovery-controls.md) owns crawler/access controls.
- [`docs/measurement/ai-discovery.md`](docs/measurement/ai-discovery.md) owns answer/citation/referral measurement semantics.
- [`docs/standards/ai-search-platform-guidance.md`](docs/standards/ai-search-platform-guidance.md) preserves current Google, Bing/Microsoft, OpenAI, Perplexity and protocol guidance.
- [`docs/research/answer-generative-discovery.md`](docs/research/answer-generative-discovery.md) preserves academic evidence, benchmarks and research-discovery indexes including Google Scholar.

Current Google Search guidance explicitly acknowledges AEO/GEO terminology but states that optimizing for Google's generative Search features remains SEO. SEObasic preserves that platform-specific position without generalizing it to every answer/generative platform.

## Binding cross-domain contracts

Current cross-domain contracts include:

- [`Truth and Evidence Contract`](docs/contracts/truth-and-evidence.md) — material claims and signals must remain truthful and supported.
- [`Channel Boundaries Contract`](docs/contracts/channel-boundaries.md) — source material may be reused across channels without pretending their mechanics, policies, conversion roles, or metrics are interchangeable.

Measurement-specific binding semantics live under [`docs/measurement/contracts/`](docs/measurement/contracts/README.md).

## Canonical T.E.S.T.I.N.G. philosophy

The authoritative T.E.S.T.I.N.G. philosophy remains under [`docs/content/testing-philosophy.md`](docs/content/testing-philosophy.md):

- **T — Talk about the drive behind the passion**
- **E — Engage the audience**
- **S — Share updates of success and failures**
- **T — Take time out to talk about others**
- **I — Investigate new ideas publicly**
- **N — Network responsibly**
- **G — Gather content regularly**

Its exact canonical wording is preserved in the philosophy document and the verbatim source excerpt under [`docs/references/source-excerpts/2026-08-09-testing-method.md`](docs/references/source-excerpts/2026-08-09-testing-method.md).

[`docs/content/testing-method.md`](docs/content/testing-method.md) provides application guidance without redefining the philosophy. The method is holistic and must not be reduced to a mandatory one-letter-per-post rotation.

## Measurement semantics

Measurement is a first-class SEObasic domain rather than loose SEO jargon.

The binding [`Metric Semantics Contract`](docs/measurement/contracts/metric-semantics.md) separates and governs concepts including:

- search-result state;
- ranking;
- visibility;
- traffic;
- conversion;
- local-search interaction;
- authority/link metrics;
- technical metrics;
- geographic/geo-grid measurement.

[`docs/measurement/ai-discovery.md`](docs/measurement/ai-discovery.md) extends that discipline to answer/generative observations such as answer presence, citation presence/rate/count, cited pages, grounding-query fields, source selection, citation absorption/influence, AI referral traffic and AI-assisted conversions.

Core rule:

> **Define the measurement before interpreting the result.**

Rank, visibility, traffic, conversion, authority, geo-grid observations, citations and answer presence must not be treated as interchangeable. Provider-specific metrics must retain their provider definitions and methodology context.

See [`docs/glossaries/measurement-and-analytics.md`](docs/glossaries/measurement-and-analytics.md).

## Channel boundary

Websites, answer/generative discovery, local search/GBP/Maps, organic social, paid media, and YouTube may support one strategy while retaining different platform mechanics, audiences, evidence, conversion roles, attribution, and metric semantics.

Reuse of source material does not erase those differences.

## Relationship to WDBASIC

SEObasic complements [`../Wdbasic/`](../Wdbasic/) rather than replacing it.

WDBASIC governs framework-independent web architecture, accessibility, security, semantics, progressive enhancement, forms, and implementation behavior. SEObasic governs discovery/content/channel/measurement knowledge and related evidence/contracts.

## Integrity and regression protection

SEObasic work must not:

- fabricate reviews, locations, customers, credentials, performance, rankings, citations, partnerships, awards, or campaign evidence;
- rewrite canonical practitioner philosophy to fit a platform;
- erase an explicit practitioner position merely because a common industry/vendor convention differs;
- silently change metric definitions, denominators, attribution, sampling, geographic scope, or provider methodology;
- present correlation or platform folklore as guaranteed causation;
- turn one vendor's recommendation, one GEO benchmark, or proprietary score into universal law;
- present AEO/GEO as proof of special AI ranking factors without evidence;
- use an example as a hidden normative contract.

Software regression testing remains an engineering concern; it is not a second meaning of the T.E.S.T.I.N.G. acronym.

## Adoption record

Where reproducibility matters, an adopting project may record:

```yaml
seobasic:
  source: LeGoatest/sabos-lib
  source_ref: <commit-or-tag>
  domains:
    - websites
    - discovery
    - technical
    - local-search
    - measurement
  contracts:
    - truth-and-evidence
    - channel-boundaries
    - measurement/metric-semantics
```

An adopter does not need to use every SEObasic domain.

## Ongoing development

SEObasic is intentionally incomplete. Add knowledge when there is a real lesson, evidence source, standard, practitioner position, contract, metric definition, example, or meaningful subject boundary to preserve.

The objective is durable professional knowledge, not quickly filling every possible directory.