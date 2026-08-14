# WDBASIC v2.1 Governance, Design, and Framework Contract

> **Status:** Binding  
> **Canonical entry point:** `Wdbasic/README.md`  
> **Framework version:** WDBASIC v2.1  
> **Highest authority:** [`core-invariants.md`](core-invariants.md)

WDBASIC v2.1 hardens the framework by separating universal invariants from diagnostic evaluation, content strategy, and implementation technology.

## 1. Framework model

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

## 2. Authority order

Apply WDBASIC in this order:

1. [`core-invariants.md`](core-invariants.md)
2. [`architecture_rules.md`](architecture_rules.md)
3. This framework contract
4. [`STANDARDS.md`](STANDARDS.md)
5. Applicable cross-cutting contracts
6. Applicable content strategy
7. Applicable technology profile
8. Token/component contracts and active design profile
9. Product-specific requirements/evidence
10. Explicit owned exceptions

External standards retain their own conformance language. A WDBASIC exception or preference cannot turn an external failure into a pass.

## 3. Core invariants are non-compensatory

WDBASIC does not average critical failures into an overall quality percentage.

At minimum, resolve:

```text
Semantics / critical interaction integrity   PASS | FAIL | UNKNOWN
Accessibility                              PASS | FAIL | UNKNOWN
Security                                   PASS | FAIL | UNKNOWN
Privacy                                    PASS | FAIL | UNKNOWN
Truthfulness                               PASS | FAIL | UNKNOWN
HTTP/URL integrity (when applicable)       PASS | FAIL | UNKNOWN
Required evidence                          PASS | FAIL | UNKNOWN
```

A material failure or unresolved unknown cannot be cancelled by SEO, conversion, visual quality, trust, or performance elsewhere.

The former additive `D + P + X + T + A + C = 100` model is superseded for current WDBASIC evaluation.

## 4. Architecture and state authority

WDBASIC is strict about trusted state boundaries but neutral about rendering technology.

Authentication, authorization, privileged business rules, validation integrity, tenant/ownership decisions, trusted workflow state, and persistence execute in an appropriate trusted boundary.

Rendering/interaction may use:

- HTMX/hypermedia;
- server-side rendering;
- static/pre-rendered output;
- a JavaScript application;
- hybrid/native shells;
- mixed architectures.

The chosen technology must satisfy [`core-invariants.md`](core-invariants.md) and its applicable profile.

## 5. Progressive enhancement

WDBASIC strongly prefers meaningful HTML, native controls, direct URLs, and recoverable baseline behavior where practical.

However, v2.1 does not claim that every valid application must operate identically without JavaScript. A deliberate JavaScript-dependent experience is allowed when the selected profile documents accessibility, resilience, state authority, direct-load behavior, search/discoverability for public content, cache/offline behavior, and performance.

## 6. HTMX boundary

HTMX remains a preferred WDBASIC profile when server-owned hypermedia naturally fits the product. It is not a universal core requirement.

When HTMX is active, follow [`technology-profiles/htmx-hypermedia.md`](technology-profiles/htmx-hypermedia.md), including:

- cache-safe full-page/fragment variation;
- `Vary: HX-Request` where appropriate;
- direct-loadable history URLs;
- history restore behavior;
- `hx-history="false"` review for sensitive DOM;
- CSP/script policy;
- focus, announcement, and fragment-state behavior.

## 7. Styling boundary

WDBASIC core requires coherent, accessible, maintainable presentation semantics and state behavior; it does not require Tailwind CSS.

When Tailwind is adopted, use [`technology-profiles/tailwind-tcbasic.md`](technology-profiles/tailwind-tcbasic.md) and TCbasic/project-specific styling contracts.

A WDBASIC/TCbasic preference must not be presented as Tailwind's universal authoring recommendation.

## 8. Accessibility

WDBASIC targets WCAG 2.2 Level AA for applicable web scope and preserves WCAG's formal conformance model.

Use precise claim status from the compliance contracts. Do not represent automated tool output or a percentage score as proof of WCAG conformance.

Cognitive accessibility, authoring tools, media, native/hybrid surfaces, and non-web output retain their own applicability and evidence requirements.

## 9. Security and privacy

Products follow [`security-and-privacy.md`](security-and-privacy.md), architecture security boundaries, and form-security contracts.

Security/privacy are gates rather than points.

At minimum preserve:

