# HTMX / Hypermedia Technology Profile

> **Status:** WDBASIC technology profile  
> **Reviewed:** 2026-09-27  
> **Version scope:** HTMX 4.x  
> **Core dependency:** [`../core-invariants/README.md`](../core-invariants/README.md)  
> **Evidence note:** [`../core-invariants/measurable-evidence/research/htmx-4-review-2026-09-27.md`](../core-invariants/measurable-evidence/research/htmx-4-review-2026-09-27.md)

HTMX remains a preferred WDBASIC interaction profile when server-owned hypermedia fits the product. It is not a universal WDBASIC requirement.

## 1. Applicability

Use this profile when:

- server-generated HTML fragments are a natural representation of interaction outcomes;
- direct URLs and normal HTTP semantics remain valuable;
- the server can remain authoritative for business state;
- the interaction model does not require a richer client runtime than hypermedia can reasonably provide.

Do not force HTMX where a richer client-side application model materially improves the product and can still satisfy WDBASIC core invariants.

## 2. HTMX 4 baseline

HTMX 4 is declarative, but it still executes browser-side requests and DOM updates. WDBASIC therefore treats `hx-*` markup as an interaction contract rather than as decoration.

For each non-trivial HTMX interaction, make the following explicit where applicable:

- request method and URL;
- trigger;
- target;
- swap strategy;
- loading/pending feedback;
- success, validation, empty, conflict, rate-limit, and error behavior;
- history/URL behavior;
- focus and announcement behavior;
- server-side authorization and state rules.

HTMX 4 uses explicit attribute inheritance. Parent-level behavior intended for descendants must use the HTMX 4 inheritance form such as `hx-boost:inherited`, `hx-target:inherited`, or another applicable `:inherited` attribute. Do not assume HTMX 2 implicit inheritance.

## 3. HTML-first response contract

HTMX expects HTML responses by default. Prefer endpoints that return the fragment or full-page representation the browser actually needs rather than forcing a JSON-first API shape into the interaction layer.

When an existing JSON API must be reused:

- prefer a server-side adapter or presentation endpoint that converts application data into HTML;
- keep validation, authorization, and business rules on the server;
- treat client-side JSON interception/parsing as an explicit integration exception rather than the default HTMX architecture;
- document why the exception is preferable to a normal hypermedia response.

This does not prohibit JSON APIs for other consumers. It defines the preferred browser-facing contract for the HTMX profile.

## 4. Full-page and fragment representations

When one URL may return either a full page or an HTMX fragment:

- representation selection must be explicit;
- caches must not confuse the representations;
- every request header used to select a representation must be reflected in `Vary` unless separate non-conflicting URLs or an equivalent cache-safe strategy is used;
- common HTMX 4 selectors include `HX-Request`, `HX-Request-Type`, `HX-Boosted`, and `HX-History-Restore-Request` depending on the design;
- intermediate/CDN/reverse-proxy behavior must be tested, not assumed.

Do not emit `Vary` mechanically for headers that do not affect representation selection. The rule is representation integrity, not header accumulation.

## 5. Targets and swaps

The response boundary must be deliberate.

- Use `hx-target` or an equivalent HTMX 4 targeting mechanism to identify the DOM region owned by the interaction.
- Select `hx-swap` according to the semantic replacement required rather than accepting a default accidentally.
- Replacing a container with `outerHTML`/`outerSync` changes ownership of IDs, listeners, focus, and local state; validate those consequences.
- Incremental insertion such as append/prepend must preserve list semantics, ordering, duplicate prevention, and pagination/cursor integrity.
- Morphing or advanced swap modes do not waive accessibility, state, or DOM-integrity requirements.

Each swap must leave valid IDs, labels, relationships, language/direction context, and focus behavior.

## 6. Loading and pending feedback

Asynchronous requests that are not effectively instantaneous should expose perceivable pending feedback.

