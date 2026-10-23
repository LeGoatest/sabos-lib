# SQLite Profile

> **Status:** SQLite-specific guidance
> **Source:** [Official SQLite docs](../references/primary-sources.md)

## Good fit

SQLite is a single embedded database engine with no separate database server. Consider it for small/medium single-host websites, local applications, admin tools, embedded use and low-to-moderate write contention. It is not *development only*. A networked, high-write, multi-application-host system often benefits from a server database.

## Connection setup

```sql
PRAGMA foreign_keys = ON;
PRAGMA foreign_keys;
PRAGMA busy_timeout = 5000;
```

Enable foreign keys on **each new connection** outside an open multi-statement transaction. Verify the returned pragma value is 1. Some connection libraries may enable it already; do not assume. `busy_timeout` is a contention policy, not proof the application can sustain unlimited writes.

## WAL

`PRAGMA journal_mode=WAL;` permits concurrent readers while one connection writes. It still allows one simultaneous writer per DB file. WAL is not a supported architecture for multiple machines accessing the same DB over a typical network filesystem. Monitor checkpoints and file growth; plan consistent backups that include in-flight journal state.

## Types and constraints

SQLite uses dynamic typing with type affinity; STRICT tables are available on suitable versions. Model IDs and business values precisely, validate dates/decimal semantics deliberately, and test CHECK/NOT NULL/UNIQUE/FK constraints. `INTEGER PRIMARY KEY` has rowid semantics unless a special table configuration changes them. Composite keys and tenant-scoped uniqueness are viable. Verify collations and comparison semantics, especially case-insensitive tags.

## Index and plan workflow

Use `EXPLAIN QUERY PLAN SELECT ...`. Composite and partial indexes can be effective when query predicates match. Index child-side FKs where deletes/joins warrant them. SQLite FTS5 is a text-search subsystem and not a substitute for normal relational tags.

## Migrations and recovery

SQLite DDL operations can participate in transactions, but some ALTER TABLE transformations require rebuilding a table with explicit data copy, FK checks, index/trigger recreation and validation. Always test a version upgrade on real-shaped data. Use SQLite's online backup API or consistent snapshot procedures, not a naive filesystem copy of an active WAL database.

## Validation questions

- Does each connection enable FK enforcement?
- Do cross-tenant composite FKs actually reject references?
- Is measured write contention within acceptable latency?
- Is one-host WAL use consistent with deployment topology?
- Have backup/restore, busy retries, migration replay and object-storage consistency been tested?

[Executable SQLite example](../../examples/sqlite/README.md).