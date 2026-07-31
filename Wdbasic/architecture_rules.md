# WDBASIC Architecture Rules

This document is the highest-authority WDBASIC technical contract.

## 1. Rendering ownership

The server owns:

- Primary page content.
- Routing outcomes.
- Authentication and authorization.
- Business rules and validation.
- Persistent state.
- Canonical component and fragment state.
- Search-indexable content.

Public pages must return meaningful complete HTML before JavaScript executes.

## 2. Progressive enhancement

The baseline path uses normal links, controls, forms, and server responses.

Enhancements may improve continuity or speed but may not remove the baseline path for primary public workflows unless a product constraint is explicitly documented.

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
- Target container.
- Loading state.
- Empty state.
- Error state.
- Success state.
- Focus behavior.
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
- External integrations unavailable through server interaction.

JavaScript must not own:

- Canonical routing.
- Authentication or authorization decisions.
- Persistent business state.
- Primary public content.
- Server validation rules.
- Responsive appearance through generated utility strings.

## 5. Semantic HTML

Use the native element that matches the behavior:

- Links navigate.
- Buttons perform actions.
- Labels identify controls.
- Fieldsets group related controls.
- Headings represent document structure.
- Tables represent tabular data.
- Landmarks identify major page regions.

Do not use generic containers plus ARIA where native HTML provides the required semantics and behavior.

## 6. Component architecture

Major interface elements must be reusable server-side components or fragments with explicit inputs and no hidden global dependency.

Components must preserve semantic HTML and expose relevant state variants. Product-specific wrappers may compose universal components but must not fork shared behavior without a documented reason.

## 7. Routing and history

- Primary navigation uses crawlable anchors.
- Direct requests and browser refreshes must work.
- Unknown paths must return a real `404` response.
- HTMX history changes must preserve valid direct URLs and reconstructable server state.
- Internal implementation endpoints must not be presented as canonical public routes.

## 8. Forms and validation

The server is authoritative for validation.

Client validation may improve feedback but must not replace server validation. Recoverable failures must preserve submitted values and return associated field errors. Complex forms should return an error summary linked to invalid fields.

## 9. Security boundaries

- Never trust role, ownership, price, status, or authorization data supplied by the client.
- Protect state-changing requests against CSRF.
- Escape untrusted output by default.
- Validate uploads by type, size, destination, and authorization.
- Do not expose credentials, filesystem paths, stack traces, or internal identifiers unnecessarily.
- Apply rate limiting and abuse prevention proportionate to the endpoint.
- Keep security decisions server-side.

## 10. Dependency policy

Add a dependency only when it provides measurable value that cannot be maintained more safely with existing platform capabilities.

Each retained frontend dependency must have a documented purpose. Production delivery must not depend on a development server.

## 11. Performance and resilience

- Minimize render-blocking assets.
- Use explicit media dimensions.
- Avoid layout shift.
- Lazy-load below-the-fold media where appropriate.
- Keep primary workflows usable under slow or failed JavaScript.
- Define product-specific performance budgets.

## 12. Search architecture

Public pages must provide semantic HTML, crawlable links, canonical URL control, metadata, meaningful headings, structured-data locations where applicable, and indexable content that is not embedded only in images or client-generated fragments.

## 13. Exceptions

An exception must document:

- The rule being bypassed.
- The reason.
- Affected routes or components.
- Accessibility and security impact.
- Fallback behavior.
- Expiration or review condition.

Undocumented architectural exceptions are non-compliant.
