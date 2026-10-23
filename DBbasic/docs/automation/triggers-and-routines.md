# Triggers and Stored Routines

> **Status:** Engine-qualified guidance, not a universal requirement
> **Sources:** [SQLite](https://sqlite.org/lang_createtrigger.html), [PostgreSQL](https://www.postgresql.org/docs/current/triggers.html), [MySQL 8.4](https://dev.mysql.com/doc/refman/8.4/en/triggers.html)

## Separate purposes

- Foreign keys **relate** rows.
- Constraints enforce expressible invariants.
- Transactions protect multi-statement atomicity.
- Triggers react to row/statement events (where supported).
- Stored functions/procedures centralize database-side logic, but syntax, privileges and transactional semantics differ among engines.

Use NOT NULL, UNIQUE, CHECK, FK and a normal transaction before adding trigger machinery when either can handle the requirement.

## Appropriate trigger uses

- Append a narrowly scoped audit event for all writes regardless of application entry point.
- Maintain a bounded derived field where the DB must enforce consistency.
- Record database-local state changes without an external service dependency.

Document trigger timing (BEFORE/AFTER/INSTEAD OF), granularity (row/statement), supported event, state read/written, error behavior, recursion/cascade interactions, cost and test evidence.

## Triggers that create risk

Do not hide authorization decisions, external network calls, broad workflows or recursive chains in triggers. Trigger ordering and cascades differ. A trigger cannot infer an authenticated actor unless trusted context is provided safely. SQLite cautions against certain BEFORE trigger mutations and generally favors AFTER when feasible.

## Procedures and portability

SQLite does not have a built-in general SQL stored-procedure facility comparable to MySQL and PostgreSQL. MySQL routines and PostgreSQL functions/procedures differ in transaction control, security definer semantics and language. Keep portable business orchestration in the application/service transaction layer, reserving DB-specific routines for explicit benefits.

## Operational checks

For each trigger/routine, test positive path, constraint violation, rollback, multi-row operation, cascade/delete, concurrency, privilege context, disabled/failed-dependent objects where applicable, and migration replay. Profile write latency and avoid silent long-running work.

See the [SQLite illustrative trigger](../../examples/sqlite/schema.sql) with a deliberate actor-identity limitation.