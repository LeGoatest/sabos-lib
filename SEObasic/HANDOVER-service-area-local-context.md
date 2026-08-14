# Handover — Service-Area Pages and Local-Context Research

> **Status:** Working handover / non-canonical checkpoint  
> **Date:** 2026-08-14  
> **Scope:** SEObasic framework concerns only  
> **Authority:** This file records research direction and unresolved integration work. It does **not** become a binding invariant, strategy, surface rule, or evidence record merely by existing in the SEObasic root.

## Purpose

Preserve the current research direction for service-area/location pages so the work can be routed correctly into SEObasic's governed taxonomy without losing distinctions between evidence, strategy, evaluation, surface mechanics, and terminology.

This handover intentionally excludes any client-, company-, city-, campaign-, or implementation-specific material.

## Core conclusion

A service-area page should not be treated as a keyword-plus-location template.

The working direction is:

> **Local uniqueness should be evidence-derived, not adjective-derived.**

Changing a place name, rewriting the same paragraph, or varying synonyms does not create meaningful local distinctiveness. A location page should earn its existence by addressing local intent with independently useful information.

## Research model

Service-area research should consider a dedicated `local_context` evidence layer alongside search intent, content strategy, local relevance, proof, and conversion.

Suggested research domains:

- geography and jurisdiction;
- built environment;
- planning and land-use context;
- property/housing characteristics;
- environmental and resilience context;
- local service-demand implications;
- first-party business evidence where available;
- source provenance and freshness.

## Local-context evidence domains

### Geography

Potential fields:

- municipality;
- county/region;
- incorporated vs. unincorporated status;
- official boundaries;
- neighborhoods or subareas;
- adjacent areas;
- postal geography as secondary context rather than a substitute for municipal geography;
- operationally meaningful corridors or districts.

### Built environment

Potential fields:

- residential/commercial property mix;
- building/property types;
- housing types;
- year-built distribution;
- lot/building characteristics;
- historic property concentration;
- redevelopment/infill patterns;
- waterfront or other geographically meaningful property conditions where supported.

### Planning and land use

Potential sources and concepts:

- comprehensive plans;
- future land-use maps/categories;
- zoning;
- overlay districts;
- redevelopment areas;
- special-area plans;
- corridor plans;
- historic-preservation areas;
- activity centers;
- infill/redevelopment policy;
- coastal-management or resilience planning.

Planning terminology belongs primarily in the research layer. Customer-facing copy should use planning language only when it materially helps explain a real property or service concern.

### Environmental and resilience context

Potential fields:

- floodplain context;
- storm-surge context;
- tidal flooding;
- drainage/watershed context;
- groundwater interaction;
- evacuation zones;
- coastal exposure;
- vulnerability/adaptation areas;
- other officially documented local hazards or resilience concerns.

Hazard data requires especially strict geographic and claim precision. Area-level data must not be converted into parcel-level assertions.

### Property and demographic context

Potential fields:

- owner/renter mix;
- housing-unit type;
- vacancy;
- residential density;
- multifamily concentration;
- commercial/residential proportions;
- other Census/ACS or assessor variables that materially affect the content subject.

Demographic variables must not be used to stereotype residents, infer purchasing behavior without evidence, or manufacture a marketing narrative from socioeconomic data.

## Evidence-to-copy translation

Research language and published copy are different layers.

A recommended transformation model:

```yaml
content_translation:
  - evidence: "Observed or sourced local fact"
    relevance: "Why this fact may matter to the page subject"
    allowed_copy: "Customer-readable statement supported by the evidence"
    prohibited_inference:
      - "Unsupported causal or property-level conclusion"
```

The framework should preserve the distinction:

```text
source fact
    ↓
interpreted relevance
    ↓
customer-facing statement
```

The interpretation step must remain auditable.

## Proposed local-context data shape

```yaml
local_context:
  geography:
    municipality: null
    county: null
    state_region: null
    incorporated: null
    adjacent_areas: []
    neighborhoods: []

  built_environment:
    property_types: []
    year_built_distribution: {}
    residential_mix: {}
    commercial_mix: {}
    historic_context: null
    redevelopment_context: null

  planning:
    comprehensive_plan:
      name: null
      source: null
      adopted_date: null
    future_land_use: []
    zoning_context: []
    overlays: []
    redevelopment_areas: []
    special_area_plans: []
    corridor_plans: []

  resilience:
    flood_context: []
    storm_surge_context: []
    tidal_flood_context: []
    evacuation_context: []
    drainage_context: []
    coastal_context: []

  property_context:
    tenure: {}
    housing_types: {}
    vacancy: {}
    source_sets: []

  evidence:
    - claim: null
      source: null
      source_type: null
      geography: null
      dataset_date: null
      retrieved_at: null
      confidence: null
```

