# On-Page Keyword Use

> **Status:** Current website/search guidance  
> **Scope:** How search terms and topic language are used in visible, meaningful website content without confusing keyword use with the legacy `meta keywords` tag  
> **Primary platform basis:** Google Search Central

Keywords remain useful as **language that describes what a page is actually about and matches how people search for that subject**.

They are not a hidden metadata field, a density target, or a license to repeat phrases unnaturally.

## Core distinction

```text
meta keywords
    = legacy/unused by Google Search

keywords in meaningful page content
    = current descriptive language used to communicate topic and intent
```

See [`../technical/metadata.md`](../technical/metadata.md) for the explicit legacy status of `<meta name="keywords">`.

Google Search Essentials recommends using words people would use to look for content and placing those words in prominent, descriptive locations such as the title, main heading, alt text, and link text.

## Where keyword/topic language matters

### URL structure

Use descriptive URLs that help people understand the page subject.

```text
Good:
/services/epoxy-flooring/

Poor:
/page?id=84722
```

A URL should primarily communicate durable information architecture. Do not repeatedly rename established URLs merely to chase keyword variations.

### Document title

Use page-specific language that accurately identifies the subject.

```html
<title>Garage Floor Epoxy Coatings in Clearwater | Example Company</title>
```

The `<title>` element is both document metadata and an important source Google may use when generating a search-result title link. It should be descriptive rather than stuffed with variations.

See [`../technical/metadata.md`](../technical/metadata.md) for the metadata contract.

### Main heading (`<h1>`)

The main heading should clearly communicate the page's primary visible topic.

```html
<h1>Garage Floor Epoxy Coatings in Clearwater</h1>
```

The heading exists for users and document structure first. Search-relevant language should fit that purpose naturally.

### Subheadings (`<h2>`, `<h3>`, etc.)

Subheadings should organize real subtopics and help readers scan the page.

```html
<h2>Epoxy coating options for residential garages</h2>
<h2>Preparing concrete before coating</h2>
<h2>How long installation takes</h2>
```

Do not manufacture headings merely to insert keyword variants. Use related terms where the section genuinely covers those subjects.

### Body copy

Body content should explain the subject in enough depth to satisfy the page's actual purpose and user intent.

Use the terminology customers and subject-matter experts would naturally use. Include important names, services, problems, locations, materials, processes, and related concepts where relevant.

Do not repeat a phrase solely to reach a keyword-density target.

### Link text

Use descriptive anchor text when linking to another page.

```html
<a href="/services/concrete-repair/">concrete repair services</a>
```

Avoid forcing exact-match anchors everywhere. The link text should make sense to a reader and describe the destination in context.

### Image alternative text

Alternative text should describe the image and its relationship to the surrounding content.

```html
<img
  src="garage-floor-after.webp"
  alt="Finished gray epoxy coating on a residential garage floor"
>
```

Google documents descriptive alt text as useful for understanding images and their context.

Alt text is primarily an accessibility text alternative. Do not insert search phrases that do not describe the image.

## Search intent over keyword density

SEObasic does not use a universal keyword-density percentage as an optimization target.

A page should instead answer the actual intent behind relevant searches. Depending on the page, that may require:

- defining a service or topic;
- explaining who it is for;
- describing problems it solves;
- showing process or methodology;
- answering common questions;
- clarifying location/service availability;
- providing evidence, examples, or proof;
- explaining limitations, costs, timing, or prerequisites where appropriate;
- creating a clear next action.

Search terms should emerge naturally from accurate coverage of those subjects.

## Exact matches, related terms, and natural language

Do not write as though a search system can understand only one exact phrase.

A strong page may naturally use:

- the primary service/topic name;
- common synonyms;
- related entities;
- component/process/material terminology;
- customer language;
- location terms where the page genuinely serves that location;
- question forms and long-tail variations when the content actually answers them.

Exact wording can still matter for clarity and alignment with the way people search, but it should not override readable prose or factual accuracy.

## Keyword stuffing

**Status:** Prohibited manipulation pattern under Google Search spam policies.

Google defines keyword stuffing as filling a page with keywords or numbers in an attempt to manipulate rankings, including unnatural repetition and blocks of locations/terms without substantial value.

Examples of patterns SEObasic rejects:

```text
Clearwater epoxy flooring, Largo epoxy flooring, Seminole epoxy flooring,
St. Petersburg epoxy flooring, Palm Harbor epoxy flooring...
```

when the list exists primarily to manufacture ranking signals rather than communicate useful service-area information.

Also reject:

- repeating the same service phrase unnaturally in every paragraph;
- hidden keyword blocks;
- keyword text shown only to crawlers;
- fake city/service combinations;
- headings created only to contain search terms;
- alt text used as a keyword list;
- link text manipulated into repetitive exact-match patterns.

## Visible-content rule

When a keyword matters because it describes the page, prefer to express it in **real user-facing content** rather than hidden or obsolete metadata.

This does not mean every important phrase must appear in every possible element. Placement follows the element's real semantic purpose.

A useful audit asks:

```text
Does the page clearly state what it is about?
Does it use the language real users use for the subject?
Does the content answer the intent behind those searches?
Are important terms present in semantically appropriate locations?
Is any repetition unnatural or primarily manipulative?
```

## Relationship to metadata

Keyword use and metadata are related but distinct:

| Surface | Role |
| --- | --- |
| `<title>` | Describes the document and may influence search title-link generation. |
| Meta description | May provide snippet text; not a keyword-ranking field. |
| Meta keywords | Legacy/unused by Google Search. |
| URL | Durable descriptive location/structure signal and user-facing path. |
| `<h1>` / headings | Visible document structure and topic communication. |
| Body copy | Primary visible content and context. |
| Link text | Describes linked destinations/relationships. |
| Image alt text | Text alternative describing image/context; useful to accessibility and image understanding. |

Do not recreate the old meta-keywords concept by treating every visible field as a place to repeat the same phrase.

## Evidence and platform scope

Current Google-facing claims in this document should be checked against official Google Search Central documentation when platform behavior changes.

Primary references:

- Google Search Essentials: https://developers.google.com/search/docs/essentials
- Google SEO Starter Guide: https://developers.google.com/search/docs/fundamentals/seo-starter-guide
- Google Search spam policies: https://developers.google.com/search/docs/essentials/spam-policies
- Google meta-keywords history/current support statement: https://developers.google.com/search/blog/2009/09/google-does-not-use-keywords-meta-tag

Industry articles, SEO tools, agency guidance, and practitioner studies may add useful evidence, examples, or hypotheses, but they do not override current official platform behavior or SEObasic contracts automatically.