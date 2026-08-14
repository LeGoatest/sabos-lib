# WDBASIC Evaluation Model Position

> **Status:** Historical practitioner model — superseded for current evaluation  
> **Reviewed:** 2026-08-14  
> **Current model:** [`../experience-evaluation.md`](../experience-evaluation.md)  
> **Core invariants:** [`../core-invariants.md`](../core-invariants.md)

This document preserves the evolution of the WDBASIC evaluation model and records why the earlier additive score is no longer the current evaluation method.

## 1. Superseded model

The earlier research proposed:

```text
WDBASIC = D + P + X + T + A + C
```

with:

| Dimension | Historical weight |
|---|---:|
| Discoverability / SEO | 20 |
| Problem–solution alignment | 20 |
| Experience / usability | 15 |
| Trust / validation | 15 |
| Accessibility | 15 |
| Conversion clarity | 15 |
| **Total** | **100** |

This was explicitly a WDBASIC heuristic, not a Google, WCAG, W3C, Semrush, or academic score.

## 2. Why the additive model was rejected

A weighted additive model is compensatory: strength in one dimension can mathematically offset weakness in another.

That behavior is inappropriate for WDBASIC invariants such as:

- accessibility;
- security;
- privacy;
- truthful claims;
- HTTP/URL integrity;
- required evidence.

A page with severe accessibility or security failure must not appear “good overall” merely because SEO, trust, or conversion scores are high.

Therefore the additive 100-point score is **superseded**.

## 3. Current gate-plus-profile model

WDBASIC now evaluates in two stages.

### Stage A — non-compensatory gates

```text
Semantics / critical interaction integrity   PASS | FAIL | UNKNOWN
Accessibility                              PASS | FAIL | UNKNOWN
Security                                   PASS | FAIL | UNKNOWN
Privacy                                    PASS | FAIL | UNKNOWN
Truthfulness                               PASS | FAIL | UNKNOWN
HTTP/URL integrity (when applicable)       PASS | FAIL | UNKNOWN
Required evidence                          PASS | FAIL | UNKNOWN
```

A material failure or unresolved unknown cannot be cancelled by performance elsewhere.

### Stage B — diagnostic experience profile

Evaluate independently:

```text
Discoverability
Intent alignment
Usability
Trust
Conversion
Performance
```

These dimensions should normally be reported as a vector/profile, not one total score.

Current details live in [`../experience-evaluation.md`](../experience-evaluation.md).

## 4. Historical PAS subscore

A later exploratory rubric proposed:

```text
P(7) + A(5) + S(8)
```

This weighting reflected a WDBASIC editorial preference to emphasize solution quality and limit emotional escalation. It was **not empirically validated** and is no longer a canonical current score.

It may be preserved as a historical review rubric only.

## 5. Hardened content laws

The earlier research proposed seven laws. After adversarial review, they are refined as follows:

1. **User intent precedes interface.**
2. **Relevance precedes or accompanies persuasion.**
3. **Consequence must be factual and proportional.**
4. **Material claims require evidence proportional to significance.**
5. **Every section must add understanding, evidence, context, or decision value.**
6. **Conversion requests must match user readiness and task.**
7. **Rendering/interaction technology must satisfy WDBASIC core invariants and its active technology profile.**

The former universal statement “problem precedes solution” is superseded because valid solution-aware, transactional, informational, and comparison journeys may begin differently.

## 6. Semantic job model retained

The useful part of the earlier model remains: evaluate what each section actually contributes rather than relying on section names or word count.

Possible semantic jobs include:

- orientation/relevance;
- problem recognition;
- consequence;
- answer/solution;
- comparison/decision criteria;
- process/uncertainty reduction;
- evidence/validation;
- objection resolution;
- action/conversion.

A later section should not merely paraphrase an earlier semantic job unless it introduces new evidence, specificity, context, examples, criteria, or decision value.

## 7. Page-deficit detection retained

Example:

```text
Hero → Services → Services → Services → CTA
```

may reveal:

```text
Relevance:          weak
Solution coverage:  repetitive
Evidence:           absent
Decision support:   absent
Objection handling: absent
Action:             present
```

The diagnostic remains useful; PAS terminology is no longer required to express every deficit.

## 8. Evidence taxonomy retained

Classify findings as:

- external requirement;
- external guidance / research-supported principle;
- binding WDBASIC invariant/contract;
- WDBASIC practitioner position;
- WDBASIC heuristic;
- unresolved historical finding.

Do not collapse these authority levels.

## 9. Unresolved original PAS formula

An earlier exploratory analysis presented a direct PAS formula whose exact coefficients were not recoverable during consolidation.

Its existence remains historically recorded, but no later formula may be retroactively labeled as the original.

## 10. Current authority

Use:

- [`../core-invariants.md`](../core-invariants.md) for non-compensatory requirements;
- [`../experience-evaluation.md`](../experience-evaluation.md) for current diagnostics;
- [`../content-strategies/README.md`](../content-strategies/README.md) for intent-dependent content strategy;
- [`../technology-profiles/README.md`](../technology-profiles/README.md) for implementation-specific rules.

The full research trajectory remains in [`research-findings-2026-08-14.md`](research-findings-2026-08-14.md) and the adversarial corrections in [`adversarial-audit-2026-08-14.md`](adversarial-audit-2026-08-14.md).
