# Schema Evolution, Backup and Recovery

> **Status:** Engineering guidance
> **Evidence:** [Research](../research/2026-10-23-relational-database-research.md), [engine references](../references/primary-sources.md)
> **Adjacent owner:** [DevOpsbasic](../../../DevOpsbasic/README.md) owns general deployment workflow contracts; applications own real migrations and credentials.

## Version-controlled migrations

Store ordered schema changes as source-controlled artifacts in the **adopting application's** repository, with a durable applied-version record. Never silently rewrite an already deployed migration. Test fresh installs, realistic upgrade paths, application version compatibility, lock behavior, and failure/recovery paths.

### Expand → backfill → contract

1. **Expand:** Introduce a compatible nullable column or new table/index. Deploy readers tolerant of old/new shape.
2. **Backfill:** Migrate existing rows in bounded batches; verify counts, uniqueness, foreign keys and operational latency. Provide resumability.
3. **Contract:** Once reads/writes have switched and the compatibility window is finished, add restrictive constraints and retire old fields in a separate controlled release.

These steps are a planning framework, not a zero-downtime promise. PostgreSQL `CREATE INDEX CONCURRENTLY` cannot run inside a normal transaction block; many MySQL DDL operations implicitly commit; SQLite schema transforms may need careful table reconstruction.

## Migration safety review

State engine/version; measured table size; expected lock acquisition; desired data conversion; null/unique constraints; previous deployment compatibility; index build strategy; backup before destructive change; explicit rollback or forward-fix plan; retry/idempotency; and how the migration will prove postconditions. Avoid forcing destructive production migrations simply to "clear an error."

## Recovery objectives and proof

- **RPO:** Maximum acceptable data loss measured backward from failure.
- **RTO:** Maximum acceptable time to restore service.
- Specify backup frequency, retention, encryption and off-host/off-account independence based on these objectives.
- Coordinate SQL row backups with external media/blob storage and object versions; otherwise a restored photo row may refer to a missing file.
- Periodically restore into an isolated environment and run DB integrity, FK, application login, sample-media read and permission checks.

**A successful backup job is not a successful restore test.**

## Engine distinctions

| Engine | Backup / schema caveat |
| --- | --- |
| SQLite | Use online backup API or a documented consistent snapshot method; do not blindly copy an active WAL database file. |
| PostgreSQL | Logical and physical backups, WAL archiving and PITR vary by environment; transactional DDL behavior requires lock planning. |
| MySQL/InnoDB | Backup and binary-log/PITR options depend on configuration; many DDL statements produce implicit commits. |

## Operational record

Track exact migration IDs, checksums where supported, deployed app version, engine/version, backup artifact, RPO/RTO, rollback condition, restore drill date and result, table/index growth, lock waits, DB errors and available recovery media.