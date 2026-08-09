# Structured Data

SEObasic supports automatic JSON-LD generation from server-owned page metadata.

Structured data must describe the content that is actually visible on the page. It must not be used to invent entities, reviews, ratings, authorship, services, locations, dates, or relationships.

## 1. Baseline Article model

For editorial and knowledge-base pages, use Schema.org `Article` as the initial profile.

```go
type JSONLD struct {
    Context string `json:"@context"`
    Type    string `json:"@type"`

    Headline      string   `json:"headline"`
    Description   string   `json:"description"`
    DatePublished string   `json:"datePublished"`
    DateModified  string   `json:"dateModified"`
    Keywords      []string `json:"keywords,omitempty"`
    URL           string   `json:"url"`
    MainEntityPage string  `json:"mainEntityOfPage"`

    Author Publisher `json:"author"`
}

type Publisher struct {
    Type string `json:"@type"`
    Name string `json:"name"`
}
```

The `Publisher` name in this example is a reusable organization-shaped entity. A production implementation may rename it to `Entity` or `OrganizationRef` if the same structure is also used for `publisher` or other relationships.

## 2. Generator

A baseline generator can derive JSON-LD from canonical site configuration and page metadata.

```go
func BuildJSONLD(siteURL string, p *content.Page) (string, error) {
    canonical := strings.TrimRight(siteURL, "/") + p.URL

    data := JSONLD{
        Context: "https://schema.org",
        Type:    "Article",

        Headline:      p.Meta.Title,
        Description:   p.Meta.Description,
        DatePublished: p.Meta.Date.Format("2006-01-02"),
        DateModified:  p.Meta.Date.Format("2006-01-02"),
        Keywords:      p.Meta.Tags,

        URL:            canonical,
        MainEntityPage: canonical,

        Author: Publisher{
            Type: "Organization",
            Name: "609 Informatics",
        },
    }

    b, err := json.MarshalIndent(data, "", "  ")
    if err != nil {
        return "", err
    }

    return string(b), nil
}
```

If the content model exposes a distinct modification timestamp, `dateModified` should use it instead of copying the publication date.

## 3. Layout injection

The generated object belongs in the document `<head>`:

```html
<script type="application/ld+json">
{ BuildJSONLD(siteURL, page) }
</script>
```

The exact template syntax depends on the server-side renderer.

### Security requirement

Do not concatenate hand-built JSON strings from untrusted content. Serialize a typed structure with a JSON encoder, handle serialization errors, and use the template engine's documented safe JSON/script mechanism only for the already-serialized output.

## 4. Example output

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Symbolic Memory",
  "description": "A concept describing symbolic representation and recursive cognition.",
  "datePublished": "2026-03-10",
  "dateModified": "2026-03-10",
  "keywords": [
    "symbolic-systems",
    "memory"
  ],
  "url": "https://609.info/ideas/symbolic-memory",
  "mainEntityOfPage": "https://609.info/ideas/symbolic-memory",
  "author": {
    "@type": "Organization",
    "name": "609 Informatics"
  }
}
```

## 5. What the model communicates

The Article profile can explicitly communicate:

- Page topic through the headline and description.
- Page URL and canonical entity relationship.
- Publication date.
- Modification date.
- Author or responsible organization.
- Tags or keywords when they are real content metadata.

Structured data helps parsers understand those relationships, but it does not guarantee rankings, rich-result eligibility, or display treatment.

## 6. BreadcrumbList profile

Add `BreadcrumbList` when the page has a meaningful hierarchical path.

Example hierarchy:

```text
Home
 → Ideas
   → Concepts
     → Symbolic Memory
```

Example JSON-LD:

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://609.info"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Ideas",
      "item": "https://609.info/ideas"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "Symbolic Memory",
      "item": "https://609.info/ideas/symbolic-memory"
    }
  ]
}
```

Breadcrumb structured data should be generated from the same canonical route hierarchy used by the visible breadcrumb component where practical.

## 7. Multiple JSON-LD objects

A page may require more than one structured-data object. Implementations may either:

- Emit separate `<script type="application/ld+json">` blocks, or
- Emit one JSON-LD graph using `@graph`.

Whichever representation is chosen, the entities and URLs should remain stable and internally consistent.

## 8. Page-type selection

Do not emit `Article` indiscriminately on every route.

A generator should choose a profile based on the actual page/content type, for example:

```text
knowledge/article page → Article + BreadcrumbList
service page           → Service + BreadcrumbList
local business page    → LocalBusiness/Organization + BreadcrumbList
case study             → Article or another truthful content type + BreadcrumbList
index/listing page      → WebPage/CollectionPage as appropriate
```

Schema selection must remain subordinate to truthful visible content and current Schema.org/search-engine eligibility requirements.

## 9. Validation

Structured-data validation should verify at minimum:

- Valid JSON.
- Absolute canonical URLs.
- Correct page type.
- Required source metadata present.
- Publication and modification dates parse correctly.
- No unsupported fabricated fields.
- Breadcrumb positions are sequential.
- Breadcrumb URLs resolve to the intended hierarchy.
- Structured data remains consistent with visible page content.

## 10. Technical SEO stack

A complete SEObasic implementation can combine:

```text
semantic content
internal entity links
backlinks
category/tag/service/location relationships
sitemap.xml
RSS/Atom
JSON-LD structured data
entity graph
```

The result is a technical foundation for knowledge-base SEO, local/service SEO, and semantic content discovery.
