# WDBASIC Architecture Rules

> **Authority:** Highest-authority WDBASIC technical contract  
> **Core entry point:** [`README.md`](README.md)  
> **Standards registry:** [`STANDARDS.md`](STANDARDS.md)  
> **Form contract:** [`forms/README.md`](forms/README.md)

This document governs rendering, state ownership, request and response behavior, routing, security boundaries, progressive enhancement, resilience, and technical exceptions.

## 1. Server ownership

The server owns:

- Primary page and fragment content.
- Routing outcomes.
- Authentication and authorization.
- Business rules and validation.
- Persistent state.
- Canonical component state.
- Search-indexable content.
- Final success, empty, conflict, validation, and error outcomes.

Client state may mirror server state for continuity but is never authorization evidence or the sole recoverable source of material business state.

## 2. Progressive enhancement

The baseline uses:

- Meaningful HTML.
- Native links and controls.
- Normal form submission.
- Server validation.
- Direct URLs and server responses.

Enhancement may improve speed or continuity but must preserve equivalent authorization, validation, names, labels, errors, URLs, outcomes, and security behavior.

A product constraint that removes the baseline path must be explicit, narrow, and evaluated for accessibility, resilience, security, and search impact.

## 3. HTMX-first interaction

Use HTMX when the server can own the interaction, including forms, validation, filtering, sorting, pagination, search, inline editing, modal content, and status changes.

Every fragment defines:

- Request method and inputs.
- Request-admission requirements, including accepted content type and size limits where applicable.
- Authorization and CSRF requirements.
- Target and swap strategy.
- Loading, busy, empty, validation, conflict, rate-limit, error, and success states.
- Focus and announcement behavior.
- History and direct-load behavior.
- Cache policy.
- Correct language, direction, and accessibility relationships.

Fragments must not depend on hidden client-only state the server cannot reconstruct.

An HTMX form submission follows the same validation, authorization, anti-abuse, idempotency, logging, and persistence rules as a normal form submission.

## 4. JavaScript boundary

JavaScript may own local ephemeral behavior such as menu disclosure, focus management, media controls, clipboard interaction, or device APIs requiring browser execution.

JavaScript must not own:

- Canonical routing.
- Authentication or authorization.
- Persistent business state.
- Server validation.
- Primary public content.
- Search-indexable content.
- Responsive appearance through generated utility strings.

Client-side validation improves feedback only. It is not a security mechanism and may not be the only implementation of a rule.

## 5. Semantic HTML

Use native elements for their defined behavior. Do not create generic clickable containers, custom form controls, or ARIA substitutes where valid native HTML provides the required semantics and interaction.

See [`tokens/accessibility.md`](tokens/accessibility.md) and [`forms/README.md`](forms/README.md).

## 6. Routing and URL contract

- Primary navigation uses crawlable anchors.
- Direct requests and refreshes work.
- Unknown routes return real `404` responses.
- Unauthorized and forbidden states are distinct.
- Redirect status codes match intent.
- Canonical, locale, case, query, and trailing-slash behavior is documented.
- HTMX history creates valid reconstructable URLs.
- Internal endpoints are not presented as canonical public routes.
- State-changing actions are not exposed through `GET` or another safe HTTP method.
- Redirect or callback destinations derived from input use a server-controlled allowlist.

## 7. HTTP response contract

Status codes represent actual outcomes.

Typical use:

- `200` successful page or fragment.
- `201` resource created when material.
- `204` intentionally empty successful response.
- `303` redirect after successful non-idempotent form submission.
- `400` malformed request.
- `401` authentication required.
- `403` authenticated but forbidden.
- `404` resource not found.
- `409` state conflict.
- `413` request body or upload too large.
- `415` unsupported media or content type.
- `422` recoverable semantic validation failure when that convention is used.
- `429` rate limited.
- `500` unexpected server failure.

Do not return a homepage with `200` for an unknown route or disguise validation, authorization, conflict, or security failure as success for client convenience.

## 8. Forms, validation, and consequential actions

Forms follow:

- [`forms/README.md`](forms/README.md)
- [`forms/validation.md`](forms/validation.md)
- [`forms/security.md`](forms/security.md)

The server is authoritative for validation, authorization, business rules, and persistence.

Before a form effect occurs, the server verifies:

- Route and HTTP method.
- Accepted content type, encoding, request size, field count, nesting, and file count.
- Authentication and session state.
- CSRF and request-origin policy when applicable.
- Explicit field allowlist and submitted shape.
- Syntactic and semantic validation.
- Object-level authorization, ownership, and tenant boundaries.
- Duplicate-submission, replay, concurrency, and idempotency behavior.
- Rate limits, upload controls, and proportionate abuse defenses.
- Audit and notification requirements.

Recoverable errors preserve non-sensitive user input and return accessible field and summary errors.

Legal, financial, destructive, identity, permission, publication, and other consequential actions provide review, correction, reversibility, or confirmation proportionate to impact.

## 9. State, concurrency, and idempotency

