# WDBASIC Experience Evaluation

> **Status:** Diagnostic evaluation model  
> **Reviewed:** 2026-08-14  
> **Depends on:** [`core-invariants.md`](core-invariants.md)

WDBASIC evaluates experience **after** core invariant gates are resolved. Experience dimensions are diagnostic and non-conformity in a core invariant cannot be compensated by a higher experience score.

## 1. Gate first, evaluate second

Before experience scoring, resolve:

```text
Semantics / critical interaction integrity   PASS | FAIL | UNKNOWN
Accessibility                              PASS | FAIL | UNKNOWN
Security                                   PASS | FAIL | UNKNOWN
Privacy                                    PASS | FAIL | UNKNOWN
Truthfulness                               PASS | FAIL | UNKNOWN
HTTP/URL integrity (when applicable)       PASS | FAIL | UNKNOWN
Required evidence                          PASS | FAIL | UNKNOWN
```

A material `FAIL` or `UNKNOWN` blocks an overall positive WDBASIC claim.

## 2. Diagnostic dimensions

WDBASIC experience evaluation uses six independent dimensions:

```text
Discoverability
Intent alignment
Usability
Trust
Conversion
Performance
```

These SHOULD be reported as a profile/vector rather than collapsed into one compensatory total.

Example:

```text
Discoverability:  4/5
Intent alignment: 5/5
Usability:        3/5
Trust:            2/5
Conversion:       4/5
Performance:      measured separately
```

The purpose is diagnosis, not a vanity score.

## 3. Discoverability

Evaluate whether the intended audience can reliably find and interpret the content through:

- indexability and crawlability appropriate to the target search engines;
- meaningful titles, headings, internal links, and canonical behavior;
- correct status codes;
- direct-loadable public routes;
- useful subject coverage aligned to likely queries and needs;
- avoidance of thin, doorway-like, or mechanically duplicated location/service pages;
- coherent internal linking and information architecture;
- rendering choices that have documented search and resilience behavior.

WDBASIC may prefer server or pre-rendered public content, but it must not misstate that preference as a universal Google requirement.

## 4. Intent alignment

Evaluate whether the page or workflow matches the user's likely task, awareness, and decision stage.

Questions include:

- What brought the user here?
- Are they problem-aware, solution-aware, comparison-driven, informational, transactional, maintenance-driven, compliance-driven, or exploratory?
- Does the page answer the actual task rather than merely target a keyword?
- Is the primary content strategy appropriate to that intent?
- Does each section add new context, evidence, decision value, or task support?

Intent alignment replaces the assumption that every conversion page must begin with problem agitation.

## 5. Usability

Evaluate:

- hierarchy and information grouping;
- navigation predictability;
- readable typography and measure;
- responsive behavior;
- cognitive burden;
- form effort;
- feedback, error recovery, interruption recovery, and save/resume behavior where applicable;
- consistency of labels and controls;
- input-method suitability;
- progressive enhancement and degraded/failure behavior appropriate to the selected technology profile.

Usability complements formal accessibility evaluation but does not replace it.

## 6. Trust

Evaluate whether material claims have a factual basis and whether users can understand who is responsible for the offer.

Evidence may include:

- authentic reviews;
- real project examples and case studies;
- transparent identity and contact information;
- qualifications where relevant;
- process transparency;
- scope and limitations;
- pricing or estimate-process clarity where available;
- truthful service areas and availability;
- clear ownership/authorship;
- evidence proportional to claim significance.

A template slot is not evidence.

## 7. Conversion

Evaluate whether the requested action matches user readiness and can be completed without manipulation.

Review:

- primary and secondary actions;
- action wording;
- CTA placement based on intent;
- form friction;
- objection handling;
- response expectations;
- alternative contact or completion paths where appropriate;
- absence of fake urgency, deceptive defaults, forced continuity, or manufactured scarcity.

WDBASIC rule:

> **CTA intensity must match user intent and readiness.**

## 8. Performance

Performance is a separate measurable domain, not an implicit usability footnote.

Where web field data is available, record Core Web Vitals using the current applicable definitions and thresholds, including the percentile and data source.

A practical web record may include:

```yaml
performance:
  field_data:
    lcp_p75:
    inp_p75:
    cls_p75:
    source:
    period:
  lab_data:
    tool:
    version:
    environment:
  budgets:
    html_kb:
    css_kb:
    js_kb:
    image_kb:
    third_party_kb:
  known_limitations: []
```

Performance budgets are product/profile specific. They must not be described as Google ranking guarantees.

## 9. Scoring guidance

If an adopter chooses numeric diagnostics:

- keep dimensions separate;
- publish the rubric and version;
- do not average accessibility, security, privacy, or truthfulness into the score;
- do not treat unknowns as passes;
- record evidence for each scored claim;
- do not compare scores across materially different rubric versions without normalization.

The former additive `D + P + X + T + A + C = 100` model is retained only as historical research in the positions archive and is superseded for current WDBASIC evaluation by this gate-plus-profile model.
