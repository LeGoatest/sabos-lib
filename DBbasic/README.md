# DBbasic

> **Status:** Research-backed knowledge system; initial contracts are **proposals**, not yet binding
> **Subject:** Relational database engineering for websites, multiuser services and web applications
> **Research:** [2026-10-23 synthesis](docs/research/2026-10-23-relational-database-research.md)

DBbasic is SABOS Lib's governed collection of database principles, practitioner positions, evidence, design patterns, engine profiles and examples. It addresses both single-host websites and multiuser, multi-tenant applications. It is **not** an installed database, migration engine, ORM or automatic release pipeline.

## Start here

| Need | Canonical location |
| --- | --- |
| Knowledge map / authority | [docs/README.md](docs/README.md) |
| Agent routing and validation expectations | [AGENTS.md](AGENTS.md) |
| Foundational practitioner positions | [docs/positions/relational-design.md](docs/positions/relational-design.md) |
| Schema integrity proposal | [docs/contracts/schema-integrity.md](docs/contracts/schema-integrity.md) |
| Multiuser authorization and tenancy | [docs/security/tenancy-and-authorization.md](docs/security/tenancy-and-authorization.md) |
| Cross tables, keys, tags, deletion and audits | [docs/modeling/relationships-and-history.md](docs/modeling/relationships-and-history.md) |
| Indexing and transaction concurrency | [docs/performance/indexes-and-concurrency.md](docs/performance/indexes-and-concurrency.md) |
| Triggers and stored routines | [docs/automation/triggers-and-routines.md](docs/automation/triggers-and-routines.md) |
| Migrations, backup, recovery | [docs/operations/migrations-and-recovery.md](docs/operations/migrations-and-recovery.md) |
| SQLite / PostgreSQL / MySQL profiles | [docs/engines/README.md](docs/engines/README.md) |
| Source-cited deep research | [docs/research/2026-10-23-relational-database-research.md](docs/research/2026-10-23-relational-database-research.md) |
| Source links and provenance | [docs/references/primary-sources.md](docs/references/primary-sources.md) |
| Database anti-pattern catalog | [docs/patterns/anti-patterns.md](docs/patterns/anti-patterns.md) |
| Database terminology | [docs/glossary.md](docs/glossary.md) |
| Schema design/review checklist | [docs/checklists/database-review.md](docs/checklists/database-review.md) |
| Executable illustrative SQLite schema | [examples/sqlite/README.md](examples/sqlite/README.md) |

## Guiding synthesis

1. Represent independent facts as independent relations. Start with an authoritative, normalized OLTP model (usually 3NF/BCNF where suitable).
2. Make identities, business uniqueness, foreign keys, junction tables and referential actions explicit.
3. Prefer declarative integrity constraints over hidden trigger side effects. Keep transactions short and business-invariant-centered.
4. Index for actual predicates, joins and sort order, using realistic EXPLAIN and workload evidence.
5. Design isolation, tenant authorization, secret management, auditing, migrations and restore testing as first-class capabilities.
6. Keep portable model guidance separate from database-engine-specific behavior. SQLite is a legitimate production option for appropriate single-host write workloads.

These are **practitioner design preferences**, not a claim that one engine or normal form is universally optimal. Distinguish design guidance from tests and binding contracts. Research and examples do not become binding by being committed.

## Relationship to neighboring systems

- [WDBASIC](../Wdbasic/README.md) governs framework-independent web implementation/security behavior.
- [DevOpsbasic](../DevOpsbasic/README.md) governs generic CI/CD and deployment workflow knowledge; adopting projects own their actual migration commands and production environments.
- [Repository governance](../governance/README.md) governs authority and change control.

A PhotoSync-like organization/user/photo schema is **illustrative only**; it is not the current PhotoSync production schema or a license to migrate its database. See [change history](CHANGELOG.md).