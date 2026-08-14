# Server-Side Rendering Technology Profile

> **Status:** WDBASIC technology profile  
> **Reviewed:** 2026-08-14

Use when the server produces the primary HTML representation for routes or views.

## Requirements

- Preserve correct HTTP status, canonical, locale, and cache behavior.
- Direct requests must reconstruct the intended page without hidden client-only state.
- Authentication, authorization, validation, and persistent business rules stay in trusted server boundaries.
- Hydration or client enhancement must not silently change authoritative outcomes or remove accessibility.
- Public content should remain useful before optional client enhancement where practical.
- Streaming, partial rendering, and edge caching must preserve identity and personalization boundaries.
- Record performance evidence rather than assuming SSR is automatically faster.
