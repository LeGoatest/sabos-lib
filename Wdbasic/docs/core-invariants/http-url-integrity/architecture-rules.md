# WDBASIC Architecture Rules

> **Authority:** Binding WDBASIC technical contract beneath [`../README.md`](../README.md)  
> **Core entry point:** [`../README.md`](../README.md)  
> **Standards registry:** [`../measurable-evidence/standards.md`](../measurable-evidence/standards.md)

This document governs state authority, request/response behavior, routing, security boundaries, progressive enhancement, resilience, and technology-profile selection.

## 1. Authority and state ownership

WDBASIC distinguishes **authoritative state** from a mandatory rendering technology.

An appropriate trusted boundary owns:

- authentication and authorization;
- privileged business rules and validation;
- persistent business state;
- tenant/ownership decisions;
- pricing, permission, workflow, and consequential state;
- final persistence and conflict outcomes.

Client state may improve continuity, responsiveness, optimistic presentation, or offline behavior, but it is never sufficient authorization evidence and must not become the sole unrecoverable source of material business state.

Rendering may be server-side, static/pre-rendered, client-rendered, hypermedia/HTMX, hybrid, or mixed according to the selected technology profile.

## 2. Progressive enhancement and baseline behavior

Prefer meaningful HTML, native links/controls, direct URLs, and ordinary form behavior when they fit the product.

Enhancement may improve speed, continuity, local interaction, or offline behavior while preserving applicable authorization, validation, semantics/labels, error/recovery behavior, security/privacy controls, direct-load behavior, and user agency.

A product may intentionally depend on JavaScript or a richer client runtime when that architecture better fits the task. Such a decision must document accessibility, resilience, search/discoverability for public content, recovery, direct-load, cache/state, and performance behavior.

Progressive enhancement is a strong WDBASIC preference, not a false claim that every valid web application must operate identically without JavaScript.

## 3. Technology profiles

Every implementation selects applicable profiles from [`../../technology-profiles/`](../../technology-profiles/README.md), including as relevant:

- HTMX / hypermedia;
- SSR;
- static/pre-rendered;
- JavaScript application;
- Tailwind / TCbasic;
- hybrid/native.

Profiles specialize implementation behavior but cannot weaken [`../README.md`](../README.md).

HTMX is preferred when server-owned hypermedia naturally fits the interaction. It is not a universal WDBASIC requirement.

## 4. JavaScript boundary

JavaScript may own client-local behavior and presentation state such as disclosure, focus management, media controls, clipboard/device APIs, rich visualization, optimistic state, offline queues, or application-shell behavior when the selected profile permits it.

JavaScript must not be treated as sufficient authority for authentication/authorization, privileged business rules, integrity-critical validation, tenant/ownership decisions, trusted pricing/permissions/workflow state, or persistence guarantees.

Client-side validation improves feedback; it does not replace authoritative validation.

## 5. Semantic HTML

Use native elements for their defined behavior where they meet the need. Do not create generic clickable containers, partial custom controls, or unnecessary ARIA substitutes when valid native HTML provides the required semantics and interaction.

Custom widgets must implement their complete keyboard, focus, state, name/role/value, announcement, and accessibility behavior.

## 6. Routing and URL contract

For URL-addressable web states:

- direct requests and refreshes must produce intentional results;
- unknown routes return real `404` responses;
- unauthorized and forbidden states remain distinct;
- redirect status codes match intent;
- canonical, locale, case, query, and trailing-slash behavior is documented;
- history entries created by client or hypermedia navigation must be reconstructable by direct load;
- internal endpoints are not presented as canonical public routes;
- state-changing actions are not exposed through `GET` or another safe method;
- redirect/callback destinations derived from input use controlled validation/allowlisting.

## 7. HTTP response contract

Status codes represent actual outcomes. Typical use includes:

- `200` successful representation;
- `201` resource created when material;
- `204` intentionally empty successful response;
- `303` redirect after successful non-idempotent form submission where appropriate;
- `400` malformed request;
- `401` authentication required;
- `403` forbidden;
- `404` not found;
- `409` state conflict;
- `413` request/upload too large;
- `415` unsupported media/content type;
- `422` recoverable semantic validation failure when that convention is used;
- `429` rate limited;
- `500` unexpected server failure.

Do not return a successful homepage for an unknown route or disguise validation/authorization/conflict failure as success for client convenience.

## 8. Forms and consequential actions

Forms follow [`../semantics/forms/`](../semantics/forms/README.md).

Before a material effect occurs, an appropriate trusted boundary verifies as applicable:

