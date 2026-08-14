# Resilience Invariant

> **Status:** Binding core-invariant domain  
> **Parent:** [`../README.md`](../README.md)

Resilience requires recoverable behavior under expected failure rather than success-path-only design.

- Define loading, empty, validation, conflict, timeout, rate-limit, dependency-failure, and unexpected-error behavior where applicable.
- Preserve material user work across recoverable failure where security permits.
- Avoid making optional third-party integrations single points of failure for primary content when a practical fallback exists.
- Define request, upload, processing, queue, and resource limits before resource exhaustion.
- Document retry, idempotency, concurrency, and interruption behavior for consequential actions.

[`sustainability.md`](sustainability.md) remains informative unless an adopting project makes named budgets binding.
