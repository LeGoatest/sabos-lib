# WDBASIC Core Invariants

> **Authority:** Highest-level WDBASIC invariant contract  
> **Applies to:** every WDBASIC-governed implementation unless an external standard imposes a stricter requirement  
> **Reviewed:** 2026-08-14

WDBASIC core invariants define **required outcomes and boundaries**, not a mandatory framework, rendering library, CSS framework, or client/server topology.

A technology profile may specialize implementation behavior, but it may not weaken these invariants.

## 1. Semantics

- Prefer native HTML semantics and controls when they provide the required behavior.
- Preserve names, roles, states, values, relationships, source order, keyboard operation, focus behavior, and announcements across responsive and enhanced states.
- Do not use visual appearance as the sole source of meaning or state.
- Custom elements and ARIA patterns require complete behavior and evidence; ARIA does not repair an incorrect interaction model by itself.

## 2. Accessibility

- Resolve accessibility applicability explicitly.
- WDBASIC targets WCAG 2.2 Level AA for web content where applicable, while preserving WCAG's own conformance model.
- Accessibility is **non-compensatory**: a known accessibility failure cannot be offset by SEO, conversion, visual, or performance strength.
- `cantTell`, untested, blocked, manual-pending, and failed results remain unresolved.
- Cognitive-accessibility, media, authoring, native, and non-web requirements remain separately scoped where applicable.

## 3. Security and privacy

- Authorization, authentication, privileged business rules, persistence constraints, and trust decisions must execute in an appropriate trusted boundary and never rely solely on untrusted client state.
- Validate and authorize independently of submitted identifiers or hidden client state.
- Use explicit field allowlists, parameterized queries or safe structured APIs, contextual output encoding, proportionate CSRF protection, upload controls, rate limits, and least privilege where applicable.
- Collect, retain, expose, and transmit only data justified by a documented purpose.
- Security and privacy are **eligibility gates**, not quality points.

## 4. Truthful content

- Claims, reviews, ratings, credentials, project counts, response times, guarantees, scarcity, availability, pricing, service areas, and before/after evidence must be factual and supportable.
- Missing evidence remains missing.
- Generated or AI-assisted content must not fabricate proof, specificity, citations, local facts, or urgency.
- Persuasion may not override factual accuracy or user agency.

## 5. HTTP and URL integrity

For web implementations where URLs and HTTP apply:

- Direct-loadable public URLs must return the correct representation and status.
- Unknown routes must not masquerade as successful pages.
- State-changing effects must not be exposed through safe methods such as `GET`.
- Redirect, canonical, locale, case, query, and trailing-slash behavior must be intentional.
- Navigation and history state must remain reconstructable from a direct request when the product exposes a URL for that state.
- Representation variation must be cache-safe and must not cross identity, authorization, tenant, locale, consent, or personalization boundaries.

## 6. Resilience

- Every adopted architecture must define baseline operation, enhancement failure behavior, recovery, retry, interrupted workflows, dependency failure, and direct-load behavior.
- Optional third-party failure must not unnecessarily remove primary content or block recovery.
- Material user work should survive recoverable errors where security and privacy permit.
- Client state may improve continuity, but material business state must remain recoverable from an authoritative source.
- Public content rendering strategy must be selected deliberately for discoverability, performance, interoperability, and resilience; WDBASIC does not claim that one rendering technology is universally required by search engines.

## 7. Measurable evidence

- A requirement, conformance claim, score, benchmark, or quality assertion must identify its evidence source and evaluation method.
- External standards retain their own applicability and conformance language.
- WDBASIC heuristics must be labeled as WDBASIC heuristics.
- Unknown or untested conditions must not be treated as passes.
- Version material evaluation models and test procedures when interpretation changes.
- Prefer reproducible field evidence over unsupported qualitative claims where measurement is possible.

## 8. Non-compensatory gate model

Before experience scoring or optimization, resolve at minimum:

```text
Semantics / critical interaction integrity   PASS | FAIL | UNKNOWN
Accessibility                              PASS | FAIL | UNKNOWN
Security                                   PASS | FAIL | UNKNOWN
Privacy                                    PASS | FAIL | UNKNOWN
Truthfulness                               PASS | FAIL | UNKNOWN
HTTP/URL integrity (when applicable)       PASS | FAIL | UNKNOWN
Required evidence                          PASS | FAIL | UNKNOWN
```

A `FAIL` or material `UNKNOWN` is not repaired by a high score elsewhere.

## 9. Technology neutrality

WDBASIC core does not require HTMX, Tailwind CSS, a JavaScript framework, server-side rendering, static generation, or a native shell.

Technology-specific requirements belong under [`technology-profiles/`](technology-profiles/README.md).

WDBASIC may define a preferred project profile, but preference must not be mislabeled as an external requirement or universal web-development law.

## 10. Content-strategy neutrality

WDBASIC core does not require Problem–Agitate–Solution (PAS) on every page.

Content strategy is selected from user intent, problem awareness, decision stage, page objective, risk, available evidence, and the nature of the task.

See [`content-strategies/`](content-strategies/README.md).
