# PostgreSQL Profile

> **Status:** PostgreSQL-specific guidance
> **Source:** [Official PostgreSQL docs](../references/primary-sources.md)
> **Version:** Project must pin a supported server version; `current` documentation changes.

## Strengths

PostgreSQL supports concurrent transactions, MVCC, extensive constraint and index machinery, JSONB where justified, server-side procedures/functions, row-level security, robust SQL semantics and advanced backup/recovery architectures. None of these features eliminates the need for well-formed relationships or workload testing.

## Logical design

Use primary keys, foreign keys, CHECK, NOT NULL, UNIQUE and explicit delete actions. For tenancy, composite foreign keys can enforce same-tenant references; `UNIQUE (tenant_id, entity_id)` permits this even when `entity_id` already has a surrogate PK. Carefully evaluate whether DEFERRABLE constraints are appropriate for cyclic/bulk workflows; deferral can shift failure to COMMIT.

## Row-level security

```sql
-- Illustration only: test role and session-context security before adoption.
ALTER TABLE tenant_photos ENABLE ROW LEVEL SECURITY;
CREATE POLICY tenant_select ON tenant_photos
  FOR SELECT USING (tenant_id = current_setting('app.tenant_id', true)::bigint);
```

The example is **not** a complete security implementation. Session context must be set by a trusted layer, sanitized on pooled connections, and never freely user-controlled. Table owners, privileged roles, policy composition and security-definer code may alter/bypass expected behavior. Verify under actual runtime DB roles.

## Index families and plans

The optimizer supports B-tree, hash, GiST, SP-GiST, GIN, BRIN and expression/partial indexes; covering payload columns may use `INCLUDE`. Choose based on actual operators/selectivity and use `EXPLAIN (ANALYZE, BUFFERS)` in a safe representative environment. `CREATE INDEX CONCURRENTLY` reduces write blocking for some workloads but has restrictions, including inability to run inside an ordinary transaction block.

## Transactions

Default isolation is READ COMMITTED. REPEATABLE READ and SERIALIZABLE change anomaly/retry behavior. Design business invariants around actual conflict patterns; retry serialization failures safely and do not assume a successful read guarantees a later write remains valid.

## Operations

Production plans should cover client TLS/authentication, least-privilege roles, connection pooling, migration-time DDL locks, statistics/autovacuum, storage growth, WAL archiving, tested backups and point-in-time recovery if RPO/RTO demand it.

## Pitfalls

RLS does not excuse missing application authorization; JSONB is not a replacement for strongly related transactional records; indexes have write costs; long-running transactions can impede cleanup; `EXPLAIN ANALYZE` executes statements.

[Primary sources](../references/primary-sources.md).