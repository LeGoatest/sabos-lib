# Database Anti-patterns and Safer Alternatives

> **Status:** Practitioner pattern catalog
> **Evidence:** [Research](../research/2026-10-23-relational-database-research.md)

| Anti-pattern | Failure mode | Better pattern |
| --- | --- | --- |
| Comma-separated IDs or tags inside a column | No native per-element FK, hard updates/joins, duplicates | Junction/cross table with FK and uniqueness |
| JSON-as-database for unrelated entities | Unenforceable cross-document relationships, update anomalies | Normalize authoritative relations; reserve JSON for genuinely semi-structured data |
| Assuming ORM relations enforce integrity | App bypasses or concurrent requests may violate invariant | DB FK/UNIQUE/CHECK plus app checks |
| `tenant_id` field with no scoped foreign keys | Child can refer to object owned by another tenant | Composite tenant-aware FK and negative tests |
| Role-only UI filtering | Direct API/object access escapes UI constraints | Server-side per-action authorization |
| Trigger-heavy business workflows | Hidden dependencies, recursive side effects, portability problems | Explicit service transactions, narrow verified triggers |
| Index-every-column | Write/storage amplification without query benefit | Query-driven composite indices verified by plans |
| Denormalize "for speed" without measurements | Conflicting copies and reconstruction ambiguity | Start normalized, measure, document cache owner/rebuild |
| One transaction for full HTTP request | Long locks and increased contention | Short, explicit invariant-centered transactions |
| "SQLite only for development" | Rejects viable embedded production deployments | Evaluate topology and write concurrency |
| "SQLite scales infinitely with WAL" | Still one simultaneous writer per database file | Measure and move to server DB if requirements demand |
| Trusting engine default isolation | MySQL/PostgreSQL/SQLite defaults differ | Pin level and test business races |
| Relying on green backup job | Recovery may be incomplete or untested | Isolated restore and end-to-end validation |
| Destructive migration in one release | Older app instances break, rollback difficult | Expand/backfill/contract and tested recovery |
| Raw user input in ORDER BY identifiers | Parameter binding does not protect arbitrary SQL identifiers | Allow-listed identifier selection |

Anti-pattern labels are **diagnostics**, not a waiver to ignore unusual, justified design requirements. Record exceptions with actual workload and security evidence.