# Database Engine Profiles

> **Status:** Vendor-scoped technical references, not universal database rules.
> **Sources:** [Primary vendor manuals](../references/primary-sources.md), [full research](../research/2026-10-23-relational-database-research.md).

| Capability | SQLite | PostgreSQL | MySQL/InnoDB |
| --- | --- | --- | --- |
| Deployment | Embedded file/library | Server/database clients | Server/database clients |
| Typical application topology | One host and limited simultaneous write contention | Multiple hosts and concurrent transactions | Multiple hosts and concurrent transactions |
| Concurrent writes | One writer at a time per DB file | Multiple concurrent transactions | Multiple concurrent transactions |
| Isolation default | Serializable semantics; snapshots in WAL | READ COMMITTED | REPEATABLE READ |
| Foreign keys | Must enable enforcement per connection | Enforced by default | InnoDB FK support |
| Partial indexes | Yes | Yes | No general predicate-index syntax comparable to PostgreSQL |
| Native row-level security | No equivalent native PostgreSQL RLS | Yes, configured policies | No equivalent native PostgreSQL RLS |
| Full-text | FTS5 virtual tables | Native text search + GIN/GiST options | FULLTEXT |
| Triggers | Yes | Yes | Yes |
| Stored SQL procedures | No comparable built-in facility | Procedures/functions | Procedures/functions |
| Schema changes | Transactional rebuild patterns may be required | DDL lock/concurrent-index planning | Online DDL capability varies; many DDL statements implicitly commit |
| Recovery | Online Backup API, consistent snapshots | Logical/physical backups, WAL/PITR | Backups, binary logs/PITR with suitable configuration |

**Do not choose based on user count alone.** Consider simultaneous write volume, number of app servers, remote database access, read/write contention, recovery objectives, team expertise, and real deployment limits. SQLite can be a legitimate production database when architecture fits. A server engine can still be appropriate for a small application with strong HA/PITR or multi-host requirements.

## Engine-specific guides

- [SQLite profile](sqlite.md)
- [PostgreSQL profile](postgresql.md)
- [MySQL/InnoDB profile](mysql.md)

These profiles are not a drop-in SQL compatibility specification. Every adopting project must state engine and version, SQL mode, collation, storage engine and relevant runtime settings.