# JavaScript Application Technology Profile

> **Status:** WDBASIC technology profile  
> **Reviewed:** 2026-08-14

Use when a richer client runtime materially improves the product and WDBASIC core invariants can still be satisfied.

## Requirements

- Client state must not be the sole source of authorization or privileged business truth.
- Direct URLs, refresh behavior, error recovery, and session expiry must be explicitly defined.
- Public content must document discoverability and rendering behavior for target search engines; server rendering or pre-rendering may be used where beneficial but is not universally mandated by WDBASIC core.
- Accessibility must be tested across route changes, dynamic updates, focus movement, loading, error, and recovery states.
- Cache and offline state must not cross identity, tenant, consent, or privilege boundaries.
- Performance budgets must account for JavaScript parse/execute cost, hydration, third-party code, and interaction latency.
- Security-sensitive validation and authorization remain in trusted server/service boundaries.
- Rich client islands may coexist with server-rendered or static surfaces when that better fits the task.
