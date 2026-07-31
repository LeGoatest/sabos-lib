# WDBASIC Architecture Rules

> **Authority:** Highest-authority WDBASIC technical contract  
> **Core entry point:** [`README.md`](README.md)

This document governs rendering, state ownership, request and response behavior, routing, security boundaries, progressive enhancement, resilience, and technical exceptions.

## 1. Rendering ownership

The server owns:

- Primary page content.
- Routing outcomes.
- Authentication and authorization.
- Business rules and validation.
- Persistent state.
- Canonical component and fragment state.
- Search-indexable content.
- Final success, empty, validation, and error outcomes.

Public pages must return meaningful complete HTML before JavaScript executes.

The initial response must contain enough structure, content, navigation, and metadata for users and search engines to understand the page without requiring client rendering.

## 2. Progressive enhancement

The baseline path uses normal links, native controls, forms, server validation, and server responses.

Enhancements may improve continuity or speed but may not remove the baseline path for primary public workflows unless a product constraint is explicitly documented.

Enhanced and baseline paths must preserve equivalent:

- Authorization and validation.
- Accessible names and labels.
- Error and success outcomes.
- URLs and navigation meaning.
- Content integrity.
- Security and abuse-prevention behavior.

## 3. HTMX-first interaction

Use HTMX when the server can reasonably own the interaction, including:

- Form submission and validation.
- Filtering, sorting, and search.
- Pagination and load-more behavior.
- Inline editing.
- Server-confirmed state changes.
- Modal or panel content.
- Partial page refreshes.

Every fragment must define:

- Input contract.
- Authorization requirement.
- Target container.
- Swap strategy.
- Loading and busy state.
- Empty state.
- Validation and request error state.
- Success state.
- Focus behavior.
- Announcement behavior.
- History behavior when relevant.
- Correct accessibility state after replacement.

Fragments must not depend on client state the server cannot reconstruct.

## 4. JavaScript boundary

JavaScript may own local ephemeral behavior such as:

- Menu disclosure.
- Focus traps and focus restoration.
- Local dropdowns.
- Lightboxes and media controls.
- Measured CSS variables.
- Clipboard or device APIs requiring browser execution.
- External integrations unavailable through server interaction.

JavaScript must not own:

- Canonical routing.
- Authentication or authorization decisions.
- Persistent business state.
- Primary public content.
- Server validation rules.
- Search-indexable content.
- Responsive appearance through generated utility strings.

Client state may mirror server state for interaction continuity, but the server remains authoritative.

## 5. Semantic HTML

Use the native element that matches the behavior:

- Links navigate.
- Buttons perform actions.
- Labels identify controls.
- Fieldsets group related controls.
- Headings represent document structure.
- Tables represent tabular data.
- Landmarks identify major page regions.
- Details and summary provide simple disclosure behavior.
- Dialog is preferred for supported dialog semantics.

Do not use generic containers plus ARIA where native HTML provides the required semantics and behavior.

See [`tokens/accessibility.md`](tokens/accessibility.md) for the complete accessibility contract.

## 6. Component architecture

Major interface elements must be reusable server-side components or fragments with explicit inputs and no hidden global dependency.

Components must preserve semantic HTML and expose relevant state variants. Product-specific wrappers may compose universal components but must not fork shared behavior without a documented reason.

Reusable component behavior is governed by [`components/component-contracts.md`](components/component-contracts.md).

## 7. Routing and URL contract

- Primary navigation uses crawlable anchors.
- Direct requests and browser refreshes work.
- Unknown paths return a real `404` response.
- Unauthorized and forbidden states use appropriate authentication or `403` behavior.
- Redirects use deliberate status codes and do not conceal routing errors.
- HTMX history changes preserve valid direct URLs and reconstructable server state.
- Internal implementation endpoints are not presented as canonical public routes.
- Trailing slash, case, locale, and canonical URL behavior are consistent.
- Query parameters affecting indexable content are normalized and documented.

## 8. HTTP response contract

Responses must use status codes that match the outcome.

Examples:

- `200` for a successful page or fragment.
- `201` when a request creates a resource and that distinction matters.
- `204` only when an intentionally empty response is valid.
- `303` after a successful non-idempotent form submission when redirecting to a result page.
- `400` for malformed requests.
- `401` when authentication is required.
- `403` when an authenticated actor lacks permission.
- `404` when the requested resource does not exist.
- `409` for a documented state conflict.
- `422` for recoverable semantic validation failures when the implementation uses that convention.
- `429` for rate limiting.
- `500` only for unexpected server failure.

