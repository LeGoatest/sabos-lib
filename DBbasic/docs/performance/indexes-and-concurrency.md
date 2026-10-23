# Indexing, Query Plans, Transactions, and Concurrency

> **Status:** Research-informed practitioner guidance
> **Evidence:** [Research](../research/2026-10-23-relational-database-research.md), [engine references](../references/primary-sources.md)

## Query-driven indexing

Collect actual access patterns: `WHERE` equality/range predicates, join keys, `ORDER BY`, `GROUP BY`, pagination and data cardinality. Composite index prefix behavior varies by optimizer and engine; a useful index for `(organization_id, captured_at)` does not imply efficient support for arbitrary queries on `captured_at` alone.

Usually index frequent child-side foreign keys and joins, but check for index overlap and engine-created indexes. A covering/partial/GIN/FTS index requires engine-specific validation. Every index consumes disk and writes; record query, representative data, pre/post execution plan, latency under load and removal criterion.

## Plan inspection

| Engine | Primary diagnostic |
| --- | --- |
| SQLite | `EXPLAIN QUERY PLAN` |
| PostgreSQL | `EXPLAIN`, `EXPLAIN ANALYZE` |
| MySQL/InnoDB | `EXPLAIN`, `EXPLAIN ANALYZE` (where supported) |

Statistics and database size affect plan choice. **EXPLAIN ANALYZE executes the statement**; for data-modification statements it is not a harmless read. Do not compare tiny demo plans with production without qualification.

## Transaction boundaries

A transaction should cover an atomic business invariant: create photo plus related metadata; record share plus audit event; or update concurrent state. It should not span HTTP request lifetime, external web calls, or user interactions. Return explicit success only after commit. For expected deadlocks, serialization conflicts, or SQLITE_BUSY conditions, use bounded retries of idempotent units with stable request IDs where duplication matters.

## Isolation differences

- SQLite supports serializable transaction behavior with a single writer at a time per file. WAL permits readers alongside the writer, but not many writers.
- PostgreSQL defaults to READ COMMITTED and has MVCC and configurable stronger levels.
- InnoDB defaults to REPEATABLE READ; locking and phantom/predicate behavior need actual engine/version verification.

A label like "serializable" is not enough to predict all application-level behavior without testing the actual read/write pattern and retry handling.

## Search vs relationships

Full-text indexes accelerate linguistic retrieval. They do not prove tag membership, authorize sharing or enforce cross-table invariants. Treat a search index as a derived projection with refresh, deletion and rebuild rules.

## Monitoring

Record percentile query latency, error and timeout rates, deadlock/lock wait/busy retry counts, DB and index size, cache hit/refresh, connections and pool saturation, read-replica lag where applicable, WAL/binlog growth and schema migration performance. Review regressions against releases and data growth.

## Growth guidance

Before sharding, test index design, pagination, archival/retention, query batching, connection pools, caching correctness and data lifecycle. Denormalization/partitioning/replication introduce new consistency and operational costs.