- `hx-indicator` and HTMX request-state classes are acceptable mechanisms.
- Indicators must not be the only protection against duplicate or conflicting submissions when the server requires stronger concurrency/idempotency controls.
- Avoid spinner flicker for very fast requests when delayed visual feedback provides a steadier experience.
- Loading indicators must remain accessible; decorative imagery should not create noisy or misleading announcements.
- Long-running operations should expose meaningful status rather than an indefinite spinner when the product can provide better information.

## 7. Triggers, throttling, and request coordination

`hx-trigger` may delay, throttle, poll, fire once, react to viewport entry, or listen to other events. Use these features only when the resulting request behavior remains understandable and bounded.

- Search-as-you-type and similar high-frequency interactions should use appropriate delay/throttle behavior and server-side rate controls.
- Polling must have an explicit stop condition or justified lifetime.
- Destructive actions must not rely on an unusual trigger gesture as their only safety control.
- Request ordering/concurrency that matters to correctness must be handled explicitly; do not assume event timing alone prevents races.
- HTMX 4 request coordination should use current HTMX 4 mechanisms rather than removed HTMX 2 trigger-queue syntax.

## 8. `hx-boost` and progressive navigation

`hx-boost` is a strong progressive-enhancement option because ordinary links and forms keep their native browser behavior when JavaScript/HTMX is unavailable.

Use it deliberately:

- preserve valid `href`, `action`, and `method` attributes;
- ensure every boosted navigation target is directly loadable as a normal page;
- use `hx-boost:inherited` when enabling boost behavior from an ancestor in HTMX 4;
- verify redirect, title, focus, scroll, and history behavior;
- selectively disable boosting where downloads, external navigation, special targets, authentication boundaries, or other browser-native behavior should remain untouched;
- do not assume a boosted transition resets client-side state in the same way as a full document load.

For application-wide boosting, test back/forward navigation, logout/session expiry, active navigation state, page titles, preserved elements, and third-party scripts as first-class acceptance cases.

## 9. History and direct-load integrity

HTMX 4 changed the default history model.

- HTMX 4 does **not** cache page snapshots in `localStorage` by default.
- Core history restoration re-fetches the prior URL and swaps the returned page into `<body>` or into the element marked with `hx-history-elt`.
- Servers that return fragments for ordinary HTMX requests must recognize history restoration and return a full representation containing the expected history element when required.
- `HX-History-Restore-Request` must not trigger analytics, writes, or other side effects that are inappropriate for restoration.
- Every URL pushed or replaced into browser history must be directly loadable and reconstruct the intended full page/state.
- The server must not require hidden client-only history state to render a valid direct request.

HTMX 4 exposes history behavior through current configuration such as `htmx.config.history`. Do not carry forward removed HTMX 2 mechanisms such as `hx-history` or obsolete history-cache assumptions.

## 10. Optional history cache and sensitive DOM

The optional HTMX 4 `hx-history-cache` extension restores local snapshot behavior using `sessionStorage`.

If a project opts into that extension:

- treat browser-stored DOM as a privacy/security decision;
- assess whether private records, tokens, protected messages, or material user-specific content may be captured;
- define logout, session-expiry, and privilege-change behavior;
- test back/forward restoration after sensitive state changes;
- document why local history caching is needed instead of the HTMX 4 re-fetch default.

Do not describe browser-side history caching as a default HTMX 4 behavior.

## 11. HTTP status and error-fragment behavior

HTMX 4 swaps most HTTP responses by default, including `4xx` and `5xx`; `204` and `304` are not swapped by default.

Therefore:

- validation and error responses must be intentionally renderable for the selected target;
- do not allow a full generic server error document to be accidentally inserted into a small component target;
- preserve meaningful HTTP status codes unless a documented integration constraint requires otherwise;
- ensure form errors remain associated with fields and provide an accessible summary where required;
- define whether a server-side error replaces, appends to, or leaves the current interaction region unchanged;
- use current HTMX 4 error/event semantics when custom handling is required.

## 12. Script execution, CSP, and extensions

Fragment processing must have an explicit script policy.

