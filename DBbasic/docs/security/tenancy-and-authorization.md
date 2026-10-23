# Multiuser Security, Tenancy, and Authorization

> **Status:** Implementation guidance; not an adopted application's policy
> **Evidence:** [Research](../research/2026-10-23-relational-database-research.md), [OWASP and engine documentation](../references/primary-sources.md)

**Referential integrity is not access control.** Foreign keys prevent invalid references; they do not decide whether a principal is permitted to read, download, search, mutate, export or share a resource.

## Tenancy models

| Strategy | Benefits | Risks and tradeoffs |
| --- | --- | --- |
| Shared tables, tenant discriminator | Simple provisioning; less operational overhead | Every read/write path must scope correctly, including joins and background jobs |
| Separate schema per tenant | Some separation of ownership and migration operations | Engine variability and migration fan-out |
| Separate database per tenant | Stronger operational isolation boundaries | Provisioning, credentials, pooling, backups and migrations multiply |

Choose based on privacy/compliance requirements, scale, blast radius, isolation proof and operating cost—not by registered-user count alone.

## Shared-schema controls

1. Every tenant-owned row has an unambiguous organization/tenant identity. Make tenant-scoped uniqueness explicit.
2. Use composite tenant-aware foreign keys when a child must reference a parent in the **same** tenant.
3. Authorize the actor separately using current membership and capabilities. Client-provided tenant IDs are not trusted.
4. Scope detail/list/search/export/attachment/queued job endpoints and reporting/aggregate queries. Deny across-tenant access deliberately in tests.
5. Include tenant, permission version and access scope in cache keys and signed media grants as needed.
6. Sharing requires sender authorization, recipient validation, expiry/revocation semantics and a server-enforced grant.
7. Distinguish deleting a file on a local device from deleting the server-owned object; these are separate capabilities and operations.
8. Separate least-privilege runtime and migration database credentials where the platform supports it.

## PostgreSQL row-level security

RLS provides policy-based database-side row filtering when enabled and correctly designed. It does not automatically solve privilege bypass, table-owner access, SECURITY DEFINER paths, background tasks or connection-pool session-context leakage. Test the real application role against cross-tenant rows. SQLite and MySQL/InnoDB cannot be presented as having identical native RLS guarantees.

## Injection and credential hygiene

Bind **values** through prepared statements or safe ORM parameterization. If table/column/order direction is dynamic, use an allow-list, not string interpolation from the request. Never use DB superuser/root credentials in normal app requests. Restrict network exposure, protect secrets, use TLS for remote access, and minimize sensitive data in query logs.

## Test matrix

Cover own-member read, same-tenant authorized sharing, unrelated member within tenant, other tenant, revoked member, expired link, background job with stale scope, direct object download, aggregate result, and administrative bypass paths. Every denied path needs a direct negative test, not just a hidden UI element.

## Privacy and audit

Avoid storing unnecessary personal, device and media metadata. A logging system should capture useful provenance without passwords/tokens or inappropriate file contents. Audit data and backups inherit sensitivity and require independent access controls.