This is a proposed research representation, not yet a canonical SEObasic schema.

## Claim discipline

Working rule:

> **A GIS, planning, assessor, Census, or hazard fact does not automatically become a marketing claim.**

A local-context fact may inform page content only when there is a defensible relationship between the fact and the page's actual subject or user need.

Examples of generally defensible transformations when supported:

```text
older housing stock
    → discussion of maintenance/repair considerations

waterfront/coastal property concentration
    → discussion of relevant exterior/environmental exposure

commercial corridor concentration
    → discussion of commercial property-service relevance
```

Examples requiring rejection or much stronger evidence:

```text
median income
    → claim that residents need cheaper service

flood-zone presence
    → claim that a specific visitor's property will flood

future land-use designation
    → claim that a building needs renovation
```

## Service-area content strategy

A location page should satisfy local transactional intent without becoming a doorway page or a mechanically generated location variant.

A strong page may include:

1. clear geographic/service scope;
2. concise local introduction;
3. local property or built-environment context;
4. relevant service categories or problem areas;
5. residential/commercial distinctions where meaningful;
6. first-party project/proof material where available;
7. process or scheduling information;
8. useful local considerations derived from evidence;
9. related services/content;
10. nearby-area navigation;
11. visible FAQ content;
12. clear conversion path.

No section exists merely to increase word count.

## Copy rules

### Required direction

- write for the subject and local user intent, not phrase repetition;
- use location terms naturally in title, H1, introduction, breadcrumbs, internal links, image context, and relevant body content;
- prefer independently useful information over keyword-density targets;
- translate technical research into plain language;
- use local proof instead of unsupported claims of local expertise;
- keep repeated global process/business information concise.

### Anti-patterns

Avoid:

- city-name substitution;
- spun or synonym-swapped city copy;
- repeated service blurbs with only geographic tokens changed;
- fake local offices/addresses;
- unsupported "we know this area" statements;
- arbitrary landmark lists;
- neighborhood lists added only for keywords;
- planning/GIS jargon dumps;
- keyword stuffing;
- invented local problems;
- unsupported hazard/property claims;
- arbitrary word-count requirements;
- repetitive AI paraphrasing that says the same thing several ways.

## Information architecture

Working default:

```text
service-area hub
    ↕
location pages
    ↕
canonical service pages
    ↕
project/case-study/proof pages
```

The service-area hub should make all intended indexable location pages crawlable.

Location pages should link to relevant canonical service pages and supporting proof.

Service pages should link back to relevant service areas where useful.

Project/case-study pages should reinforce the actual service + geography relationship where supported.

## Service × location expansion

Do not assume that every service should automatically generate a page for every location.

A service-location detail page should normally require enough distinct justification, such as:

- demonstrable user/search demand;
- materially distinct local service conditions;
- first-party project/proof evidence;
- meaningful local content beyond a parent location page;
- a distinct intent that the existing service and location pages do not already satisfy well.

A combinatorial location matrix without independent value creates thin/doorway risk and should not be the default architecture.

## Indexation quality gate

A location page should not be considered index-ready merely because it has a unique URL and title.

Suggested quality checks:

- Does the page satisfy a real local intent?
- Is the central content independently useful?
- Does it contain information unique in substance rather than wording?
- Are local claims traceable to evidence or first-party experience?
- Does it avoid fabricated offices, customers, reviews, projects, or credentials?
- Is the page materially different from sibling location pages?
- Are shared components supporting rather than dominating the page?
- Are internal links crawlable and semantically useful?
- Is the canonical target correct?
- Is the page suitable for inclusion in the XML sitemap?
- Would the page remain useful if search engines did not exist?

If a page cannot pass the quality gate, the preferred sequence is:

1. improve it before publication;
2. withhold it from indexable navigation/sitemap while incomplete;
3. use `noindex` only when there is a legitimate reason to publish the page for users before it is index-worthy.

## On-page SEO direction

No fixed word count is required.

Core page elements should normally include:

- descriptive title;
- one primary H1;
- concise introduction establishing geography + subject + user relevance;
- logical H2/H3 structure;
- crawlable breadcrumbs;
- crawlable internal links;
- descriptive image alt text based on the actual image;
- canonical URL;
- indexability/robots state appropriate to page quality;
- structured data only when accurate and relevant.

The page should cover the subject comprehensively enough to answer the user's local intent without padding.

