# SQLite Relational Example

> **Status:** Executable **illustration**, not production-ready PhotoSync schema.
> **Platform:** SQLite (not portable SQL). Requires sqlite3 installed or Python's sqlite3 module.

This example demonstrates:
- separate organizations, users and junction-table memberships;
- same-tenant composite foreign keys and scoped uniqueness;
- photos linked to locations and uploaders;
- photo tags and photo shares as cross tables;
- conversations, participants, messages and photo attachments as additional junction relationships;
- a narrow AFTER INSERT audit trigger that does **not** claim authenticated actor identity;
- query-supporting secondary indexes and rejection tests.

## Files

| File | Purpose |
| --- | --- |
| [schema.sql](schema.sql) | Full schema + indexes + illustrative audit trigger |
| [queries.sql](queries.sql) | Scoped read patterns and sharing/query examples |
| [test_schema.py](test_schema.py) | SQLite integrity and negative tests (10 test cases) |
| [migrations/002-photo-visibility-index.sql](migrations/002-photo-visibility-index.sql) | Example additive migration (not executed by tests) |

## Run

From this directory, on a machine with Python 3 and SQLite support:

```sh
python3 -m unittest -v test_schema.py
```

Tests create an **in-memory** SQLite database and do not alter production data. The reference schema is also runnable with:

```sh
sqlite3 /tmp/dbbasic-example.sqlite < schema.sql
```

Do not use a real application's DB file as the target. Enable `PRAGMA foreign_keys = ON` on **every application connection**, not just the schema installer. A memory database bypasses the file-system concurrency/deployment decisions required for real use.

## Model scope and limitations

Role values are just examples (`owner`, `manager`, `field`); they are not an authorized PhotoSync policy. The example does not implement global superadmin, time-limited invites, external sharing, encryption, Google OAuth, real file/object access control, full messaging notifications, retention, storage cleanup, or a production migration system. Deletion cascades are illustrative and require business approval. A SQL FK does not make a read authorized; service-level authorization and tenant-scoped queries remain essential.

**Validation record:** SQLite Python stdlib `sqlite3`: 10 in-memory unit tests passed on 2026-10-23 before repository write. Repeat the tests against the checked-out files when reviewing changes.