- trusted-boundary authorization/business validation;
- explicit field allowlists;
- safe structured queries/APIs;
- contextual output encoding/sanitization;
- CSRF/request-integrity controls where applicable;
- upload validation and controlled serving;
- least privilege;
- secrets hygiene;
- purpose limitation and data minimization;
- third-party inventory and failure behavior;
- accessible authentication/recovery;
- explicit retention and logging rules.

## 10. Forms

All input, upload, authentication, or state-changing workflows follow [`forms/`](forms/README.md).

Client validation improves usability but is not a security boundary. Normal and enhanced submission paths must preserve equivalent authorization, business validation, privacy, and persistence integrity.

## 11. Truthful content and evidence

Do not fabricate or imply unverified:

- reviews/ratings;
- awards/certifications/licenses;
- guarantees/warranties;
- project counts/statistics;
- pricing/availability;
- response times;
- service areas;
- urgency/scarcity;
- accessibility/security/privacy/sustainability/maturity claims.

Generated or AI-assisted content follows the same evidence rules.

## 12. Experience evaluation

Current diagnostic evaluation lives in [`experience-evaluation.md`](experience-evaluation.md).

Evaluate independently:

- discoverability;
- intent alignment;
- usability;
- trust;
- conversion;
- performance.

Report these as a profile/vector where possible rather than collapsing them into one compensatory score.

## 13. Content strategies

Content strategy is intent-dependent and lives under [`content-strategies/`](content-strategies/README.md).

The hardened rule is:

> **Relevance precedes or accompanies persuasion.**

Valid pages may begin with:

- a problem;
- a solution/benefit;
- a direct answer;
- an offer/CTA;
- comparison criteria;
- another task-specific orientation.

PAS is used only when problem/consequence framing genuinely helps the intended user.

## 14. PAS boundary

The historical direct PAS equation, later `P(7)+A(5)+S(8)` rubric, and threat/efficacy exploration are preserved as research history, not current canonical metrics.

WDBASIC rejects a deterministic `Efficacy - Threat >= 0` marketing threshold.

When PAS applies, agitation must remain factual, proportional, supportable, and subordinate to user agency.

## 15. Semantic progression

Regardless of content strategy, later sections should add new:

- evidence;
- specificity;
- context;
- decision criteria;
- user questions/answers;
- examples;
- task-stage value.

Repetition is not depth.

## 16. Performance

Performance is a measurable experience domain.

Where applicable, record:

- field Core Web Vitals with source, period, and percentile;
- lab tool/version/environment;
- HTML/CSS/JS/image/third-party budgets;
- layout stability;
- interaction latency;
- client/hydration cost;
- external dependency failure/recovery.

Do not present good Core Web Vitals as a ranking guarantee or assume a rendering strategy is automatically faster without evidence.

## 17. Search/discoverability

Public content must intentionally document crawlability/indexability for target search engines, canonical behavior, status codes, direct-load behavior, useful content, and rendering limitations.

WDBASIC may prefer server or pre-rendered public content for resilience, performance, crawler interoperability, and predictable failure behavior. v2.1 does **not** claim that Google universally requires JavaScript-free content.

## 18. Authoring, media, internationalization, native/non-web

Use the existing subject contracts for:

- authoring tools and accessible output;
- media accessibility;
- cognitive accessibility;
- internationalization;
- hybrid/native accessibility;
- generated/non-web documents.

Do not collapse web, native, and document-format conformance scopes.

## 19. Profiles and exceptions

Technology/design profiles may specialize implementation choices but may not weaken core invariants or external standards.

Exceptions require:

- stable ID;
- rule bypassed;
- reason/scope;
- impact;
- fallback;
- owner;
- review/expiration condition;
- remediation path.

An exception cannot create false evidence or turn untrusted client state into a trusted security boundary.

## 20. Research and correction history

WDBASIC intentionally preserves findings that were later rejected or refined so future agents can distinguish evolution from regression.

See:

- [`positions/research-findings-2026-08-14.md`](positions/research-findings-2026-08-14.md)
- [`positions/adversarial-audit-2026-08-14.md`](positions/adversarial-audit-2026-08-14.md)
- [`positions/wdbasic-evaluation-model.md`](positions/wdbasic-evaluation-model.md)
- [`positions/pas-content-architecture.md`](positions/pas-content-architecture.md)

## 21. Governing doctrine

> **Be strict about outcomes, evidence, truth, access, integrity, and recovery; be flexible about implementation technology and persuasion sequence when multiple valid approaches satisfy the invariants.**
