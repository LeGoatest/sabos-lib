# Entity Graph and Internal Linking

SEObasic treats internal links as explicit relationships between meaningful entities, not as a place to insert keywords mechanically.

The entity graph should help users and crawlers understand how pages, subjects, services, locations, projects, people, organizations, categories, and tags relate to one another.

## 1. Core graph sources

A site's graph may be derived from:

- Page titles and canonical URLs.
- Explicit front-matter or metadata entities.
- Tags and categories.
- Services.
- Locations and service areas.
- Case studies and projects.
- Authors and organizations.
- Visible breadcrumb hierarchy.
- Existing internal links.
- Related-content declarations.
- Structured-data identifiers and relationships.

## 2. Relationship examples

```text
Service → available in → Location
Case Study → demonstrates → Service
Case Study → occurred in → Location
Article → discusses → Entity
Article → belongs to → Category
Page → tagged with → Tag
Page → related to → Page
Page → parent of → Page
Organization → provides → Service
```

Relationships should be represented by normal crawlable HTML links wherever a user-facing relationship is useful.

## 3. Automatic entity extraction

The next major SEObasic capability is automatic entity extraction from Markdown or other source content.

A safe extraction pipeline should:

1. Parse the source document.
2. Ignore code blocks, scripts, styles, generated navigation, and other excluded regions.
3. Extract candidate named entities and domain terms.
4. Normalize candidates against a canonical entity registry.
5. Score candidate relationships using context, not exact-string matching alone.
6. Exclude self-links and already-linked spans.
7. Propose destination pages.
8. Apply per-page and per-entity link limits.
9. Require review unless the rule is deterministic and explicitly approved for automatic application.
10. Store enough evidence to explain why a link was proposed or generated.

## 4. Canonical entity registry

A project may maintain an entity registry such as:

```yaml
entities:
  - id: symbolic-memory
    name: Symbolic Memory
    aliases:
      - symbolic memory
    type: concept
    url: /ideas/symbolic-memory

  - id: recursive-cognition
    name: Recursive Cognition
    aliases:
      - recursive cognition
    type: concept
    url: /ideas/recursive-cognition
```

The registry becomes the authoritative mapping between recognized terms and canonical destinations.

## 5. Link-generation rules

Automatic or suggested internal links must:

- Point to canonical internal URLs.
- Preserve the sentence's intended meaning.
- Avoid linking every occurrence of the same term.
- Avoid inserting multiple nearby links to the same destination.
- Avoid linking headings merely to force anchor text.
- Avoid changing quotations or code samples.
- Avoid exact-match keyword stuffing.
- Avoid linking ambiguous aliases without sufficient context.
- Respect author-defined exclusions.
- Keep user readability ahead of graph density.

## 6. Backlinks

When useful, the system may derive backlinks from the forward-link graph.

Examples:

- “Referenced by” on knowledge-base pages.
- Related case studies on service pages.
- Related services on case studies.
- Projects in a location on service-area pages.

Backlinks should be useful navigation, not a raw dump of every inbound edge.

## 7. Tag and category pages

Tag and category pages may strengthen discovery when they contain meaningful organization and sufficient unique context.

They should not become thin index pages created solely to multiply crawlable URLs.

A tag or category page should normally provide:

- A stable canonical URL.
- A clear title and description.
- A useful list of related content.
- Pagination when needed.
- Crawlable links.
- Appropriate sitemap handling.
- Index/noindex behavior chosen deliberately.

## 8. Service and location graph

For local/service websites, useful relationships include:

```text
service page
  ↕
case studies
  ↕
service-area pages
  ↕
related services
```

Location pages must contain meaningful local content and project/service relevance. The graph must not be used to justify mass-produced doorway pages.

## 9. Graph strength metrics

A future analyzer may report:

- Orphan pages.
- Pages with no meaningful outbound links.
- Broken internal links.
- Excessive repeated anchor text.
- Entities with no canonical page.
- Pages competing for the same canonical entity.
- Important pages buried too many hops from navigation roots.
- Weak service-to-proof relationships.
- Weak service-to-location relationships.
- Tag/category pages with insufficient content.

Metrics are diagnostic signals, not ranking guarantees.

## 10. Suggested extraction record

```yaml
entity_extraction:
  source: content/ideas/symbolic-memory.md
  source_hash: <hash>
  extractor: <name-and-version>
  candidates:
    - entity: recursive-cognition
      text: recursive cognition
      destination: /ideas/recursive-cognition
      confidence: 0.93
      action: suggested
      evidence: <context-or-rule-id>
```

Persisting evidence makes automatic linking reviewable and reduces unexplained SEO changes.

## 11. Governance

Entity extraction and automatic internal linking must not silently rewrite established content at scale.

Material changes to link-generation rules should be reviewed as behavioral changes because they can alter navigation, semantics, crawl paths, and search signals across the entire site.
