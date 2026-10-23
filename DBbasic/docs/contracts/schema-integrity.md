# Schema Integrity Contract — Proposal

> **Status:** Proposed; NOT YET BINDING
> **Scope:** Relational transactional schemas adopted under DBbasic
> **Owner:** DBbasic
> **Basis:** [Research synthesis](../research/2026-10-23-relational-database-research.md) and [positions](../positions/relational-design.md)

## Proposed normative requirements (require adoption decision)

A governed relational schema **would**:

1. Give durable entity tables explicit primary keys and enforce independently meaningful business uniqueness.
2. Represent required relationships with foreign keys where the database can enforce them.
3. Use junction/cross-reference relations for many-to-many structured facts, preventing unintended duplicates.
4. Express required columns and feasible row constraints through NOT NULL, UNIQUE, CHECK and FK rather than application-only assertions.
5. Document all ON DELETE and ON UPDATE actions, especially destructive cascades.
6. Keep authoritative business facts separated rather than embedding repeated relational values in CSV/delimited columns.
7. Identify the source of truth, consistency mechanism and rebuild plan for deliberate denormalization.
8. Version migrations; validate fresh install, upgrade, non-destructive transition and referential integrity on supported engines.
9. Identify each engine/connection's enforcement prerequisites (for example SQLite PRAGMA foreign_keys=ON).
10. Verify sensitive read and write paths under realistic role/tenant identities; foreign keys do not establish authorization.

## Proposed validation evidence

- Schema DDL or ORM migrations with explicit key, nullability, uniqueness, check and FK definitions.
- Duplicate/orphan rejection tests and intentional cascade/restrict tests.
- Data-ownership and tenant-scope tests, including access attempts across tenant boundaries.
- Real upgrade tests and recovery proof for destructive schema transitions.
- Measured before/after query plans when an optimization introduces new indexes or denormalization.

## Exceptions and change control

Document reason, specific affected schema, owner, risk, mitigation, duration (if temporary), and recovery/validation evidence. Do not use an exception to silently bypass another system's security contract.

**Adoption remains an open decision.** Commit existence does not make this proposal binding.