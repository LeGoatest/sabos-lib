# HTTP and URL Integrity Invariant

> **Status:** Binding core-invariant domain  
> **Parent:** [`../README.md`](../README.md)  
> **Technical contract:** [`architecture-rules.md`](architecture-rules.md)

This domain requires accurate transport, routing, URL, and cache semantics.

- Use HTTP methods and status codes that match actual outcomes.
- Safe methods must not cause material state changes.
- Unknown routes return real not-found outcomes rather than false `200` pages.
- Direct requests, refreshes, and shareable URLs resolve coherently for the selected architecture.
- Redirect, canonical, locale, query, case, and trailing-slash behavior is documented where material.
- Caching must not cross identity, authorization, tenant, locale, consent, CSRF, or personalization boundaries.

HTMX-specific history/cache behavior belongs to [`../../technology-profiles/htmx-hypermedia.md`](../../technology-profiles/htmx-hypermedia.md), not this universal invariant.
