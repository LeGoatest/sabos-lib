# Web Copy Source of Truth and Quality

> **Status:** Governed strategy guidance  
> **Scope:** Publishable website copy for local-service and professional-service projects  
> **Machine projection:** [`../../../agents/rules/content/rules.yaml`](../../../agents/rules/content/rules.yaml)  
> **Evidence boundary:** This document separates platform guidance, formal standards, operational heuristics, and project facts. Internal heuristics are not Google ranking thresholds.

## Purpose

Prevent placeholder text, generic AI boilerplate, repeated city/service copy, unsupported marketing claims, and stale business facts from reaching production.

The goal is not merely to make pages "different." The goal is to make each page useful for its actual user intent, grounded in verified business information, and substantively specific to the service, location, project, or question it represents.

## Research conclusions

1. **Useful, original content matters more than phrase variation.** Google Search Central recommends well-written, easy-to-follow, unique content created from what the publisher actually knows rather than rehashing existing material.
2. **Duplicate content is not automatically a spam violation.** Some duplication is normal. The operational problem is low user value, ambiguous/canonical duplication, wasted crawl resources, and portfolios of pages that differ only superficially.
3. **Doorway and scaled-content abuse are the real boundary.** Large sets of city/service pages created mainly to capture similar queries, or large amounts of low-value generated content, can cross into Google's spam-policy territory.
4. **Google Business Profile is a useful factual input, not a complete website brief.** A profile can verify identity, categories, listed services, service areas, hours, and description text. It does not prove every credential, guarantee, differentiator, process detail, price, response time, project claim, or local statement a website might want to publish.
5. **Unknown facts must remain unknown.** Missing information is not permission to invent a plausible sentence.
6. **Readability is a quality goal, not a fake compliance score.** WCAG 2.2 Success Criterion 3.1.5 Reading Level is Level AAA, not AA. Plain-language targets can be used as editorial heuristics, but they must not be represented as required WCAG 2.2 AA conformance.

## Evidence and authority model

Use the strongest available source for each claim.

### Tier A — business-owned verified facts

Examples:

- legal/brand name;
- approved positioning;
- actual services offered;
- actual service limitations;
- phone/email/contact methods;
- hours;
- service areas;
- licenses, certifications, insurance, memberships;
- warranties or guarantees;
- pricing rules;
- estimate policy;
- scheduling policy;
- payment methods;
- years in business;
- staff/team facts.

These should come from the client, an approved project data file, contracts, official business systems, or other direct first-party evidence.

### Tier B — platform-exported business facts

Examples from Google Business Profile:

- business name;
- primary/additional categories;
- listed services;
- service-area places;
- regular hours;
- profile description;
- website URL;
- business type such as service-area/customer-location-only.

Treat these as **platform-held business facts that still require freshness review**. They may be incomplete, outdated, or intentionally narrower than the website's total scope.

A missing field does not prove the business lacks that attribute. For example, an empty phone field in an export means "not established by this export," not "the business has no phone."

### Tier C — operational proof

Examples:

- case studies;
- job notes;
- before/after images;
- estimates/invoices/work orders;
- materials actually used;
- project timelines;
- customer testimonials/reviews with appropriate permission and attribution;
- measured outcomes where methodology is known.

This tier is the strongest source for specific, credible differentiation.

### Tier D — external/local research

Examples:

- municipal rules;
- climate/environmental conditions;
- building-stock characteristics;
- neighborhood or regional context;
- manufacturer instructions;
- code/standards information;
- market or industry data.

External facts must be sourced, current enough for the claim, and relevant to the user's decision. Do not use local trivia as filler.

### Tier E — inference or hypothesis

Inference may guide internal planning, but publishable copy must not present it as verified fact. Either verify it, qualify it explicitly, omit it, or mark the missing input during drafting.

## Source-of-truth project data model

Each business should have a structured content-input object rather than relying on prompts to remember facts.

