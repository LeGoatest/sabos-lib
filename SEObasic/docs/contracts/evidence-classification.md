# Evidence Classification Contract

> **Status:** Binding  
> **Scope:** Material factual, causal, platform-behavior, research, measurement, optimization, and historical claims across SEObasic  
> **Owner:** `SEObasic/docs/contracts/`

## Requirement

Material SEObasic claims MUST preserve enough provenance to distinguish **what is being claimed, who or what the claim applies to, what evidence supports it, and how strongly that evidence can be generalized**.

A document-level label such as `research`, `standard`, `platform guidance`, or `practitioner position` does **not** automatically classify every claim inside that document.

## Claim-level evidence classes

Use the narrowest applicable class or classes:

- **formal-standard** — a formal specification or standard within its actual normative scope;
- **platform-policy** — an official platform rule whose violation may affect eligibility, enforcement, access, or product use;
- **platform-guidance** — official platform documentation describing current behavior, support, recommendations, or product semantics;
- **peer-reviewed** — a scholarly result published through a peer-reviewed venue;
- **preprint** — a scholarly manuscript not assumed peer-reviewed merely because it is public or indexed;
- **benchmark-dataset** — a benchmark, dataset, or evaluation resource whose conclusions depend on its methodology and implementation;
- **practitioner-position** — an explicitly adopted SEObasic preference or judgment grounded in practice;
- **practitioner-observation** — an observed project/platform outcome that is informative but not automatically generalizable;
- **inference-hypothesis** — an interpretation, mechanism hypothesis, or experiment proposal not established as a platform fact;
- **historical-reference** — evidence about prior behavior, terminology, or practice that is not presumed current;
- **unknown** — provenance or support is not yet strong enough to classify more precisely.

Multiple classes MAY apply when a claim combines different evidence types. Do not collapse them into a generic label such as “best practice.”

## Platform-claim record

A material platform-behavior claim MUST preserve, as applicable:

```yaml
claim:
  evidence_class: platform-guidance | platform-policy
  consumer: <platform-or-product-owner>
  surface: <search|maps|copilot|chatgpt-search|ai-overview|other>
  purpose: <crawl|index|rank|snippet|citation|training|measurement|other>
  source: <primary-official-source>
  reviewed_at: <ISO-date>
  limitations: <scope-or-rollout-notes>
```

The exact implementation does not need to use YAML. The semantic fields are what matter.

### Consumer-specific status rule

A technology, metadata element, crawler directive, protocol, or behavior MUST NOT receive an unqualified `legacy`, `unused`, `obsolete`, or `unsupported` status when the evidence applies only to a particular consumer, surface, or purpose.

Prefer:

```text
unused by Google Search for web ranking
```

over:

```text
obsolete
```

unless the broader claim is actually supported.

A standards-layer status and a consumer-layer status may differ. For example, an HTML metadata name can remain defined by the HTML standard while a particular search engine ignores it for ranking.

## Research record

Material research claims SHOULD preserve:

```yaml
research:
  publication_status: peer-reviewed | preprint | benchmark-dataset | survey
  title: <title>
  authors: <authors>
  venue: <venue-or-null>
  doi: <doi-or-null>
  primary_record: <publisher/proceedings/author-manuscript>
  last_verified: <ISO-date>
  method_scope: <models|dataset|queries|domain|sample>
  limitations: <material-limitations>
```

### Publication-status rule

A record labeled `preprint` MUST be checked for a subsequent peer-reviewed publication before its review/verification date is advanced.

When both a preprint and peer-reviewed version exist, use the peer-reviewed publication as the publication-status authority while retaining the preprint when useful for manuscript access or version history.

Google Scholar, Semantic Scholar, DBLP, OpenAlex, Crossref, Scopus, Web of Science, and similar indexes MAY be used to discover or verify bibliographic records. They are not, by themselves, evidence for the substantive finding of a paper.

## Generalization rule

A result from one:

- platform;
- product surface;
- crawler;
- model;
- benchmark;
- dataset;
- query population;
- geography;
- retrieval pipeline;
- industry/domain;
- experiment;
- or time period

MUST NOT become a universal SEObasic requirement without evidence supporting that generalization.

Controlled RAG behavior MUST NOT be presented as a production-platform ranking factor unless production evidence supports that claim.

A platform statement about its own system MUST NOT be generalized to another platform without evidence.

## Observation versus mechanism

SEObasic MUST distinguish an observed outcome from an inferred mechanism.

For example:

```text
A cited URL appeared more often after an edit
```

is an observation.

```text
The edit caused the platform to rank the page higher because of feature X
```

is a causal/mechanism claim and requires stronger evidence.

Do not silently promote the second from the first.

## Current versus historical evidence

Time-sensitive platform behavior MUST carry a review date or equivalent freshness context.

Historical documentation remains useful evidence of prior behavior but MUST NOT be cited as current behavior when newer authoritative documentation supersedes it.

When an old directive remains meaningful to another current consumer, preserve both facts instead of forcing one global status.

## Contract promotion rule

Research, platform guidance, practitioner evidence, and standards MAY justify a binding SEObasic contract, but none becomes binding merely because it exists.

Before turning evidence into a contract:

1. identify the claim and evidence class;
2. identify its scope and limitations;
3. identify any contrary or null evidence;
4. state the practitioner/adoption decision;
5. define the required behavior;
6. define validation where practical.

Evidence that is too weak, narrow, or unstable for a universal rule SHOULD remain research, guidance, observation, or hypothesis rather than becoming a contract.

## Correction rule

When new evidence shows that SEObasic is wrong or overbroad:

- correct the factual claim;
- preserve the reason for the correction in the appropriate changelog when material;
- narrow scope rather than defending an unsupported generalization;
- update publication/evidence status when stronger records become available;
- do not rewrite historical source excerpts to make them appear retrospectively correct.

## Validation

A material claim should be reviewable for:

- evidence class;
- primary source where available;
- consumer/platform scope where applicable;
- publication status where applicable;
- date/freshness context;
- distinction between observation and inference;
- stated limitations;
- whether a contract is stronger than the evidence warrants.

## Governing maxim

> **Classify the claim, preserve its scope, and let stronger evidence prove SEObasic wrong when warranted.**
