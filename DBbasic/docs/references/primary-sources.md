# Primary Sources and Evidence Catalog

> **Status:** Informative reference index
> **Compiled:** 2026-10-23
> **Origin:** [Completed DBbasic research](../research/2026-10-23-relational-database-research.md)

## Authority and limits

An original vendor manual governs the stated engine/version, **not** every SQL implementation. Peer-reviewed papers establish research findings under their assumptions; they are not product requirements. Google Scholar is a *discovery service*, not a substitute for reading an original paper. Versioned project specifications and tested engine behavior take priority over an unqualified recommendation in this catalog.

## Relational theory and concurrency research

| Original work | Contribution |
| --- | --- |
| [Codd, A Relational Model of Data for Large Shared Data Banks (1970)](https://dl.acm.org/doi/10.1145/362384.362685) | Relations, logical data independence |
| [Fagin, Multivalued Dependencies and a New Normal Form (1977)](https://dl.acm.org/doi/10.1145/320557.320571) | Fourth normal form and multivalued dependencies |
| [Kent, A Simple Guide to Five Normal Forms (1983)](https://dl.acm.org/doi/10.1145/358024.358054) | Practical progression of normalization |
| [Berenson et al., A Critique of ANSI SQL Isolation Levels (1995)](https://dl.acm.org/doi/10.1145/223784.223785) | Transaction anomalies and isolation terminology |
| [Cahill et al., Serializable Isolation for Snapshot Databases (2008)](https://dl.acm.org/doi/10.1145/1376616.1376690) | Serializable snapshot isolation |
| [Google Scholar](https://scholar.google.com/) | Literature discovery, not independent primary evidence |

## SQLite — official engine documentation

- [When to use SQLite](https://sqlite.org/whentouse.html): embedded deployment, workload fit, client/server boundaries.
- [Foreign keys](https://sqlite.org/foreignkeys.html): enable per connection; constraint semantics.
- [Write-Ahead Logging](https://sqlite.org/wal.html): snapshot readers, single writer, same-host considerations.
- [Isolation](https://sqlite.org/isolation.html): transactions and snapshots.
- [CREATE TRIGGER](https://sqlite.org/lang_createtrigger.html): trigger behavior and limitations.
- [EXPLAIN QUERY PLAN](https://sqlite.org/eqp.html) and [Query planner](https://sqlite.org/queryplanner.html): access paths and indexing.
- [Partial indexes](https://sqlite.org/partialindex.html), [FTS5](https://sqlite.org/fts5.html): specialized indexing/search.
- [Online Backup API](https://sqlite.org/backup.html): consistent backups.

## PostgreSQL — official engine documentation

- [Constraints](https://www.postgresql.org/docs/current/ddl-constraints.html).
- [Indexes](https://www.postgresql.org/docs/current/indexes.html).
- [Transaction isolation](https://www.postgresql.org/docs/current/transaction-iso.html).
- [Row-level security](https://www.postgresql.org/docs/current/ddl-rowsecurity.html).
- [EXPLAIN](https://www.postgresql.org/docs/current/using-explain.html).
- [Triggers](https://www.postgresql.org/docs/current/triggers.html).
- [CREATE INDEX](https://www.postgresql.org/docs/current/sql-createindex.html).
- [Backup and restore](https://www.postgresql.org/docs/current/backup.html).

The `current` manual URL may change with the vendor's current version. Pin the version in adoption records.

## MySQL 8.4 / InnoDB — official engine documentation

- [Foreign key constraints](https://dev.mysql.com/doc/refman/8.4/en/create-table-foreign-keys.html).
- [Transaction isolation](https://dev.mysql.com/doc/refman/8.4/en/innodb-transaction-isolation-levels.html).
- [Triggers](https://dev.mysql.com/doc/refman/8.4/en/triggers.html).
- [Online DDL](https://dev.mysql.com/doc/refman/8.4/en/innodb-online-ddl.html).
- [Implicit commits](https://dev.mysql.com/doc/refman/8.4/en/implicit-commit.html).
- [EXPLAIN](https://dev.mysql.com/doc/refman/8.4/en/explain.html).
- [Backup and recovery](https://dev.mysql.com/doc/refman/8.4/en/backup-and-recovery.html).

MariaDB is a separate product and requires its own version-qualified profile; MySQL guidance must not be silently attributed to it.

## Security, operations, and cloud

- [OWASP SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html).
- [OWASP Database Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Database_Security_Cheat_Sheet.html).
- [OWASP Secrets Management Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html).
- [OWASP Logging Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html).
- [Google Cloud disaster recovery planning](https://cloud.google.com/architecture/dr-scenarios-planning-guide): RPO/RTO-based design.
- [Google Cloud SQL Query Insights](https://cloud.google.com/sql/docs/mysql/using-query-insights): managed-service observability example.

## Provenance caveat

The exported research preserves prose and many original URLs but may contain research-interface-specific citation identifiers that cannot be resolved from GitHub. This catalog restores navigable authoritative references; it is not a claim of a perfect line-for-line citation map. Check live vendor versions before upgrading a design recommendation into a production requirement.