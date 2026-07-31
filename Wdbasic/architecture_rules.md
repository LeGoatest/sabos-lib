# WDBASIC Architecture Rules

> **Authority:** Highest-authority WDBASIC technical contract  
> **Core entry point:** [`README.md`](README.md)  
> **Standards registry:** [`STANDARDS.md`](STANDARDS.md)

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
- Authorization and CSRF requirements.
- Target and swap strategy.
- Loading, busy, empty, validation, conflict, error, and success states.
- Focus and announcement behavior.
- History and direct-load behavior.
- Cache policy.
- Correct language, direction, and accessibility relationships.

Fragments must not depend on hidden client-only state the server cannot reconstruct.

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

## 5. Semantic HTML

Use native elements for their defined behavior. Do not create generic clickable containers, custom form controls, or ARIA substitutes where valid native HTML provides the required semantics and interaction.

See [`tokens/accessibility.md`](tokens/accessibility.md).

## 6. Routing and URL contract

- Primary navigation uses crawlable anchors.
- Direct requests and refreshes work.
- Unknown routes return real `404` responses.
- Unauthorized and forbidden states are distinct.
- Redirect status codes match intent.
- Canonical, locale, case, query, and trailing-slash behavior is documented.
- HTMX history creates valid reconstructable URLs.
- Internal endpoints are not presented as canonical public routes.

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
- `422` recoverable semantic validation failure when that convention is used.
- `429` rate limited.
- `500` unexpected server failure.

Do not return a homepage with `200` for an unknown route or disguise validation failure as success for client convenience.

## 8. Forms, validation, and consequential actions

The server is authoritative for validation.

State-changing requests define:

- Authorization.
- CSRF protection.
- Validation.
- Duplicate-submission behavior.
- Idempotency expectations.
- Success destination.
- Error and conflict recovery.
- Audit requirements.
- Review, confirmation, or reversibility for consequential actions.

Recoverable errors preserve user input.

## 9. State, concurrency, and idempotency

- Duplicate requests must not silently duplicate business effects.
- Financial, destructive, invitation, upload, and other material actions define retry behavior.
- Concurrent edits use a documented conflict strategy.
- Optimistic UI reconciles with the server.
- Idempotency keys or equivalent controls are used where repetition could create material harm.

## 10. Security boundaries

- Never trust client-supplied role, ownership, price, permission, status, or tenant data.
- Escape untrusted output by default.
- Validate uploads by authorization, actual content, size, destination, and later access.
- Keep secrets and internal paths out of client-visible output.
- Apply least privilege.
- Rate-limit and protect abuse-sensitive endpoints.
- Keep security decisions server-side.

The cross-cutting browser, third-party, privacy, consent, and telemetry rules are in [`security-and-privacy.md`](security-and-privacy.md).

## 11. Authoring boundaries

A product that creates or edits content must follow:

- [`authoring/atag-2.0.md`](authoring/atag-2.0.md)
- [`authoring/accessible-output.md`](authoring/accessible-output.md)

Generated output is part of the product’s conformance scope.

## 12. Internationalization and media

Localized output follows [`internationalization.md`](internationalization.md).

Audio, video, animation, carousels, and comparison media follow [`media-accessibility.md`](media-accessibility.md).

These requirements apply to server output and HTMX fragments.

## 13. Cache boundaries

Caching must not cross identity, authorization, tenant, locale, consent, or personalization boundaries.

Document:

- Cached object.
- Cache key inputs.
- Invalidation.
- Maximum acceptable staleness.
- Sensitive or user-specific content.

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

## 16. Search architecture

Public pages provide semantic HTML, crawlable links, canonical behavior, metadata, meaningful headings, structured-data locations, and unique useful content.

Thin doorway pages, duplicate location pages, JavaScript-only primary content, and false `200` error pages are non-conformant.

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

Do not log secrets, full sensitive fields, or unnecessary personal data.

## 18. Deployment and support baseline

Document:

- Runtime and browser baseline.
- Assistive-technology support matrix.
- Build-time and runtime dependencies.
- Writable storage.
- Environment configuration.
- Migrations and rollback.
- Cache and queue requirements.
- Validation commands.

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

An exception cannot be used to make a false external standards claim.