- Duplicate requests must not silently duplicate business effects.
- Financial, destructive, invitation, upload, notification, and other material actions define retry behavior.
- Concurrent edits use a documented conflict strategy.
- Optimistic UI reconciles with the server.
- Idempotency keys or equivalent controls are used where repetition could create material harm.
- Validation or availability checks that can become stale are repeated or enforced atomically at persistence time.
- A valid signed or hidden value does not replace current authorization or business-rule evaluation.

## 10. Security boundaries

- Never trust client-supplied role, ownership, price, permission, status, tenant, path, or workflow data.
- Use explicit form field allowlists and mapping; unrestricted mass assignment is prohibited.
- Escape untrusted output for its rendering context.
- Use parameterized queries and safe structured APIs rather than concatenating input into interpreters.
- Validate uploads by authorization, actual content, size, destination, processing state, and later access.
- Keep secrets and internal paths out of client-visible output.
- Apply least privilege.
- Rate-limit and protect abuse-sensitive endpoints.
- Keep security decisions server-side.
- Do not place sensitive form data or security tokens in URLs.
- Do not log secrets or unnecessary submitted content.

The detailed form threat contract is [`forms/security.md`](forms/security.md). Cross-cutting browser, third-party, privacy, consent, telemetry, authentication, and device rules are in [`security-and-privacy.md`](security-and-privacy.md).

## 11. Authoring boundaries

A product that creates or edits content must follow:

- [`authoring/atag-2.0.md`](authoring/atag-2.0.md)
- [`authoring/accessible-output.md`](authoring/accessible-output.md)

Generated output is part of the product’s conformance scope.

A generated form must use the same field allowlist, validation, authorization, CSRF, privacy, retention, and error contracts as a hand-authored form. An authoring interface may not grant content authors control over privileged processing routes, model properties, storage paths, recipients, or permission fields without explicit authorization.

## 12. Internationalization and media

Localized output follows [`internationalization.md`](internationalization.md).

Audio, video, animation, carousels, and comparison media follow [`media-accessibility.md`](media-accessibility.md).

These requirements apply to server output and HTMX fragments.

Form parsing and validation must distinguish canonical machine values from locale-aware display and input assistance. Language-specific presentation must not weaken server-side validation or security.

## 13. Cache boundaries

Caching must not cross identity, authorization, tenant, locale, consent, CSRF, or personalization boundaries.

Document:

- Cached object.
- Cache key inputs.
- Invalidation.
- Maximum acceptable staleness.
- Sensitive or user-specific content.

Do not cache pages or fragments containing reusable security tokens, sensitive submitted values, or another user’s validation state.

Do not serve stale prices, credentials, availability, status, or consent choices beyond an accepted business window.

## 14. Dependency and third-party policy

Add a dependency only when it provides measurable value that cannot be maintained more safely with existing capabilities.

Review:

- Maintenance and security.
- Runtime and transfer cost.
- Accessibility.
- Privacy and data flow.
- Server-rendering and fallback behavior.
- Content Security Policy impact.
- Removal path.

A validation, CAPTCHA, identity, payment, address, upload, or anti-abuse provider does not become authoritative for authorization or business state merely because it is external.

A third-party failure must not remove primary public content when a practical fallback exists.

## 15. Performance and resilience

- Minimize render-blocking assets.
- Use explicit media dimensions.
- Avoid layout shift.
- Lazy-load appropriate below-fold media.
- Avoid client hydration for meaningful public content.
- Define page- and workflow-specific budgets.
- Preserve user-safe retry and recovery under partial failure.
- Treat external scripts as optional failure domains.
- Apply request-size, processing-time, queue, and upload limits before resource exhaustion occurs.

## 16. Search architecture

Public pages provide semantic HTML, crawlable links, canonical behavior, metadata, meaningful headings, structured-data locations, and unique useful content.

Thin doorway pages, duplicate location pages, JavaScript-only primary content, and false `200` error pages are non-conformant.

Search and filter forms use crawlable canonical destinations where appropriate and do not expose sensitive submitted values in URLs.

## 17. Observability and audit

Unexpected failures are observable without exposing sensitive details.

Document or implement:

- Structured logs.
- Correlation identifiers.
- Error categorization.
- Integration and queue failure records.
- User-safe errors.
- Retry paths.
- Audit records for sensitive state changes.
- Security-relevant form events such as CSRF failure, authorization denial, protected-field submission, upload rejection, replay, and rate limiting.

Do not log secrets, passwords, tokens, full payment data, or unnecessary personal form content. Sanitize submitted values before they enter logs or administrative viewers.

## 18. Deployment and support baseline

Document:

- Runtime and browser baseline.
- Assistive-technology support matrix.
- Build-time and runtime dependencies.
- Writable storage.
- Environment configuration.
- Migrations and rollback.
- Cache and queue requirements.
- Request, upload, and processing limits.
- Validation commands.
- Form validation and security test commands.

Production must not depend on an undocumented development server.

## 19. Exceptions

An exception records:

- Stable identifier.
- Rule bypassed.
- Reason.
- Scope.
- Accessibility, security, privacy, search, internationalization, and performance impact.
- Fallback.
- Owner.
- Expiration or review condition.
- Remediation plan.

An exception cannot be used to make a false external standards claim or to treat client validation as a security boundary.
