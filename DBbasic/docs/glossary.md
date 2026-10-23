# Database Terminology

> **Status:** Descriptive definitions; no independent normative authority

| Term | Meaning and important distinction |
| --- | --- |
| Relation / table | A structured collection of rows with defined attributes and constraints; SQL tables may differ from pure relational-model assumptions. |
| Primary key | Chosen candidate key that uniquely identifies each row. |
| Candidate key | Minimal set of attributes that uniquely identifies rows. |
| Foreign key | Declared reference from child column tuple to a parent candidate/unique key, enforced by the DB. |
| Junction / cross table | Relation representing a many-to-many association, often with attributes of that relationship. |
| Functional dependency | If two rows agree on determinant attributes, they agree on dependent attributes. |
| 3NF / BCNF | Normal forms mitigating dependency-based update anomalies. |
| 4NF | Normal form addressing nontrivial multivalued dependencies. |
| Cardinality | One-to-one, one-to-many or many-to-many relationship count/shape. |
| Composite key | Key made from multiple columns. |
| UNIQUE | Constraint preventing duplicate scoped values under engine-specific NULL/collation semantics. |
| Referential action | FK action after parent UPDATE/DELETE: RESTRICT, CASCADE, SET NULL, etc. |
| Transaction | Atomic unit of DB work with engine-specific consistency/isolation guarantees. |
| MVCC | Multi-version concurrency control permitting versioned reads alongside other transactions. |
| Deadlock | Cycle of incompatible locks where at least one transaction must abort. |
| Index | Auxiliary structure accelerating selected queries at write/storage cost. |
| Covering index | Index containing needed query values so extra table fetches may be avoided. |
| Partial index | Index restricted to rows satisfying a predicate, where engine supports it. |
| Full-text search | Token/rank-aware search over text, different from exact structured tags. |
| Trigger | DB-side event reaction, not a relationship primitive. |
| Stored routine | DB-executed function/procedure; engine-specific. |
| RLS | PostgreSQL row-level security policy mechanism; not an interchangeable SQL-standard feature. |
| WAL / binlog | Write-ahead transaction log / binary log mechanisms, engine-specific and not interchangeable. |
| RPO / RTO | Recovery point (data-loss tolerance) and recovery time (service-restoration tolerance) objectives. |
| Expand/backfill/contract | Deployment pattern that stages compatible schema introduction, data migration, and old-schema retirement. |
| ORM | Object-relational mapper; does not replace SQL constraints, migration safety or privilege enforcement. |
| Soft delete | Logical deletion flag/timestamp without physically removing row data. |

Definitions and engine details can diverge; see [engine profiles](engines/README.md).