- Do not rely on dynamically returned scripts as an undeclared application architecture.
- Review HTMX script evaluation behavior and configure it consistently with Content Security Policy.
- Prefer static registered client behavior or controlled modules over injecting executable scripts through arbitrary fragments.
- Never allow untrusted fragment content to become executable script.
- Load only extensions the product actually uses; an extension bundle is still dependency surface.
- Record extension-specific security, privacy, accessibility, browser-support, and failure implications when material.

HTMX 4 includes/core-publishes extensions such as SSE, WebSocket, multipart streaming, history cache, browser indicators, downloads, CSP integration, and others. Their availability does not make them automatically appropriate for every WDBASIC implementation.

## 13. Streaming responses

SSE, WebSocket, and multipart streaming are valid HTMX 4 options when incremental server output materially improves the product.

For streaming interactions:

- document connection lifetime and reconnect behavior;
- authenticate and authorize the stream just as rigorously as ordinary requests;
- bound resource consumption;
- define ordering, duplicate, stale-message, and disconnect behavior;
- preserve semantic DOM updates and accessible announcements;
- provide recovery when the stream or extension fails;
- do not use streaming where a normal request is simpler and equally effective.

## 14. JavaScript interop and manual DOM insertion

Custom JavaScript remains acceptable where HTMX attributes are insufficient.

- Use current HTMX 4 event names and APIs.
- Keep client-side state ownership explicit so HTMX swaps do not silently invalidate it.
- Content inserted through HTMX is processed by HTMX as part of normal insertion.
- Content inserted manually through another DOM/fetch pipeline is not automatically an HTMX interaction boundary; call `htmx.process()` when that manually inserted content must activate HTMX attributes.
- Prefer one clear DOM ownership path over mixing raw `fetch()`, manual insertion, HTMX swaps, and framework rendering in the same region without an explicit integration contract.

## 15. Forms and state changes

HTMX requests follow the same rules as full-page requests for:

- authentication;
- authorization;
- CSRF;
- explicit field allowlists;
- validation;
- business rules;
- concurrency and idempotency;
- rate limiting;
- uploads;
- audit/logging;
- privacy and retention.

An HTMX request header is not authorization evidence.

## 16. Focus, announcements, and fragment semantics

Every swap defines:

- target and swap strategy;
- focus preservation or movement;
- announcement behavior where status changes require it;
- error/validation behavior;
- empty/loading/pending/conflict/rate-limit/success states;
- language and direction inheritance;
- IDs and relationships that remain valid after replacement.

## 17. Cache and interaction checklist

For each HTMX endpoint record:

```yaml
htmx:
  version: "4.x"
  url:
  method:
  trigger:
  full_page_representation: true | false
  fragment_representation: true | false
  representation_headers: []
  vary_header:
  cache_control:
  personalized: true | false
  target:
  swap:
  indicator:
  history_mode: refetch | reload | disabled | history-cache-extension
  history_element:
  history_sensitive: true | false
  direct_load_tested: true | false
  history_restore_tested: true | false
  boosted: true | false
  error_fragment_tested: true | false
  focus_behavior:
  announcement_behavior:
  script_policy:
  extensions: []
  csp_impact:
```

## 18. Progressive enhancement

Normal links/forms remain the preferred baseline for public and high-value workflows when practical. `hx-boost` is particularly compatible with this model because semantic links/forms retain normal behavior without HTMX.

A product may deliberately use an HTMX-dependent path when the baseline would materially degrade the required experience, but that decision must document accessibility, resilience, direct-load, recovery, and support implications.

This profile follows HTMX's own pragmatic boundary: hypermedia is preferred where it fits; richer client-side islands or another architecture are acceptable where they fit better.

## Sources

Primary implementation references:

- HTMX 4 documentation: <https://four.htmx.org/docs>
- HTMX 4 reference: <https://four.htmx.org/reference>
- HTMX 4 release announcement: <https://four.htmx.org/announcements/2026-08-28-htmx-4.0.0-is-released>

Secondary review source that prompted this update:

- Serdar Yegulalp, “Get started with htmx 4 — dynamic web pages without JavaScript,” *InfoWorld*, 2026-09-23: <https://www.infoworld.com/article/4221778/get-started-with-htmx-4.html>
