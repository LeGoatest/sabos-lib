# MySQL / InnoDB Profile

> **Status:** MySQL 8.4-oriented engine guidance
> **Source:** [MySQL 8.4 documentation](../references/primary-sources.md)

## Deployment and engine identity

MySQL is a client/server RDBMS; InnoDB supplies transactional behavior, foreign keys and row/index-level locking. Verify table storage engines—do not infer all MySQL tables have InnoDB semantics. MariaDB is not implicitly identical and needs separate version evidence.

## Integrity

Define PRIMARY KEY, explicit foreign keys and composite UNIQUE constraints. Many-to-many junctions usually use a composite PK or scoped unique key. InnoDB automatically requires/uses indexes appropriate to FK enforcement; inspect actual schema rather than relying on portability assumptions. CHECK constraints are enforced in modern MySQL versions; verify target versions and SQL modes. Collations determine case/accent comparison semantics and can change tag uniqueness behavior.

## Transaction behavior

InnoDB defaults to REPEATABLE READ, unlike PostgreSQL's READ COMMITTED default. Snapshot reads, locking reads and gap/next-key locks may differ, especially under range predicates. Determine when `SELECT ... FOR UPDATE` is required and test conflicting updates. Handle deadlock retries with bounded and idempotent transaction boundaries.

## Index and search behavior

InnoDB clusters data around the primary key. Composite B-tree indexes primarily benefit queries matching useful leading columns; covering indexes can avoid additional lookups. Use `EXPLAIN` / `EXPLAIN ANALYZE` on representative datasets. FULLTEXT indexing has its own tokenization and engine support; normalized relational tags remain separate.

## Migrations and DDL

MySQL DDL often causes an **implicit commit** even where atomic DDL protects metadata consistency. 'Online' or 'instant' operations depend on exact statement, column position, engine, index, version and server configuration. Do not wrap a large schema change in a transaction and assume it can be rolled back. Review metadata locks, replication/binlogs and backfill time.

## Triggers/routines

Both exist, but syntax, execution granularity, privilege context and restrictions differ from PostgreSQL and SQLite. Avoid hidden chains. Audit stored program `DEFINER` context and version-specific privileges when migrating.

## Recovery and security

Choose backup and binary-log recovery appropriate to RPO/RTO. Test restores and external-file consistency. Use restricted runtime credentials, TLS over remote DB connections and separate administrative/migration authority.

## Review checklist

Confirm engine, version, SQL mode, charset/collation, FK behavior, transaction isolation, indexes, DDL capability, backup/restore, operational concurrency and slow-query visibility. [MySQL vendor docs](../references/primary-sources.md).