## Structured-data guardrails

Potentially relevant structured-data types may include:

- `LocalBusiness` or an accurate subtype at the organization/site level;
- `Service` when describing a real service;
- `BreadcrumbList`;
- `WebPage` where useful;
- `areaServed` when the geographic claim is accurate.

Do not:

- invent a local office/address;
- mark up unsupported reviews or aggregate ratings;
- use structured data to imply claims not visible/supported on the page;
- treat FAQ markup as a guaranteed rich-result mechanism.

Visible FAQ content can still be useful for users, semantic retrieval, and answer-oriented content even when a platform does not provide a special rich result.

## Image/content evidence

Prefer real images of actual work, properties, teams, equipment, or local operating context over decorative local stock photography when possible.

Image filenames and alt text should describe the actual image. Do not stuff location/service keywords into alt attributes unrelated to the visual content.

## Local-context provenance

For material local claims, preserve where practical:

- primary source;
- evidence class;
- source jurisdiction;
- geographic scope;
- dataset/document date;
- retrieval/review date;
- known limitations;
- whether the final statement is observation, inference, or first-party evidence.

Jurisdiction matters. County datasets, municipal zoning, state hazard systems, federal datasets, and postal geography must not be treated as interchangeable.

## Suggested SEObasic routing

This handover spans several governed roles and should be decomposed rather than copied wholesale into one canonical file.

### `docs/invariants/`

Possible invariant candidates requiring deliberate review:

- truth/provenance requirements for local claims;
- prohibition on fabricated location evidence;
- distinction between source fact and inferred marketing claim;
- scope precision for geographic/hazard claims.

### `docs/evaluation/`

Potential evaluation dimensions:

- local-intent satisfaction;
- substantive location uniqueness;
- evidence coverage;
- sibling-page duplication;
- doorway/thin-content risk;
- internal-link connectivity;
- index-readiness.

### `docs/strategies/`

Potential strategy topics:

- service-area content strategy;
- evidence-derived local differentiation;
- local-context research workflow;
- service × location expansion criteria;
- evidence-to-copy translation.

### `docs/surfaces/`

Potential owned-web/local-search mechanics:

- title/H1/meta implementation;
- canonical/index/noindex behavior;
- XML sitemap inclusion;
- structured-data placement;
- crawlable internal-link requirements;
- page-template mechanics.

### `docs/evidence/`

Research/evidence work should preserve:

- search-platform guidance on doorway/scaled low-value content;
- local-search/platform guidance;
- planning/GIS primary-source examples;
- Census/assessor/hazard data-source classes;
- research concerning local information retrieval, geographic relevance, or location-page quality where applicable;
- contrary/null evidence where claims are contested.

### `docs/terminology/`

Potential terms requiring controlled definitions:

- service area;
- location page;
- doorway page;
- local context;
- jurisdiction;
- municipality;
- unincorporated area;
- parcel;
- zoning;
- future land use;
- overlay;
- floodplain;
- storm surge;
- service-location page.

## Proposed research workflow

```text
1. define geography/jurisdiction
2. gather GIS/property evidence
3. gather planning/land-use evidence
4. gather Census/property-stock evidence
5. gather environmental/resilience evidence
6. gather first-party operational/proof evidence when applicable
7. extract subject-relevant findings
8. build local_context record
9. translate evidence into customer-readable content
10. apply SEO/AEO/GEO strategy as appropriate to named surfaces
11. run provenance + duplication + doorway/indexation quality gates
12. measure outcomes using defined SEObasic measurement semantics
```

## Open work

This handover does **not** yet settle:

- the final canonical schema for `local_context`;
- whether `local_context` should become a named SEObasic strategy/module or remain a cross-role concept;
- exact indexation thresholds;
- a formal scoring rubric for substantive uniqueness;
- which planning/GIS concepts belong in terminology vs. strategy guidance;
- how much machine-readable local evidence should be retained with a page implementation;
- how freshness/revalidation intervals should vary by source class;
- whether service-area governance warrants a dedicated nested `AGENTS.md` after canonical files exist.

## Non-goals

This handover must not be used to store:

- client-specific strategy;
- company-specific service lists;
- named target cities/markets;
- campaign copy;
- individual implementation details;
- project-specific URLs/routes;
- client-specific competitor findings;
- client-specific GIS findings.

Those belong in the relevant project/repository, not SEObasic.

## Governing reminder

The desired end state is not "more local wording."

It is:

> **Research the place, preserve the evidence, identify what actually matters to the subject, and write only the local distinctions that can be defended.**
