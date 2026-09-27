# HTMX 4 Review — 2026-09-27

> **Status:** Research/evidence record; non-normative by itself  
> **Reviewed:** 2026-09-27  
> **Applied to:** [`../../../technology-profiles/htmx-hypermedia.md`](../../../technology-profiles/htmx-hypermedia.md)

## Research question

What changed or became clearer in HTMX 4 that should materially affect WDBASIC's HTMX/hypermedia technology profile?

## Sources

### Secondary source

Serdar Yegulalp, “Get started with htmx 4 — dynamic web pages without JavaScript,” *InfoWorld*, published 2026-09-23:

<https://www.infoworld.com/article/4221778/get-started-with-htmx-4.html>

The article highlights declarative `hx-*` interactions, explicit targeting and swapping, loading indicators, flexible triggers, `hx-boost`, streaming extensions, JavaScript interoperability, manual processing through `htmx.process()`, and the HTML-fragment-vs-JSON integration boundary.

### Primary/vendor sources used for verification

- HTMX 4 documentation: <https://four.htmx.org/docs>
- HTMX 4 reference: <https://four.htmx.org/reference>
- HTMX 4 release announcement: <https://four.htmx.org/announcements/2026-08-28-htmx-4.0.0-is-released>
- `hx-boost`: <https://four.htmx.org/reference/attributes/hx-boost>
- `hx-indicator`: <https://four.htmx.org/reference/attributes/hx-indicator>
- `hx-swap`: <https://four.htmx.org/reference/attributes/hx-swap/>
- `htmx.process()`: <https://four.htmx.org/reference/methods>
- history restoration: <https://four.htmx.org/reference/attributes/hx-history-elt>

## Findings

### 1. HTMX 4 keeps the hypermedia model intact

The article's central framing remains consistent with WDBASIC's existing position: HTMX can add networked interaction through markup while the server remains authoritative and returns HTML representations.

**WDBASIC impact:** reinforces the existing technology-profile classification; does not justify making HTMX a universal requirement.

### 2. HTMX 4 uses explicit attribute inheritance

HTMX 4 no longer relies on HTMX 2's default implicit inheritance. Inherited behavior is explicitly marked with forms such as `hx-boost:inherited`.

**WDBASIC impact:** the profile now warns against carrying HTMX 2 inheritance assumptions into HTMX 4 implementations.

### 3. The existing WDBASIC history section was stale for HTMX 4

The prior profile stated that HTMX may store history snapshots in `localStorage` and recommended controls based on that default. That describes HTMX 2-era behavior, not HTMX 4's default.

HTMX 4 re-fetches prior URLs during history restoration. If `hx-history-elt` is present, the matching element is restored; otherwise HTMX restores into the body. The optional `hx-history-cache` extension restores local snapshot behavior using `sessionStorage`.

**WDBASIC impact:** corrected as a substantive version-specific fix. Sensitive-DOM guidance now applies specifically when local history caching is opted into rather than being presented as the default.

### 4. `hx-boost` is a strong progressive-enhancement mechanism

HTMX 4's `hx-boost` enhances ordinary links/forms while preserving native `href`, `action`, and `method` behavior when HTMX is unavailable.

**WDBASIC impact:** promoted within the HTMX profile as a preferred progressive-navigation option where it fits, while retaining direct-load, history, focus, redirect, and state-reset testing requirements.

### 5. Target, swap, trigger, and loading state should be treated as one interaction contract

The article demonstrates that HTMX interactions are composed from request, target, swap, trigger, and indicator behavior rather than from a single attribute.

**WDBASIC impact:** the profile now requires these concerns to be made explicit for non-trivial interactions and ties them to focus, announcements, errors, and server-side state rules.

### 6. HTMX 4 swaps most `4xx` and `5xx` responses by default

Official HTMX 4 documentation states that responses other than `204` and `304` are generally swapped by default, including error-status responses.

**WDBASIC impact:** the profile now requires deliberate error-fragment design so generic error documents are not accidentally inserted into component targets.

### 7. HTML remains the preferred browser-facing response shape

The article notes that HTMX expects HTML fragments rather than JSON by default. Existing JSON APIs can be integrated, but doing so requires additional client-side handling.

**WDBASIC impact:** the profile now prefers server-side presentation/adaptation endpoints for HTMX consumers and treats browser-side JSON interception as an explicit exception rather than the default architecture.

### 8. Manual DOM insertion is a distinct integration boundary

Content inserted through normal HTMX swaps is processed by HTMX. Content inserted manually through another DOM/fetch path must be processed with `htmx.process()` if HTMX attributes in that content should become active.

**WDBASIC impact:** the profile now requires explicit DOM ownership when mixing HTMX with custom JavaScript or other rendering paths.

### 9. Streaming and extensions expand capability but also dependency surface

HTMX 4 exposes/core-publishes extensions for SSE, WebSockets, multipart streaming, history caching, downloads, browser indicators, CSP support, and other behaviors.

**WDBASIC impact:** extensions remain opt-in and must be justified, bounded, and reviewed for security, privacy, accessibility, recovery, and resource implications.

## Source-boundary note

The InfoWorld article is a secondary instructional source. Exact HTMX 4 behavior was verified against HTMX's current official documentation before changing the binding technology profile. Where the prior WDBASIC profile conflicted with HTMX 4's current documented history model, the primary HTMX documentation controlled the technical correction.

## Result

This review produced a governed update to the HTMX technology profile. It did **not** change WDBASIC core invariants, make HTMX mandatory, or promote the article itself into binding authority.
