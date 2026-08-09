# SEObasic Agent Instructions

> **Status:** Binding for automated work under `SEObasic/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md) and [`../governance/`](../governance/README.md)  
> **Canonical entry point:** [`README.md`](README.md)

SEObasic is a living knowledge system. It preserves practitioner knowledge, project-specific positions, industry standards, platform guidance, research evidence, historical lessons, contracts, measurement semantics, and implementation patterns without pretending those sources have equal authority.

## Mission

> **Preserve the source of a claim, distinguish evidence from opinion, and adapt established SEObasic knowledge without silently redefining it.**

## Required routing

Before changing a SEObasic subject, read:

1. This file.
2. [`README.md`](README.md).
3. The nearest applicable nested `AGENTS.md`.
4. The subject README and binding contracts.
5. Applicable glossary entries.
6. Standards, research, references, or examples only when they are relevant to the claim or change.

## Knowledge-source discipline

Agents MUST distinguish at least these source types when the distinction matters:

- **Canonical practitioner philosophy or definition** — user-authored or explicitly adopted wording that must not be silently rewritten.
- **Practitioner position** — an intentional preferred approach based on accumulated experience.
- **Contract** — an adopted normative obligation defining what an implementation, workflow, report, or agent MUST, SHOULD, or MUST NOT do.
- **Industry practice** — common professional practice that may inform but does not automatically override a project position.
- **Platform/vendor guidance** — authoritative for that platform's documented behavior, not universal law.
- **Formal standard/specification** — normative only within its actual scope and version.
- **Research evidence** — empirical or scholarly evidence whose method, scope, and limitations must remain visible.
- **Historical lesson/reference** — preserved context that may explain a rule without automatically governing current behavior.
- **Example** — illustrative implementation, never authority merely because it exists.

Do not flatten these into a single category called “best practice.”

## Domain routing

- [`contracts/`](contracts/README.md) — contract model and cross-domain binding obligations.
- [`content/`](content/README.md) — content philosophy, content strategy, T.E.S.T.I.N.G., reuse, editorial/community practice.
- [`websites/`](websites/README.md) — websites, landing pages, service/location content, conversion/search relationships, first-party durable content.
- [`technical/`](technical/README.md) — crawling, indexing, metadata, canonicals, structured data, sitemaps, feeds, technical diagnostics.
- [`entities/`](entities/README.md) — entity relationships, internal linking, knowledge graphs, backlinks, topical/service/location relationships.
- [`local-search/`](local-search/README.md) — local intent, Google Business Profile, local/map-pack visibility, citations, reviews, service areas, local proof.
- [`social-media/`](social-media/README.md) — organic social-media marketing, posts, community interaction, channel-specific content use.
- [`paid-media/`](paid-media/README.md) — PPC and paid campaigns, including paid search and paid social, measurement and landing-page relationships.
- [`youtube/`](youtube/README.md) — YouTube channel/video strategy, discovery, search, packaging, retention, and cross-channel relationships.
- [`measurement/`](measurement/README.md) — metric semantics, analytics vocabulary, ranking/visibility/traffic/conversion distinctions, geographic measurement, and cross-channel comparability.
- [`research/`](research/README.md) — research collection, evidence review, methods, limitations, and synthesis.
- [`standards/`](standards/README.md) — formal standards, specifications, platform documentation, and applicability records.
- [`references/`](references/README.md) — historical records, source excerpts, recovered applications, and non-normative source material.
- [`examples/`](examples/README.md) — illustrative/reference implementations.
- [`glossaries/`](glossaries/README.md) — subject terminology and disambiguation.

## Contracts

Contracts are the bridge between knowledge and governed implementation.

Research, standards, platform guidance, practitioner experience, historical lessons, and measurements can inform a contract, but they do not become binding merely because they exist.

When a reusable position becomes an implementation or reporting obligation, formalize it through [`contracts/`](contracts/README.md) or a domain-local contract and preserve the rationale/evidence that justified it.

Agents MUST NOT weaken contracts to match a regression or silently create new binding rules from one external source.

## Measurement semantics

When work uses metrics such as rank, position, visibility, traffic, conversion, authority, local visibility, or geo-grid rank, read:

1. [`measurement/AGENTS.md`](measurement/AGENTS.md)
2. [`measurement/contracts/metric-semantics.md`](measurement/contracts/metric-semantics.md)
3. [`glossaries/measurement-and-analytics.md`](glossaries/measurement-and-analytics.md)

Do not use materially different metrics interchangeably merely because industry tools use similar labels.

## Canonical T.E.S.T.I.N.G. protection

The canonical T.E.S.T.I.N.G. philosophy lives under [`content/testing-philosophy.md`](content/testing-philosophy.md).

Agents MUST NOT:

- redefine its letters;
- silently improve or normalize its canonical wording;
- reduce it to a mandatory one-letter-per-post rotation;
- replace it with an engineering-testing acronym;
- treat platform-specific examples as changes to the definition.

Application guidance belongs in [`content/testing-method.md`](content/testing-method.md).

## Cross-channel rule

SEObasic treats channels as connected but non-identical.

A website page, Google Business Profile post, organic social post, paid campaign, local/map-pack signal, and YouTube video may support one strategy while retaining different platform mechanics, audiences, evidence, conversion roles, and measurement definitions.

Do not copy advice or metric assumptions from one channel into another without checking whether the behavior and measurement actually transfer.

## Research and standards rule

Research, standards, vendor documentation, and industry consensus may strengthen, challenge, or contextualize a practitioner position. They MUST NOT silently erase an explicitly documented position or binding contract.

When evidence conflicts with an established SEObasic position or contract:

1. identify the existing position/contract;
2. identify the conflicting evidence and source type;
3. explain the scope of the conflict;
4. preserve both until an intentional framework decision is made;
5. use repository change control when a binding position changes materially.

## Structural rule

Every substantive SEObasic subject directory SHOULD contain:

- `README.md` — human subject entrypoint;
- `AGENTS.md` — agent routing and preservation rules;
- deeper knowledge files organized by the subject rather than forced into a universal flat template;
- domain-local contracts when stable obligations exist;
- subject glossary material when terminology becomes large or specialized enough to justify it.

A nested directory may add stricter rules but may not weaken parent governance.

## Changelog

Notable SEObasic changes MUST update [`CHANGELOG.md`](CHANGELOG.md). Repository-wide or cross-system changes may also require [`../CHANGELOG.md`](../CHANGELOG.md).

## Governing maxim

> **Preserve what was learned. Identify where it came from. Test it against evidence. Change it deliberately, not silently.**
