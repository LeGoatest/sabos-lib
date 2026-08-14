# SEObasic Technical

> **Scope:** Crawlability, indexability, canonicalization, metadata, structured data, sitemaps, feeds, HTTP/search behavior, AI/search crawler controls, technical diagnostics, and regression protection.

Technical SEO in SEObasic is the implementation-facing layer that helps search and discovery systems discover, retrieve, interpret, and consistently identify first-party content.

## Subject map

This domain is expected to grow around topics such as:

- crawling and robots controls;
- indexability and status behavior;
- canonical URLs;
- titles, descriptions, headings, and page metadata;
- structured data and JSON-LD;
- AI/search crawler access and exclusion controls;
- XML sitemaps;
- IndexNow and other documented discovery-notification protocols;
- RSS/Atom and discovery feeds;
- redirects and URL migrations;
- pagination and collection behavior;
- duplicate/near-duplicate content signals;
- rendering and server-owned primary content;
- image/video discovery metadata where applicable;
- technical audits, monitoring, and regression tests.

## Current canonical material

- [`metadata.md`](metadata.md) — search presentation metadata, indexing/serving controls, canonical links, browser/document metadata, social-sharing metadata, and explicit legacy/unused status such as `meta keywords` being unused by Google Search.
- [`structured-data.md`](structured-data.md) — structured-data models, truthful schema selection, serialization, and validation.
- [`ai-discovery-controls.md`](ai-discovery-controls.md) — Google/Bing/OpenAI/Perplexity crawler and access controls, robots/indexing distinctions, sitemaps, IndexNow, and the separation between crawling, indexing, retrieval, citation and model-training permissions.

## Legacy-status rule

SEObasic does not silently drop obsolete metadata from documentation. When a historically familiar tag or directive is no longer used by a named consumer, document:

1. what it historically did;
2. which consumer no longer uses it;
3. what effect it no longer has;
4. whether another consumer may still require it.

Use precise statements such as **“unused by Google Search”** rather than claiming universal obsolescence without evidence.

## Cross-domain relationships

- Answer/generative discovery (AEO/GEO): [`../discovery/`](../discovery/README.md)
- Website content/architecture: [`../websites/`](../websites/README.md)
- Entity/internal-link relationships: [`../entities/`](../entities/README.md)
- Local search: [`../local-search/`](../local-search/README.md)
- AI discovery measurement: [`../measurement/ai-discovery.md`](../measurement/ai-discovery.md)
- Platform guidance: [`../standards/ai-search-platform-guidance.md`](../standards/ai-search-platform-guidance.md)
- WDBASIC implementation architecture: [`../../../Wdbasic/`](../../../Wdbasic/README.md)

Technical signals support discoverability but do not substitute for useful content, real business relevance, truthful claims, or platform-specific eligibility.

See [`AGENTS.md`](AGENTS.md) before automated changes.