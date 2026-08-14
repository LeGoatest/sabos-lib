# Static / Pre-rendered Technology Profile

> **Status:** WDBASIC technology profile  
> **Reviewed:** 2026-08-14

Use for content that can be generated ahead of request time without losing correctness.

## Requirements

- Build output must preserve semantic HTML, accessibility metadata, canonical behavior, and correct internal links.
- Generated content must have a freshness and invalidation strategy.
- Dynamic forms or actions must use governed server/API boundaries for validation, authorization, CSRF, privacy, and persistence.
- Do not pre-render sensitive or user-specific content into public artifacts.
- Missing routes and redirects must still produce correct hosting/platform behavior.
- Record search/indexability and performance evidence rather than assuming static output is automatically optimal.
