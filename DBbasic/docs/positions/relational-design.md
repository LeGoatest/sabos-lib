# Relational Design — Practitioner Position

> **Status:** Practitioner position (non-binding)
> **Reviewed:** 2026-10-23
> **Evidence:** [Research synthesis](../research/2026-10-23-relational-database-research.md), [primary sources](../references/primary-sources.md)

| Topic | Preferred default | Qualification |
| --- | --- | --- |
| Logical design | Normalize authoritative OLTP facts to 3NF/BCNF where dependencies justify it | Higher normal forms address specific anomalies; not a universal table-count target |
| Keys | Explicit primary and candidate/business uniqueness | Natural vs surrogate keys depends on stability/identity |
| Relationships | Database-enforced foreign keys and junction/cross tables | Deletion/cascade semantics require domain review |
| Constraints | NOT NULL, UNIQUE, FK, CHECK first | Triggers for requirements not expressible declaratively |
| Denormalization | Add only after measured need; record source of truth and rebuild path | Caches/materialized views are derived data |
| Transactions | Short, explicit and cohesive; concurrency failures retryable where relevant | Engine isolation defaults differ materially |
| Indexes | Match real queries; inspect execution plans | Excess indexes cost writes/storage |
| Triggers | Narrow, documented, tested, observable | Never assume trigger or cascade semantics portable |
| Security | Least-privilege DB users, parameterized queries, scoped authorization | Tenant isolation must be tested across read/write paths |
| Schema changes | Version-controlled and forward-compatible rollout | Engine DDL/locking and rollback limitations differ |
| Recovery | Defined RPO/RTO, tested backup restoration | Backup existence alone does not prove recovery |
| Engine choice | Fit topology and write concurrency | SQLite may be production-capable; server DBs for multi-host/high-concurrency needs |

A position may be intentionally revised when tests or primary evidence show a better fit. Research alone does not amend contracts.