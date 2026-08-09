# SEObasic

> **Status:** Initial framework  
> **Canonical entry point:** `SEObasic/README.md`  
> **Applies to:** public websites, landing pages, editorial content, knowledge bases, service pages, location pages, case studies, and other crawlable server-rendered content.

SEObasic is the repository's search visibility and content-discovery layer. It defines a practical baseline for content strategy, semantic page metadata, structured data, internal linking, entity relationships, sitemaps, feeds, and recurring content collection.

SEObasic complements WDBASIC rather than replacing it. WDBASIC continues to govern architecture, accessibility, security, semantics, performance, and progressive enhancement. SEObasic specializes the search and content-discovery layer.

## 1. Document map

```text
SEObasic/
├── README.md
├── testing-method.md
├── testing-philosophy.md
├── structured-data.md
├── entity-graph.md
├── reference/
│   ├── README.md
│   └── testing-history.md
└── examples/
    └── go/
        └── jsonld.go
```

Historical findings and recovered prior applications are preserved under [`reference/`](reference/README.md). Reference files are non-normative and do not override the current framework contracts.

## 2. Core goals

SEObasic prioritizes:

1. Useful, original, audience-centered content.
2. Crawlable semantic HTML.
3. Accurate titles, descriptions, canonicals, and page metadata.
4. Structured data that truthfully matches visible page content.
5. Strong internal linking and explicit entity relationships.
6. Discoverable tag, category, service, and location relationships.
7. XML sitemap and feed generation where applicable.
8. Consistent publication and modification metadata.
9. Repeatable content gathering and publishing workflows.
10. Search visibility without fabricated proof, keyword stuffing, doorway pages, or schema spam.
11. Repeatable engineering validation that prevents SEO automation from silently introducing regressions.

## 3. The two T.E.S.T.I.N.G. frameworks

SEObasic preserves two distinct frameworks that share the T.E.S.T.I.N.G. name. They must not be conflated.

### Content T.E.S.T.I.N.G. Method

Used for gathering and developing authentic source material:

- **T — Talk about the drive behind the passion**
- **E — Engage the audience**
- **S — Share updates of success and failures**
- **T — Take time out to talk about others**
- **I — Investigate new ideas publicly**
- **N — Network responsibly**
- **G — Gather content regularly**

See [`testing-method.md`](testing-method.md).

The method is intended to produce useful source material for website content, case studies, social posts, FAQs, project updates, galleries, knowledge-base entries, and other indexable content. It is not a requirement to publish every gathered item on every channel.

The method is holistic: its seven principles may overlap within the same post, project, or campaign. It must not be reduced to a mandatory one-letter-per-post rotation.

### Engineering T.E.S.T.I.N.G. Philosophy

Used for validating software, generators, content engines, indexes, graph relationships, routes, and other technical systems:

- **T — Thorough**
- **E — Early**
- **S — Systematic**
- **T — Transparent**
- **I — Independent**
- **N — Non-destructive**
- **G — Gradual**

See [`testing-philosophy.md`](testing-philosophy.md).

The engineering philosophy treats tests as regression boundaries and requires generated SEO output to remain observable, reproducible, reversible, and traceable to its source data.

## 4. Technical SEO baseline

Every indexable page should support, where applicable:

- One stable canonical URL.
- A unique page title.
- A concise meta description.
- One clear primary topic.
- Semantic heading hierarchy.
- Crawlable internal links.
- Visible author, organization, service, location, or subject context when relevant.
- Publication and modification dates when the content type uses them.
- Open Graph and social preview metadata.
- Responsive images with meaningful alternative text where the image conveys content.
- Correct HTTP status behavior.
- Inclusion or exclusion from `sitemap.xml` according to indexability.
- Structured data that matches the actual page type and visible content.

Primary content must not depend on client-side JavaScript to become available to crawlers.

## 5. Structured data

SEObasic supports automatic JSON-LD generation from page metadata.

