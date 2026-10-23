# Capability Operations

> **Status:** Informative design pattern, not an installed registry or granted capability.

An operation is a **semantic command or query** published by a responsible capability. A project may name operations with `<capability>.<resource>.<action>`; these identifiers are **internal protocol vocabulary**. They are **not** URLs, route names, RBAC permissions, access tokens or callable functions by definition.

```text
content.revision.list
content.revision.read
content.revision.publish
media.asset.share
account.preference.update
```

These names are *illustrations*, not a required inventory or declarations of existing operations. Prefer stable domain terms and precise verbs. Avoid a catch-all `operation.execute` or turning every private helper method into a published action.

## Describe each operation

| Dimension | Questions the contract answers |
| --- | --- |
| Owner and status | Which capability is accountable? Is this proposed, implemented, validated or deployed? |
| Kind and intent | Is this a read/query or command? What does success mean? |
| Input | Typed request/data shape, validation, resource identifiers and trusted context. |
| Output | Safe projection/DTO, status, asynchronous receipt or no-result outcome. |
| Errors | Invalid input, unauthenticated, forbidden, not found, conflict, transient unavailable, terminal failure. |
| Authorization | Which server-side actor + action + resource + tenant policy is evaluated? |
| Confidentiality | Which fields are masked, returned, withheld, or never accessible? |
| Invariants | What must remain true before and after a write? |
| Execution | Transaction, concurrency/version check, idempotency, retries and side effects as applicable. |
| Integration | Events, queues, outbox and compatibility/version rules when present. |
| Observability | Sanitized audit fields, correlation IDs, retention and failure visibility. |

Not every simple operation needs all these fields. Define the smallest real consumer-facing contract that is unambiguous.

## Role-aware workflows

A user-facing workflow may provide status views, approved edits, tests, monitoring, history or selective actions. Describe *who may attempt each activity*, the conceptual operations used, user confirmations, and success/denial/failure behavior. UI visibility does **not** grant authorization; every protected operation must enforce server-side actor/resource/tenant checks. Use trusted server-side membership/scope, not caller-supplied tenant IDs alone.

## Critical boundaries

- Prefer narrow commands and read projections instead of exposing arbitrary provider calls or a generic operation-dispatch proxy.
- Describe what a consumer **cannot** access: private tables, credentials/tokens, unrestricted internals, sensitive raw payloads or unauthorized records.
- A query should not silently mutate the represented business resource; an access audit may still be produced.
- A command owns its invariants and declared transaction; retries of non-idempotent side effects require deliberate handling.
- Emitted events describe facts, not authorizations or a guarantee of exactly-once delivery.
- HTML, APIs, CLI, admin screens and background jobs may adapt into the **same owned use case** without inheriting privileged access automatically.
- Do not confuse an architecture-spec operation with proof that a method, adapter, queue or endpoint exists.

See [contract boundaries](contracts-and-boundaries.md) and [profile format](operation-profile.md).
