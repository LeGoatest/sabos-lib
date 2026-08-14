# Answer and Generative Discovery Measurement

> **Status:** Measurement guidance subordinate to the binding Metric Semantics Contract  
> **Scope:** AEO/GEO visibility, citations, answer presence, source selection, referrals and conversions across answer/generative search systems  
> **Last reviewed:** 2026-08-14

Read [`contracts/metric-semantics.md`](contracts/metric-semantics.md) before using these measurements in a report, tool or optimization claim. Research/platform claims are also governed by [`../contracts/evidence-classification.md`](../contracts/evidence-classification.md).

## Core rule

> **Do not call every AI-search observation a “rank.”**

Generative systems may retrieve several sources, cite only some of them, synthesize information without exposing full retrieval state, reorder sources, vary responses between runs, and produce conversational follow-ups. Measurement therefore requires explicit definitions.

## Measurement layers

The binding semantic separation is defined in the Metric Semantics Contract:

```text
eligibility/access
      ↓
retrieval/source selection
      ↓
visible citation/reference
      ↓
answer contribution / influence
      ↓
referral opportunity
      ↓
referral traffic
      ↓
conversion
      ↓
business outcome / revenue
```

These are semantic layers, not a claim that every platform implements a literal linear pipeline or exposes each stage.

## Answer presence

**Definition:** Whether the monitored entity, fact, brand, URL, service, product or other defined subject appears in the generated answer for a defined query/prompt and observation context.

Example:

```yaml
answer_presence:
  platform: ChatGPT
  query: "example query"
  entity: "Example Company"
  present: true
  observed_at: 2026-08-14T12:00:00Z
```

Answer presence does not establish that the subject was retrieved from the monitored website.

## Citation presence

**Definition:** Whether a defined source/URL/domain is visibly cited, linked or listed as a source in the generated answer/surface.

```text
citation_present = true | false
```

Citation presence does not prove:

- that every answer claim came from the cited source;
- that the source was the highest-ranked retrieval result;
- that the platform considers the source universally authoritative;
- that the citation is factually correct or supports every associated claim;
- that the citation will reproduce on another run.

## Citation count

**Definition:** Number of visible citation/reference occurrences for the defined source scope within a defined set of observations.

Always state whether duplicates count separately and whether the unit is URL, domain or citation marker.

## Citation rate

A provider-neutral experimental definition may be:

```text
citation rate = observations with ≥1 qualifying citation / eligible observations
```

The denominator must be explicit. Potential denominators include:

- all monitored prompts;
- prompts where the topic/entity was present;
- prompts where web retrieval was observed;
- prompts where any citation appeared.

These are not interchangeable.

## Unique cited pages

**Definition:** Number of distinct URLs from the measured site/domain visibly cited during the defined time/query set.

This is different from citation count because one URL may be cited repeatedly.

## Average cited pages

Microsoft Bing currently exposes an **Average Cited Pages** metric in Bing Webmaster Tools AI Performance. Use Microsoft's current platform definition when reporting the Bing metric rather than substituting a local formula.

Source:

- https://blogs.bing.com/webmaster/February-2026/Introducing-AI-Performance-in-Bing-Webmaster-Tools-Public-Preview

Microsoft states that this metric reflects the average number of unique pages from a site displayed as sources in AI-generated answers per day over the selected range and does not indicate ranking, authority or a page's role within an individual answer.

## Total citations — Bing platform metric

Bing AI Performance defines **Total Citations** as the total number of citations displayed as sources in AI-generated answers during the selected timeframe across supported surfaces.

Do not reinterpret Bing's Total Citations as “AI rank.”

Source:

- https://blogs.bing.com/webmaster/February-2026/Introducing-AI-Performance-in-Bing-Webmaster-Tools-Public-Preview

## Grounding query — Bing platform metric

Bing describes **grounding queries** as key phrases used by the AI when retrieving content that was referenced in AI-generated answers. Bing notes that the displayed data represents a sample of overall citation activity.

Do not assume another platform exposes or defines grounding queries identically.

Source:

- https://blogs.bing.com/webmaster/February-2026/Introducing-AI-Performance-in-Bing-Webmaster-Tools-Public-Preview

## Citation position/order

**Definition:** The visible ordinal or presentation order of a qualifying citation under a documented observation method.

A citation position is not automatically equivalent to classic organic search position. Platforms can group, reorder or render citations differently across layouts/devices/responses.

If measured, record the exact rendering rule.

## Source selection / retrieval presence

**Definition:** Whether the monitored source is known to have been retrieved or selected as model context before generation.

For many commercial systems this state is not fully observable. Use:

```text
true | false | unknown
```

Do not infer retrieval solely from answer similarity unless the methodology explicitly defines that inference and its limitations.

## Citation absorption / source influence — experimental research construct

**Evidence status:** **Emerging research construct; not a standardized platform metric and not a universal provider-neutral measurement.**

Some research proposes separating visible citation selection from the degree to which a selected/cited source materially contributes facts, language, evidence, definitions, comparisons or procedural content to a generated answer.

Research example:

- Zhang, He, Yao (2026), *From Citation Selection to Citation Absorption: A Measurement Framework for Generative Engine Optimization Across AI Search Platforms*  
  https://arxiv.org/abs/2604.25707

SEObasic rule:

