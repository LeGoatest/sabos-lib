# WDBASIC Adversarial Audit — 2026-08-14

> **Status:** Research/audit record  
> **Purpose:** Preserve findings that challenged WDBASIC assumptions and drove the 2026-08-14 hardening pass  
> **Authority:** Informative evidence record; binding corrections live in the framework contracts

This audit intentionally attempted to prove WDBASIC wrong by comparing its current architecture, PAS/evaluation model, accessibility/security assumptions, rendering rules, HTMX preference, and performance treatment against current primary/authoritative sources and peer-reviewed research.

## 1. Core conclusion

WDBASIC was strongest when it defined outcomes and weakest when it converted those outcomes into universal implementation prescriptions or additive numerical quality scores.

The hardening direction adopted from this audit is:

```text
WDBASIC
│
├── Core invariants
│   ├── semantics
│   ├── accessibility
│   ├── security/privacy
│   ├── truthful content
│   ├── HTTP/URL integrity
│   ├── resilience
│   └── measurable evidence
│
├── Experience evaluation
│   ├── discoverability
│   ├── intent alignment
│   ├── usability
│   ├── trust
│   ├── conversion
│   └── performance
│
├── Content strategies
│   ├── PAS when applicable
│   ├── comparison
│   ├── informational
│   ├── transactional
│   └── other intent models
│
└── Technology profiles
    ├── HTMX / hypermedia
    ├── SSR
    ├── static
    ├── JS application
    ├── Tailwind / TCbasic
    └── hybrid/native
```

## 2. Findings adopted as corrections

### A. Framework independence vs HTMX/Tailwind prescriptions

**Finding:** WDBASIC described itself as framework-independent while binding documents elevated HTMX and Tailwind-specific choices toward universal rules.

**Correction:** Core invariants now define outcomes and boundaries. HTMX, SSR, static generation, JavaScript applications, Tailwind/TCbasic, and hybrid/native behavior live in technology profiles.

**Evidence:** HTMX's own documentation and essays describe progressive enhancement as valuable but pragmatic, acknowledge an interactivity gap, and permit richer client-side islands or different architectures where appropriate.

### B. JavaScript-free indexability was overstated as an SEO necessity

**Finding:** Google can render and execute JavaScript; therefore JavaScript-free primary content is not a universal Google requirement.

**Correction:** WDBASIC may still prefer server/pre-rendered public content for resilience, crawler interoperability, performance, predictability, and failure behavior, but the framework must label this as WDBASIC architecture—not as a Google mandate.

### C. HTMX-specific cache/history gap

**Finding:** A framework preferring HTMX lacked explicit rules for HTMX-specific representation and history behavior.

**Correction:** The HTMX profile now governs `Vary: HX-Request`, direct-loadable pushed URLs, `historyRestoreAsHxRequest`, `hx-history="false"` for sensitive DOM, history/localStorage risk, fragment script policy, CSP, and cache boundaries.

### D. Additive 100-point quality score was compensatory

**Finding:** The former `D + P + X + T + A + C = 100` model allowed strong dimensions to mathematically offset critical weakness in another dimension. That is inappropriate for accessibility, security, privacy, truthfulness, and HTTP integrity.

**Correction:** WDBASIC now uses non-compensatory invariant gates first and a separate diagnostic experience profile second.

### E. Accessibility should not be a 15/100 quality slice

**Finding:** WCAG conformance is not an average. A known accessibility failure cannot be meaningfully represented as merely losing some quality points.

**Correction:** Accessibility is now a gate/status/evidence domain and retains formal WCAG claim handling separately from experience diagnostics.

### F. Security/privacy were missing from the headline score

**Finding:** WDBASIC had strong security/privacy contracts but the former headline score omitted them.

**Correction:** Security/privacy are eligibility gates, not compensatory points.

### G. PAS was over-centered

**Finding:** Problem recognition research does not establish PAS as a universal page architecture. Current SEO/CRO guidance supports intent alignment and direct value/offer clarity, which may place the solution or CTA before detailed problem framing for solution-aware or transactional visitors.

**Correction:** PAS is now applicability-controlled under `content-strategies/`. Comparison, informational, transactional, and other intent models are first-class alternatives.

### H. “Problem precedes solution” was too rigid

**Finding:** Valid user journeys include solution-first, offer-first, answer-first, and criteria-first structures.