Recommended fields:

```yaml
business:
  canonical_name:
  legal_name:
  website:
  business_type:
  approved_positioning:
  description_approved:
  primary_category:
  additional_categories: []

contact:
  phone:
  email:
  text_capable:
  storefront_address:
  customer_location_only:
  hours:

service_areas:
  regions: []
  cities: []
  postal_codes: []
  exclusions: []

services:
  - id:
    canonical_name:
    category:
    offered: true
    audiences: []
    property_types: []
    problems_addressed: []
    applications: []
    surfaces_materials: []
    inclusions: []
    exclusions: []
    preparation: []
    process_steps: []
    pricing_factors: []
    proof_ids: []
    faq_ids: []
    source_refs: []

proof:
  projects: []
  testimonials: []
  reviews: []
  credentials: []
  guarantees: []

voice:
  approved_terms: []
  avoided_terms: []
  claim_style:
  reading_level_target:

content_governance:
  last_verified_at:
  verified_by:
  source_files: []
  unknown_required_fields: []
```

Every material field should be traceable to a source or explicitly marked unknown.

## What Google Business Profile can and cannot establish

### Safe to use when current and present in the profile

- canonical displayed business name;
- category labels;
- services explicitly listed;
- service-area cities/regions;
- regular hours;
- published business description;
- website URL;
- service-area/storefront business type.

### Requires additional verification before publication

- "licensed and insured";
- license numbers;
- years of experience;
- years in business;
- owner/founder biography;
- employee qualifications;
- response times;
- emergency/24-hour availability;
- same-day service;
- free estimates;
- financing;
- warranties/guarantees;
- exact pricing;
- "best," "#1," "leading," "top-rated," or other superiority claims;
- review count/rating unless obtained from a current review source;
- project counts;
- completion times;
- material brands or methods;
- detailed service process;
- neighborhoods served beyond the verified service-area source;
- location-specific conditions or claims.

## Page-by-page copy strategy

| Page type | Primary job of the copy | Required specific inputs | Reuse boundary |
|---|---|---|---|
| Homepage | Explain what the business does, for whom, where, why it is credible, and the next action | positioning, major service groups, audience, service region, proof, CTA | Global brand language may repeat; core value proposition must be business-specific |
| Service index | Help users identify the correct service family | actual service taxonomy, short outcome/use-case distinctions | Card structure can repeat; descriptions must distinguish services |
| Service detail | Answer whether this service fits the user's problem and what the work involves | problems, applications, surfaces/materials, inclusions/exclusions, preparation, process, pricing factors, proof, FAQs | Layout/process component may repeat only where operationally identical |
| Service-area index | Explain genuine geographic availability | verified areas, regional constraints, service coverage | City names can be listed; do not manufacture local claims |
| Individual area page | Provide meaningful local utility for users in that place | actual availability plus local proof, project history, logistics, local conditions, service mix, or other real distinctions | A city-name swap template is forbidden; if unique utility is unavailable, do not publish a thin page |
| About | Establish identity and trust | history, purpose, owner/team facts, credentials, working principles, verifiable differentiators | Never invent biography, longevity, certifications, or company values |
| Case study | Demonstrate actual work | condition, goal, work performed, methods/materials, location scope, outcome, media, customer quote if approved | Structure can repeat; facts must be project-specific |
| Gallery | Make visual proof understandable | image captions, project/service/location context, alt text | Avoid generic captions such as "another great project" |
| Contact | Remove friction and set expectations | verified contact methods, hours, service area, response policy | Mostly factual; no unsupported response-time promise |
| Quote/estimate | Collect the information needed to scope the request | service taxonomy, required fields, upload rules, contact preferences, consent | Instruction text may repeat where functionally identical |
| FAQ | Resolve real buying/process objections | actual policies, service constraints, common customer questions | Do not generate six generic FAQs merely to fill a template |

## Substantive uniqueness rules

### Service pages