The initial editorial/knowledge-content profile uses Schema.org `Article`. Other page types must use a schema type appropriate to the visible content rather than labeling every page as an article.

Recommended structured-data profiles include:

- `Article` for editorial or knowledge content.
- `BreadcrumbList` for hierarchical navigation.
- `Organization` or `LocalBusiness` when the page and business context justify it.
- `Service` for service-specific content where appropriate.
- Other Schema.org types only when their required and recommended properties are truthfully supported by the page.

See [`structured-data.md`](structured-data.md). A self-contained Go reference generator is included at [`examples/go/jsonld.go`](examples/go/jsonld.go).

## 6. Search graph

The search graph is formed from explicit, crawlable relationships between content.

Core graph signals include:

- Internal entity links.
- Backlinks between related pages.
- Tag and category pages.
- Service-to-location relationships.
- Case-study-to-service relationships.
- Breadcrumb hierarchy.
- Related-content links.
- Sitemap discovery.
- RSS or Atom feeds where applicable.
- Structured JSON-LD relationships.

See [`entity-graph.md`](entity-graph.md).

## 7. Content integrity

SEObasic prohibits:

- Fabricated reviews, ratings, awards, certifications, customers, or project results.
- Keyword stuffing.
- Hidden text or hidden links intended to manipulate rankings.
- Mass-produced thin location pages.
- Misleading publication or modification dates.
- Structured data for content that is not present or supported on the page.
- Automatically generated internal links that change meaning or damage readability.
- Publishing third-party content without permission or appropriate attribution.

Content automation may assist authors, but it must not become an excuse for low-value or misleading pages.

## 8. Testing and regression integrity

Changes to parsers, generators, structured-data models, routing, canonicalization, entity extraction, indexes, link generation, or graph construction must be validated according to [`testing-philosophy.md`](testing-philosophy.md).

A refactor must not silently redefine expected behavior merely to make a test suite pass. Intentional behavior changes require an explicit reason, deliberate test updates, and documentation of the new expectation.

At minimum, mature implementations should be able to detect:

- Invalid or incomplete metadata.
- Duplicate or conflicting canonical URLs.
- Broken internal links.
- Orphaned content.
- Invalid sitemap inclusion.
- Structured-data serialization failures.
- Incorrect breadcrumb relationships.
- Entity references that cannot be resolved.
- Search-index or graph inconsistencies.
- Unexpected route or HTTP-status regressions.

## 9. Recommended site SEO stack

A mature SEObasic implementation may provide:

```text
semantic HTML/content
        ↓
page metadata + canonical URLs
        ↓
internal entity links + backlinks
        ↓
tag/category/service/location pages
        ↓
sitemap.xml + RSS/Atom
        ↓
JSON-LD structured data
        ↓
entity graph and related-content discovery
        ↓
repeatable T.E.S.T.I.N.G. validation
```

This forms a technical knowledge-base and local/service SEO foundation without requiring a client-side application framework.

## 10. Adoption record

Projects adopting SEObasic should record at minimum:

```yaml
seobasic:
  source: LeGoatest/tailwindcss-semantic-layer
  source_ref: <tag-or-commit>
  canonical_base_url: <absolute-url>
  sitemap: <path-or-route>
  feed: <path-or-route-or-null>
  structured_data_generator: <implementation-path>
  content_metadata_source: <implementation-path>
  entity_graph_source: <implementation-path-or-null>
  test_contract: <implementation-path-or-null>
```

## 11. Roadmap

The next major SEObasic capability is automatic entity extraction from source content, followed by safe internal-link suggestions and graph-strength analysis.

Entity extraction must remain reviewable and deterministic enough to avoid incorrect links, accidental over-optimization, or changes in the author's intended meaning.

The engineering T.E.S.T.I.N.G. philosophy applies to that work from the first parser and extraction rules onward rather than being added only after the feature is complete.