- use `citation absorption`, `source influence`, or a similar construct only when the exact research/tool methodology is preserved;
- do not create a generic provider-neutral “citation absorption percentage”;
- do not imply that Google, Bing, ChatGPT, Perplexity, or another commercial system exposes this as a first-party metric unless that platform actually documents one;
- classify conclusions from such work as research evidence, not direct production-platform ranking evidence.

## Generative visibility score

**Definition:** Any composite score summarizing answer/citation visibility across a defined prompt/query set.

Because no universal formula exists, a generative visibility score MUST identify:

- provider/tool;
- formula;
- weighting;
- query/prompt set;
- observation frequency;
- platform/surface;
- geography/language/device when material;
- citation/answer-presence rules;
- missing/failed-run treatment.

Do not compare two vendors' “AI visibility” scores unless their definitions are compatible.

## Query/prompt coverage

**Definition:** Proportion of the defined monitoring query/prompt set for which the subject/source meets a stated condition, such as answer presence or citation presence.

Example:

```text
citation coverage = prompts with citation / prompts monitored
```

This is a monitoring-set metric, not a platform-wide market-share estimate.

## Response stability / reproducibility

Generative answers can vary between observations.

A robust monitoring record SHOULD capture:

- exact query/prompt;
- platform/product/surface;
- date/time;
- language;
- geography if material;
- logged-in/personalization state if material and observable;
- device/interface if material;
- number of repeated runs;
- sampling/aggregation method.

A single prompt run is an observation, not proof of stable visibility.

## AI/search impressions

When a platform supplies an impression metric, preserve its platform definition.

### Google

Google introduced dedicated Generative AI performance reporting in Search Console in 2026. Availability/definitions are platform-owned and may change during rollout.

Source:

- https://developers.google.com/search/blog/2026/06/gen-ai-performance-reports

Use Search Console's current definition rather than reconstructing “AI impressions” from third-party observation tools.

## AI referral traffic

**Definition:** Visits/sessions attributed to a defined AI/search referral source using first-party analytics and an explicit attribution rule.

### ChatGPT

OpenAI documents `utm_source=chatgpt.com` in ChatGPT search referral URLs for publisher tracking.

Source:

- https://help.openai.com/en/articles/12627856-publishers-and-developers-faq

Referral traffic is downstream of visibility. A source can be cited without receiving a click, and a visit can arise through another ChatGPT surface/referral path depending on platform behavior.

## AI-assisted conversion

**Definition:** A conversion where a defined AI/search interaction is part of the attribution path under the reporting system's explicit attribution model.

Do not treat a platform citation as a conversion.

Preserve:

- conversion definition;
- attribution window;
- channel/source mapping;
- first-touch/last-touch/data-driven or other model;
- deduplication rules;
- offline conversion integration where applicable.

## Direct AI-referred conversion

**Definition:** A conversion attributed directly to an AI/search referral session under the specified model.

This is narrower than assisted conversion.

## Brand/entity representation quality

Qualitative or scored evaluation of whether an answer represents a business/entity accurately.

Possible dimensions:

- correct name;
- correct services/products;
- correct location/service area;
- correct hours/contact details;
- correct relationships/ownership;
- factual accuracy;
- omitted/incorrect limitations;
- citation quality.

If converted into a score, document the rubric. Do not call it “rank.”

## Source accuracy / citation correctness

Research on generative search distinguishes whether a citation exists from whether it actually supports the associated claim.

### Direct generative-search evidence

- Liu, Zhang, Liang (2023), *Evaluating Verifiability in Generative Search Engines* — **peer-reviewed, Findings of EMNLP 2023**, DOI `10.18653/v1/2023.findings-emnlp.467`  
  https://aclanthology.org/2023.findings-emnlp.467/

This paper directly audits generative-search systems with inline citations and supports the SEObasic distinction:

```text
visible citation ≠ factual support
```

Its measured citation-support rates are historical experimental findings from the tested systems, not current universal platform quality rates.

### Adjacent citation-attribution methodology

- Choi et al. (ACL 2026), *CiteGuard: Faithful Citation Attribution for LLMs via Retrieval-Augmented Validation*  
  https://aclanthology.org/2026.acl-long.282/

CiteGuard is useful evidence that citation-attribution quality is measurable, but it is **adjacent methodology rather than direct evidence about publisher inclusion/ranking in Google, ChatGPT Search, Bing/Copilot, or Perplexity**.

A publisher visibility report should not assume that a visible citation is semantically correct without evaluation.

## Recommended reporting schema

```yaml
ai_discovery_measurement:
  platform: <platform>
  surface: <surface>
  period: <time-window>
  query_set_id: <versioned-set>
  query_count: <n>
  runs_per_query: <n>
  answer_presence_rate: <formula-and-value>
  citation_rate: <formula-and-value>
  citation_count: <value>
  unique_cited_urls: <value>
  platform_metrics:
    <provider-defined-fields>
  referral_sessions:
    source: <analytics-source>
    value: <n>
  conversions:
    definition: <conversion>
    attribution: <model>
    value: <n>
  limitations:
    - <sampling/personalization/visibility limitation>
```

## Prohibited semantic collapses

Do not use these as synonyms:

```text
citation ≠ rank
answer presence ≠ citation
citation count ≠ authority
retrieval ≠ visible citation
citation ≠ factual support
experimental source influence ≠ standardized platform metric
AI visibility ≠ referral traffic
referral traffic ≠ conversion
conversion ≠ revenue unless defined
```

## Governing rule

> **Define the AI-discovery observation first, preserve the platform, evidence class, denominator and methodology, then interpret the result.**