A service page should differ because the service actually differs. Useful differentiators include:

- problem/condition addressed;
- property type or audience;
- surfaces/materials involved;
- service applications;
- what is included and excluded;
- preparation;
- process steps that genuinely differ;
- pricing factors;
- risks/limitations;
- maintenance or aftercare;
- project proof;
- service-specific FAQ;
- next action.

Changing "pressure washing" to "floor coating" while retaining the same generic benefit paragraph is not substantive differentiation.

### Location pages

A location page must earn its existence with local utility. Useful sources include:

- verified service availability in that city;
- actual projects/case studies from the area;
- real scheduling/logistics distinctions;
- local property/surface conditions backed by sources or operating experience;
- relevant municipal/HOA/permitting information when material and sourced;
- service mix that truly differs by area;
- local testimonials/reviews when attributable and permitted.

Do **not** create pages where the meaningful body copy is identical after replacing city tokens.

If there is not enough verified local information to make the page useful, keep the city as a crawlable service-area link/list item until stronger content exists.

## AI-assisted copy generation contract

An AI writer must receive structured facts and explicit constraints. It must not be asked to "write a great local service page" from a business name and keyword alone.

Minimum prompt architecture:

```text
ROLE
Write publishable web copy using only supplied facts and explicitly identified external evidence.

PAGE CONTRACT
State the page type, user intent, primary topic, required sections, CTA, and audience.

VERIFIED BUSINESS FACTS
Provide structured facts with source IDs.

PAGE-SPECIFIC FACTS
Provide service/location/project facts for this page only.

ALLOWED SHARED COMPONENTS
List navigation, CTA labels, legal text, global brand statement, or truly common process text that may repeat.

UNKNOWN POLICY
Do not invent missing details. If a required fact is missing, either omit the claim or return NEEDS_INPUT:<field> in draft output.

CLAIM POLICY
No superiority, credential, guarantee, price, availability, response-time, or performance claim without a source.

UNIQUENESS POLICY
Do not rephrase another page sentence-by-sentence. Add page-specific information or reduce the page instead of padding it.

OUTPUT
Return copy plus a machine-readable list of source IDs used and unresolved fields.
```

### Production rule

`NEEDS_INPUT:*`, placeholders, bracket tokens, fake example contact data, and unresolved template variables are draft artifacts. The production pipeline must fail if they remain in publishable output.

## Anti-placeholder and anti-boilerplate system

### Hard-fail placeholder patterns

At minimum, scan case-insensitively for:

- `lorem ipsum`;
- `dummy text`;
- `placeholder`;
- `TBD` / `TBC`;
- `TODO` in visible copy;
- `your company`;
- `your city`;
- `[city]`, `[service]`, `[company]`, `[phone]`, `[email]`, `[state]`, `[zip]`;
- `555-555` example phone patterns;
- `example.com` / `example.org` when not intentionally part of documentation;
- unresolved template syntax such as `{{ ... }}`, `${...}`, or equivalent in rendered copy.

### Unsupported-claim scan

Flag for source review:

- best;
- #1 / number one;
- leading;
- top-rated;
- award-winning;
- licensed;
- insured;
- certified;
- guaranteed;
- lifetime warranty;
- same-day;
- 24/7;
- emergency service;
- free estimate;
- decades of experience;
- family-owned;
- locally owned;
- thousands of customers/projects;
- exact savings, completion times, or performance percentages.

These words are not universally forbidden; they are forbidden **without evidence appropriate to the claim**.

## Duplicate and near-duplicate QA

Google does not publish a universal "acceptable duplicate-content percentage." Therefore SEObasic must not invent one as a ranking threshold.

The following are **internal review heuristics**, not search-engine rules:

1. Exact paragraph repeated across multiple commercial pages outside an approved shared component → error/review.
2. Exact sentence of 12+ words repeated across multiple page bodies → review unless allowlisted as shared factual/brand/process text.
3. Non-shared body similarity above roughly `0.85` using cosine/Jaccard/embedding similarity → mandatory manual review.
4. More than roughly `35%` sentence overlap in non-shared body copy → manual review.
5. If removing location/service tokens leaves two pages substantially identical → error.
6. Repeated headings with only token substitution → review.

These thresholds are deliberately conservative quality gates. They may be tuned from portfolio data and must never be presented as Google thresholds.

## Editorial QA checklist

Before publication:

- [ ] Every business fact is verified or intentionally omitted.
- [ ] Every material claim has a source appropriate to the claim.
- [ ] No placeholder, example contact information, or unresolved variable remains.
- [ ] The page clearly serves one user intent.
- [ ] The page contains facts/context/utility specific to this service, location, project, or question.
- [ ] Shared components are intentionally shared, not accidental boilerplate.
- [ ] No sentence merely paraphrases the preceding sentence to increase length.
- [ ] No location page is a city-name swap.
- [ ] No service page is a service-name swap.
- [ ] CTA text accurately describes what happens next.
- [ ] Contact details, hours, services, and areas agree with the current project source of truth.
- [ ] Superlatives, credentials, guarantees, availability claims, and numerical claims were verified.
- [ ] Dates and time-sensitive facts were checked for staleness.
- [ ] Headings, links, form instructions, and alt text are understandable and descriptive.
- [ ] Any readability target is treated as an editorial heuristic, not misrepresented as WCAG AA law.
- [ ] The page was compared against sibling pages for exact and near-duplicate copy.

## Automated validation ideas

A project can implement these as CI checks, pre-publish checks, or CMS validations:

```text
extract rendered visible text
→ normalize whitespace/case
→ strip approved shared components
→ placeholder regex scan
→ unresolved-template scan
→ unsupported-claim lexicon scan
→ business-fact consistency check
→ exact sentence/paragraph fingerprinting
→ pairwise near-duplicate similarity
→ city/service token-swap detection
→ stale-source-date check
→ report source IDs + unresolved fields
```

Recommended outputs per page:

```yaml
content_validation:
  placeholders: []
  unsupported_claims: []
  unresolved_fields: []
  exact_duplicate_blocks: []
  near_duplicate_pages: []
  business_fact_conflicts: []
  source_ids_used: []
  last_fact_check_at:
  status: pass|review|fail
```

## Worked example: MyRestorePro

The Google Business Profile export supplied on 2026-08-22 supports these facts:

- displayed business name: **MyRestorePro**;
- business type: **customer-location-only/service-area business**;
- primary category: **Pressure washing service**;
- additional categories include painter, handyman/handyperson, landscaper, tree service, flooring contractor, junk removal service, demolition contractor, and building restoration service;
- listed services include pressure/soft washing, house/driveway/paver/concrete cleaning, exterior painting and staining, general repairs, property maintenance, light demolition, landscaping/yard cleanup, tree work, floor coatings, junk removal/cleanouts, paver restoration/sealing, and concrete restoration;
- regular hours in the export are Monday through Friday, 8:00 AM–6:00 PM;
- listed service areas are Largo, Dunedin, Oldsmar, Seminole, Clearwater, Palm Harbor, Pinellas Park, Belleair, St. Petersburg, and Tarpon Springs;
- the profile description positions the company around restoration/renovation work for residential and commercial properties in Pinellas County.

The same export does **not** establish a phone number, storefront address, license/insurance claim, number of years in business, guarantee, response time, review rating/count, or a claim that every listed service is available in every city for every project.

### Generic copy to reject

> Welcome to MyRestorePro. We are your trusted local experts offering high-quality solutions for all your property needs. Our experienced team is committed to excellent service and customer satisfaction.

Problems:

- interchangeable with thousands of service businesses;
- no concrete service or location information;
- "trusted," "high-quality," "experienced," and "excellent" are unsupported in the supplied source;
- "all your property needs" overstates scope;
- adds almost no decision-making value.

