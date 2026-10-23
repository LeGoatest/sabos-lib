# DBbasic Knowledge Index

DBbasic separates responsibilities by **authority and technical purpose**, not by arbitrary folder symmetry.

| Knowledge type | Location | Authority |
| --- | --- | --- |
| Proposed contract | [contracts/schema-integrity.md](contracts/schema-integrity.md) | Review candidate, not binding |
| Practitioner positions | [positions/relational-design.md](positions/relational-design.md) | Explicit preference and tradeoffs |
| Relational model and relationships | [modeling/relationships-and-history.md](modeling/relationships-and-history.md) | Guidance and illustrative patterns |
| Tenant isolation/security | [security/tenancy-and-authorization.md](security/tenancy-and-authorization.md) | Implementation/security guidance |
| Indexing and concurrency | [performance/indexes-and-concurrency.md](performance/indexes-and-concurrency.md) | Workload-dependent guidance |
| Database automation | [automation/triggers-and-routines.md](automation/triggers-and-routines.md) | Engine-qualified guidance |
| Schema evolution and recovery | [operations/migrations-and-recovery.md](operations/migrations-and-recovery.md) | Operational guidance |
| Engine profiles | [engines/README.md](engines/README.md) | Vendor-scoped behavior |
| Research and synthesis | [research/2026-10-23-relational-database-research.md](research/2026-10-23-relational-database-research.md) | Informative evidence |
| Source catalog | [references/primary-sources.md](references/primary-sources.md) | Original-source provenance |
| Review checklist | [checklists/database-review.md](checklists/database-review.md) | Voluntary verification workflow |
| Executable example | [../examples/sqlite/README.md](../examples/sqlite/README.md) | Illustrative, not production |

## Core boundaries

**Schema integrity** is not **authorization**. A foreign key ensures a reference is valid, not that a person may view/edit the referenced record.

**Triggers** are not **relationships**. Constraints/keys own schema invariants; triggers have narrowly documented effects.

**Full-text search** is not **structured tagging**. Tags use relational join tables; full-text indexes accelerate searches over textual content.

**Backup success** is not **restorability**. Operational evidence requires restoration and integrity/application tests.

**Research evidence** does not automatically authorize an architecture migration, change a contract, or prove an implementation.

Add new knowledge types or leaf directories when content is substantial; do not create placeholders.