Do not return the homepage with status `200` for unknown routes. Do not represent validation failure as success merely to simplify client code.

HTMX responses must remain understandable as server responses and must not depend on an undocumented client-only interpretation.

## 9. Forms and validation

The server is authoritative for validation.

Client validation may improve feedback but must not replace server validation. Recoverable failures preserve submitted values and return associated field errors. Complex forms return an error summary linked to invalid fields.

State-changing requests must define:

- Authorization.
- CSRF protection.
- Validation.
- Duplicate-submission behavior.
- Idempotency expectations where relevant.
- Success destination.
- Error recovery.
- Audit behavior when the action is security- or business-sensitive.

## 10. State, concurrency, and idempotency

- The server decides the canonical state transition.
- Duplicate requests must not silently create duplicate business effects.
- Destructive or financial actions require explicit conflict and retry behavior.
- Optimistic UI must reconcile with the server response.
- Concurrent edits must use a documented conflict strategy when overwriting would lose data.
- A fragment response must represent state valid at the time it is returned.

Use idempotency keys or equivalent controls where repeated submission could create material harm or duplicate records.

## 11. Security boundaries

- Never trust role, ownership, price, status, or authorization data supplied by the client.
- Protect state-changing requests against CSRF.
- Escape untrusted output by default.
- Validate uploads by type, size, destination, ownership, and authorization.
- Store uploaded files outside executable paths where practical.
- Do not expose credentials, filesystem paths, stack traces, or internal identifiers unnecessarily.
- Apply rate limiting and abuse prevention proportionate to the endpoint.
- Keep security decisions server-side.
- Do not use hidden fields, query parameters, or JavaScript state as authorization evidence.
- Apply least privilege to integrations, storage, and background processing.

## 12. Cache boundaries

Caching must not cross authorization, identity, tenant, locale, or personalization boundaries.

Document:

- What is cached.
- Cache key inputs.
- Invalidation behavior.
- Maximum acceptable staleness.
- Whether the response contains user-specific or security-sensitive data.

Public HTML caches must preserve canonical metadata and must not serve stale claims, availability, prices, credentials, or status beyond an acceptable business window.

HTMX fragments require the same cache-boundary review as full pages.

## 13. Dependency policy

Add a dependency only when it provides measurable value that cannot be maintained more safely with existing platform capabilities.

Each retained frontend dependency must have a documented purpose. Production delivery must not depend on a development server.

A dependency review considers:

- Maintenance and release activity.
- Security posture.
- Bundle or runtime cost.
- Accessibility impact.
- Server-rendering and fallback behavior.
- Removal or replacement strategy.

## 14. Performance and resilience

- Minimize render-blocking assets.
- Use explicit media dimensions.
- Avoid layout shift.
- Lazy-load below-the-fold media where appropriate.
- Keep primary workflows usable under slow or failed JavaScript.
- Avoid requiring a client hydration pass for meaningful public content.
- Define product-specific performance budgets.
- Treat third-party scripts as optional failure domains.
- Preserve readable error and retry behavior under partial failure.

## 15. Search architecture

Public pages provide:

- Semantic HTML.
- Crawlable links.
- Canonical URL control.
- Metadata and meaningful headings.
- Structured-data locations where applicable.
- Indexable content not embedded only in images or client-generated fragments.
- Unique and useful location, service, category, and article pages.
- Correct noindex, redirect, and error behavior.

Thin doorway pages, duplicate location pages, and JavaScript-only primary content are non-compliant.

## 16. Observability and error handling

Unexpected failures should be observable without exposing sensitive details to the user.

Document or implement as appropriate:

- Structured server logs.
- Correlation or request identifiers.
- Error categorization.
- Delivery, integration, or queue failure recording.
- User-safe error messages.
- Retry or recovery paths.
- Audit records for sensitive state changes.

The user-facing response must not reveal stack traces, secrets, raw queries, or server paths.

## 17. Deployment and runtime assumptions

A governed implementation documents:

- Supported runtime and browser baseline.
- Required server extensions and services.
- Build-time versus runtime dependencies.
- Writable storage locations.
- Environment configuration.
- Migration and rollback expectations.
- Cache and queue requirements.

A production application must not require an undocumented development server or local-only build process.

## 18. Exceptions

An exception must document:

- A stable exception identifier.
- The rule being bypassed.
- The reason.
- Affected routes, components, or environments.
- Accessibility, security, search, and performance impact.
- Fallback behavior.
- Responsible owner.
- Expiration or review condition.
- Removal or remediation plan.

Undocumented architectural exceptions are non-compliant.