### Grounded rewrite using only supported facts

> MyRestorePro serves residential and commercial properties throughout Pinellas County with pressure washing, exterior surface restoration, floor coatings, property repairs, cleanouts, light demolition, and related property services. The Google Business Profile lists service coverage across Largo, Dunedin, Oldsmar, Seminole, Clearwater, Palm Harbor, Pinellas Park, Belleair, St. Petersburg, and Tarpon Springs.

This version is not necessarily final marketing copy; it demonstrates the rule: **specific verified facts replace generic praise.** A stronger final page should add project proof, real process details, and service-specific information from the client or operational records.

### Location-page decision example

A Clearwater page should not be produced simply by changing "Largo" to "Clearwater." The profile verifies that Clearwater is a service area, but it does not by itself provide enough Clearwater-specific context for a strong standalone page. Before publishing, collect at least one or more meaningful local inputs such as relevant Clearwater projects, local testimonials, service-specific demand/conditions backed by evidence, or real scheduling/service distinctions. If those inputs are unavailable, keep Clearwater in the service-area index rather than generating filler.

## Phased implementation

### Phase 1 — source-of-truth foundation

1. Create the structured business/content data file.
2. Import current Google Business Profile facts where available.
3. Mark every unsupported desired field as unknown.
4. Define approved terminology, positioning, CTA, and prohibited claims.

### Phase 2 — page contracts

1. Define required inputs for each page type.
2. Separate reusable shared components from page-specific copy.
3. Require local/service/project evidence before creating high-volume page sets.

### Phase 3 — generation workflow

1. Generate from structured facts, not free-form memory.
2. Require source IDs and unresolved-field reporting.
3. Fail rather than fabricate when required facts are missing.

### Phase 4 — automated QA

1. Placeholder scan.
2. Unsupported-claim scan.
3. Business-fact consistency scan.
4. Exact duplicate fingerprinting.
5. Near-duplicate similarity review.
6. Token-swap detection for city/service pages.
7. Staleness/source-date checks.

### Phase 5 — editorial approval

1. Human review for accuracy, usefulness, tone, and claim support.
2. Compare sibling pages side-by-side.
3. Confirm that every page earns its URL with distinct user value.
4. Record unresolved gaps for future content collection rather than padding the page.

### Phase 6 — feedback loop

Use Search Console, local/search measurement, conversions, user questions, sales/estimate feedback, and newly collected project proof to improve pages. Do not infer causal ranking mechanisms from a single metric movement.

## Research basis

### Platform-owned guidance

- Google Search Central — **SEO Starter Guide**: unique, well-organized content; duplicate-content/canonicalization guidance.  
  https://developers.google.com/search/docs/fundamentals/seo-starter-guide
- Google Search Central — **Creating helpful, reliable, people-first content**.  
  https://developers.google.com/search/docs/fundamentals/creating-helpful-content
- Google Search Central — **Spam policies for Google web search**, including doorway abuse and scaled content abuse.  
  https://developers.google.com/search/docs/essentials/spam-policies
- Google Business Profile Help — **Guidelines for representing your business on Google**.  
  https://support.google.com/business/answer/3038177
- Google Business Profile Help — **Manage your service areas for service-area & hybrid businesses**.  
  https://support.google.com/business/answer/9157481
- Google Business Profile Help — **Manage your services on your Business Profile**.  
  https://support.google.com/business/answer/9455399

### Formal standard

- W3C — **Understanding Success Criterion 3.1.5: Reading Level** (Level AAA).  
  https://www.w3.org/WAI/WCAG22/Understanding/reading-level.html

### Operational interpretation

The QA thresholds, placeholder lexicon, similarity cutoffs, source-of-truth schema, and generation contract in this document are SEObasic operational guidance derived from the problem being solved. They are not Google policy, WCAG conformance criteria, or universal SEO ranking factors.