**Correction:** The hardened law is:

> **Relevance precedes or accompanies persuasion.**

### I. PAS 7/5/8 weighting is not empirical

**Finding:** `P(7) + A(5) + S(8)` reflects WDBASIC editorial values, not validated conversion coefficients.

**Correction:** It is retained only as historical/experimental practitioner research, not a current canonical score.

### J. Numerical `E - T` PAS threshold is unsupported

**Finding:** EPPM/fear-appeal research does not establish a validated marketing threshold of `efficacy - threat >= 0`. Meta-analytic evidence is more nuanced and does not justify converting EPPM into a deterministic PAS equation.

**Correction:** EPPM may inform a qualitative review of consequence-heavy messaging; numerical pass/fail use is rejected.

### K. Low agitation is an ethical stance, not a proven conversion law

**Finding:** Research does not demonstrate a universal rule that less agitation converts better.

**Correction:** WDBASIC limits agitation because truthful, proportional communication and user agency take precedence over maximizing emotional pressure. That is an explicit practitioner value.

### L. Performance was under-specified

**Finding:** Performance was treated largely as an experience subtopic despite measurable field metrics being available.

**Correction:** Performance is now an independent diagnostic experience dimension with field/lab evidence and project budgets. Current Core Web Vitals should be recorded with definitions, percentile, source, and period rather than treated as ranking guarantees.

### M. Tailwind belongs in a technology profile

**Finding:** Tailwind-specific semantic styling preferences were conflated with WDBASIC core.

**Correction:** Tailwind/TCbasic now lives under technology profiles. WDBASIC core only requires coherent, accessible, maintainable presentation outcomes.

### N. Bruner/Pomazal bibliographic correction

**Finding:** The research record cited a 1992 republication/version, while the original article is:

Bruner, G. C., & Pomazal, R. J. (1988). *Problem Recognition: The Crucial First Stage of the Consumer Decision Process*. Journal of Consumer Marketing, 5(1), 53–63. DOI: 10.1108/eb008219.

**Correction:** Use the 1988 original as the primary citation and treat later republications separately.

## 3. Findings that survived adversarial review

The audit reinforced rather than rejected these WDBASIC positions:

- native semantic HTML before unnecessary ARIA;
- formal accessibility evidence rather than automated-score claims;
- server/trusted-boundary authority for authentication, authorization, business rules, and persistence;
- explicit field allowlists and safe query/output handling;
- truthful claims and evidence boundaries;
- anti-repetition / semantic-progression content rules;
- CTA intensity matched to user intent;
- correct HTTP status and URL integrity;
- cognitive-accessibility emphasis on clarity, recognition, recovery, and user agency;
- explicit third-party, privacy, and failure-path governance.

## 4. Research boundaries

This audit separates:

- **external requirements** — formal standards/specifications;
- **external guidance** — search/CRO/platform guidance;
- **peer-reviewed evidence** — empirical research with scope limitations;
- **WDBASIC practitioner values** — deliberate design philosophy;
- **WDBASIC heuristics** — diagnostic rubrics without universal empirical validation.

No external source discovered in this audit establishes PAS as a Google ranking factor, a universal content sequence, or a canonical numerical formula.

## 5. Source families consulted

The audit used current or authoritative material from:

- Google Search Central — JavaScript SEO, people-first content, Search Essentials, page experience;
- W3C/WAI — native HTML/ARIA guidance, WCAG 2.2 and reflow/conformance concepts;
- OWASP — ASVS and application-security verification concepts;
- HTMX official documentation/essays — progressive enhancement, history, cache behavior, direct-load URLs, `HX-Request`, script behavior, pragmatic architecture;
- web.dev / Chrome documentation — Core Web Vitals and field performance concepts;
- Semrush current guidance — landing pages, buyer journey, content gaps, intent, CTA and content alignment;
- Bruner & Pomazal — consumer problem recognition;
- Witte — Extended Parallel Process Model;
- Tannenbaum et al. (2015) and later meta-analytic fear/efficacy research — limits of converting threat/efficacy theory into a deterministic marketing formula.

## 6. Hardening principle

The governing lesson from the audit is:

> **Make WDBASIC strict about outcomes, evidence, truth, access, integrity, and recovery; make it flexible about the technology or persuasion pattern used to achieve them when multiple valid approaches exist.**
