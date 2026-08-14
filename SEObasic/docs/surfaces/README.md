# SEObasic Surfaces

> **Role:** Where behavior varies  
> **Parent:** [`../README.md`](../README.md)  
> **Agent instructions:** [`AGENTS.md`](AGENTS.md)

A **surface** is a channel, platform, or delivery/discovery environment whose mechanics, policies, eligibility, presentation, audience, or attribution can differ from other surfaces.

## Current surfaces

- [`owned-web/`](owned-web/README.md) — first-party website implementation and presentation.
- [`owned-web/technical/`](owned-web/technical/README.md) — metadata, structured data, and owned-web technical behavior.
- [`generative-search/`](generative-search/README.md) — crawler/access and answer/generative discovery surface behavior.
- [`local-maps/`](local-maps/README.md) — Google Business Profile, Maps/local-pack, local identity, reviews, citations, and local visibility context.
- [`social/`](social/README.md) — organic social publishing/community context.
- [`paid/`](paid/README.md) — paid search/social, targeting, creative, attribution, and campaign mechanics.
- [`youtube/`](youtube/README.md) — YouTube discovery, packaging, retention, series, Shorts/long-form, community, and analytics context.

## Surface boundary

A surface answers:

> **Where does this behavior occur, and what mechanics belong to that environment?**

It does not automatically define:

- the cross-channel strategy;
- the evidence class of a claim;
- a universal invariant;
- a metric's semantics.

Route those respectively to [`../strategies/`](../strategies/README.md), [`../evidence/`](../evidence/README.md), [`../invariants/`](../invariants/README.md), and [`../measurement/`](../measurement/README.md).

## Platform specificity

A rule documented for one surface or platform MUST NOT be generalized to another without evidence. Google Search, Google Maps, Bing/Copilot, ChatGPT Search, Perplexity, YouTube, social platforms, and paid systems can expose different crawlers, eligibility rules, presentation models, controls, and metrics.

## Future surfaces

A dedicated `organic-search/` or vendor-specific subprofile may be added when actual governed content justifies it. Do not create empty profiles solely to make the tree symmetrical.

## Rule

> **Strategies may travel across surfaces; mechanics do not travel automatically.**