- route/method and accepted content type;
- request size, field count/nesting, and file limits;
- authentication/session state;
- CSRF/origin policy;
- explicit field allowlist and shape;
- syntactic, semantic, cross-field, and business validation;
- object-level authorization/ownership/tenant boundaries;
- duplicate/replay/concurrency/idempotency behavior;
- abuse/rate/upload controls;
- audit/notification requirements.

Recoverable errors preserve non-sensitive user work where safe.

## 9. State, concurrency, and idempotency

- Duplicate requests must not silently duplicate material effects.
- Material actions define retry behavior.
- Concurrent edits use a documented conflict strategy.
- Optimistic UI reconciles against authoritative state.
- Idempotency keys or equivalent controls are used where repetition could create material harm.
- Stale validation/availability is rechecked or enforced atomically when necessary.
- Signed, hidden, cached, or client-stored values do not replace current authorization or business-rule evaluation.

## 10. Security/privacy boundaries

Follow [`../security-privacy/security-and-privacy.md`](../security-privacy/security-and-privacy.md) and [`../semantics/forms/security.md`](../semantics/forms/security.md).

At minimum:

- never trust client-supplied role, ownership, price, permission, status, tenant, path, or privileged workflow state;
- use explicit field allowlists;
- use safe structured queries/APIs;
- encode untrusted output for its context;
- validate uploads and later access;
- keep secrets out of public output;
- apply least privilege;
- protect abuse-sensitive endpoints;
- keep privileged trust decisions in a trusted boundary;
- do not put sensitive form/security data in URLs or ordinary logs.

## 11. Cache and representation boundaries

Caching must not cross identity, authorization, tenant, locale, consent, CSRF, or personalization boundaries.

Document the cached representation/object, cache-key inputs, variation headers/keys, invalidation, acceptable staleness, sensitive/user-specific content, and browser-local/offline stores where applicable.

When a URL can produce materially different full-page, fragment, personalized, locale, or device representations, the variation strategy must be cache-safe.

HTMX-specific rules are binding when the HTMX profile is active, including `HX-Request` variation and history-cache review.

## 12. Authoring and generated output

Authoring/generation follows [`../semantics/authoring/`](../semantics/authoring/) contracts.

Generated output is part of the product's evidence scope. Generated forms must preserve the same allowlist, validation, authorization, privacy, retention, and security constraints as hand-authored forms.

## 13. Internationalization and media

Localized output follows [`../semantics/internationalization.md`](../semantics/internationalization.md). Media follows [`../accessibility/media-accessibility.md`](../accessibility/media-accessibility.md).

Language, direction, locale values, captions, transcripts, alternatives, and accessibility relationships must survive navigation, fragment replacement, hydration, export, and other active profile behavior.

## 14. Dependency and third-party policy

Add dependencies when they provide justified value and fit the product's security, accessibility, privacy, performance, resilience, and maintenance requirements.

Review maintenance/security, runtime/transfer cost, accessibility, privacy/data flow, CSP/origin impact, rendering/fallback behavior, and removal path.

A provider response never automatically becomes authorization/business truth.

## 15. Performance and resilience

Each product/profile defines measurable performance and failure behavior.

Review as applicable:

- field Core Web Vitals with source, period, and percentile;
- lab measurements with tool/version/environment;
- HTML/CSS/JS/image/third-party budgets;
- render-blocking assets;
- layout stability and media dimensions;
- interaction latency;
- hydration/client execution cost;
- external dependency failure;
- retry/recovery;
- request/upload/queue limits.

Do not claim a rendering strategy is automatically faster without evidence.

## 16. Search/discoverability architecture

Public pages must intentionally document indexability/crawlability for target search engines, crawlable navigation where required, canonical behavior/metadata, meaningful headings/useful content, rendering behavior/known crawler limitations, correct status handling, and avoidance of thin doorway/location duplication.

WDBASIC prefers robust public rendering strategies, often server or pre-rendered, but does **not** claim that Google universally requires JavaScript-free primary content.

## 17. Observability and audit

Unexpected failures and sensitive state changes must be observable without exposing secrets or unnecessary personal content.

Use structured events, correlation identifiers, safe error categorization, retry records, and audit evidence appropriate to the product.

## 18. Deployment/support baseline

Document runtime/browser/platform baseline, assistive-technology matrix where applicable, selected technology profiles, build/runtime dependencies, environment configuration, migrations/rollback, cache/queue/offline requirements, validation/security/accessibility/performance test commands, and known limitations.

## 19. Exceptions

An exception records a stable identifier, rule bypassed, reason/scope, accessibility/security/privacy/search/performance impact, fallback, owner, expiration/review condition, and remediation plan.

An exception cannot create a false external-standard claim, convert missing evidence into a pass, or turn untrusted client state into a trusted security boundary.
