# HTMX / Hypermedia Technology Profile

> **Status:** WDBASIC technology profile  
> **Reviewed:** 2026-08-14  
> **Core dependency:** [`../core-invariants.md`](../core-invariants.md)

HTMX remains a preferred WDBASIC interaction profile when server-owned hypermedia fits the product. It is not a universal WDBASIC requirement.

## 1. Applicability

Use this profile when:

- server-generated HTML fragments are a natural representation of interaction outcomes;
- direct URLs and normal HTTP semantics remain valuable;
- the server can remain authoritative for business state;
- the interaction model does not require a richer client runtime than hypermedia can reasonably provide.

Do not force HTMX where a richer client-side application model materially improves the product and can still satisfy WDBASIC core invariants.

## 2. Full-page and fragment representations

When one URL may return either a full page or an HTMX fragment:

- representation selection must be explicit;
- caches must not confuse the two representations;
- responses varying on the `HX-Request` request header must emit an appropriate `Vary: HX-Request` response header unless separate non-conflicting URLs or an equivalent cache-safe strategy is used;
- intermediate/CDN/reverse-proxy behavior must be tested, not assumed.

## 3. History and direct-load integrity

- Every URL pushed or replaced into browser history must be directly loadable and reconstruct the intended full page/state.
- The server must not require hidden client-only history state to render a valid direct request.
- If fragment selection depends on `HX-Request`, history restoration must not accidentally request a fragment where a full representation is required.
- Review `htmx.config.historyRestoreAsHxRequest`; when `HX-Request` controls full-page versus fragment output, disabling history restore as an HTMX request is generally the safer default unless the implementation proves correct behavior otherwise.

## 4. HTMX history cache and sensitive DOM

HTMX may store history snapshots in browser `localStorage`.

Therefore:

- pages containing sensitive DOM, private records, tokens, protected messages, or material user-specific content must assess history-snapshot exposure;
- use `hx-history="false"` or an equivalent deliberate strategy when the page must not be saved to the HTMX history cache;
- do not assume server cache controls alone govern HTMX's browser-side history snapshot storage;
- test back/forward restoration with authenticated, expired-session, logout, and privilege-change scenarios.

## 5. Script execution and CSP

Fragment processing must have an explicit script policy.

- Do not rely on dynamically returned scripts as an undeclared application architecture.
- Review HTMX script evaluation behavior and configure it consistently with Content Security Policy.
- Prefer static registered client behavior or controlled modules over injecting executable scripts through arbitrary fragments.
- Never allow untrusted fragment content to become executable script.

## 6. Forms and state changes

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

An `HX-Request` header is not authorization evidence.

## 7. Focus, announcements, and fragment semantics

Every swap defines:

- target and swap strategy;
- focus preservation or movement;
- announcement behavior where status changes require it;
- error/validation behavior;
- empty/loading/pending/conflict/rate-limit/success states;
- language and direction inheritance;
- IDs and relationships that remain valid after replacement.

## 8. Cache boundary checklist

For each HTMX endpoint record:

```yaml
htmx:
  url:
  method:
  full_page_representation: true | false
  fragment_representation: true | false
  varies_on_hx_request: true | false
  vary_header:
  cache_control:
  personalized: true | false
  history_enabled: true | false
  history_sensitive: true | false
  hx_history_false: true | false
  direct_load_tested: true | false
  history_restore_tested: true | false
  script_policy:
  csp_impact:
```

## 9. Progressive enhancement

Normal links/forms remain the preferred baseline for public and high-value workflows when practical. A product may deliberately use an HTMX-dependent path when the baseline would materially degrade the required experience, but that decision must document accessibility, resilience, direct-load, recovery, and support implications.

This profile follows HTMX's own pragmatic boundary: hypermedia is preferred where it fits; richer client-side islands or another architecture are acceptable where they fit better.
