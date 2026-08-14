# WDBASIC Core Invariants

> **Authority:** Highest WDBASIC domain authority  
> **Parent:** [`../../README.md`](../../README.md)  
> **Router contract:** [`contract.md`](contract.md)

Core invariants define what must remain true regardless of content strategy, CSS framework, rendering model, JavaScript architecture, or application shell.

## Invariant domains

1. [`semantics/`](semantics/README.md) — meaningful structure, controls, forms, components, tokens, authoring, and internationalization.
2. [`accessibility/`](accessibility/README.md) — web, cognitive, media, non-web accessibility, and conformance evidence.
3. [`security-privacy/`](security-privacy/README.md) — security boundaries, privacy, consent, telemetry, authentication, and abuse resistance.
4. [`truthful-content/`](truthful-content/README.md) — claim integrity, proof, AI-assisted content boundaries, and proportional communication.
5. [`http-url-integrity/`](http-url-integrity/README.md) — HTTP methods/status, routing, URL reconstructability, cache boundaries, and representation integrity.
6. [`resilience/`](resilience/README.md) — recoverability, dependency failure, resource limits, retry/concurrency, and sustainability considerations.
7. [`measurable-evidence/`](measurable-evidence/README.md) — standards, testing, validation, evidence, research, positions, and unresolved states.

## Non-compensatory gate model

Each applicable invariant is evaluated as:

```text
PASS | FAIL | UNKNOWN | NOT-APPLICABLE-WITH-RATIONALE
```

A failure or unresolved critical invariant cannot be converted into a pass by strong performance elsewhere.

Technology-specific implementation rules belong under [`../technology-profiles/`](../technology-profiles/README.md). Content strategy belongs under [`../content-strategies/`](../content-strategies/README.md).
