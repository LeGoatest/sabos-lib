# Database Design and Change Review Checklist

> **Status:** Voluntary review aid; checkboxes are not adopted contractual MUSTs
> **Basis:** [DBbasic research](../research/2026-10-23-relational-database-research.md)

## Data model

- [ ] Every authoritative fact has a clear owner, entity, primary key and lifecycle.
- [ ] Functional and multivalued dependencies were checked before denormalization.
- [ ] All uniqueness rules are enforced, including tenant-scoped business keys.
- [ ] One-to-many and many-to-many relations are explicit, with junction uniqueness.
- [ ] Cross-tenant invalid references are rejected at the database level where practical.
- [ ] NOT NULL / CHECK / FK / UNIQUE are preferred over application-only or trigger-only substitutes.
- [ ] Delete/update actions, soft deletion, retention and physical purge semantics are deliberate.
- [ ] Timestamps, time zones, case/collation, money/decimal and nullable semantics are defined.

## Access and threat model

- [ ] Read, write, share, export, download and aggregate paths have independent authorization checks.
- [ ] Negative tenant/role tests include ID substitution, stale grants, queued work and caches.
- [ ] SQL values are parameterized and dynamic SQL identifiers are allow-listed.
- [ ] Runtime credentials are least privileged and separated from migration credentials.
- [ ] Audit/logging avoids secrets and unnecessary personal data.
- [ ] Media object access cannot bypass database-scoped authorization.

## Transactions and performance

- [ ] Transactions cover one coherent invariant and terminate promptly.
- [ ] Retryable conflict handling is bounded and safe/idempotent.
- [ ] Representative workload queries, data volumes and plans have been recorded.
- [ ] Composite/FK/partial/search indexes have measured benefit relative to their write/storage cost.
- [ ] Search indexes are treated as derived data with rebuild and stale-data rules.
- [ ] Connection concurrency, DB version and default isolation are documented.

## Migrations and recovery

- [ ] DDL/migration artifacts are version-controlled and can initialize an empty DB.
- [ ] Upgrade testing covers populated data and previous app-version coexistence.
- [ ] Destructive/locking changes have a compatible rollout or approved maintenance plan.
- [ ] Rollback/forward-fix procedure and failure criteria are documented.
- [ ] RPO and RTO are specified.
- [ ] Restore was executed and its integrity, timing, permissions and external media were verified.

## Evidence required before closing a review

Record reviewer, engine/version, affected tables, migration IDs, run commands, test results, sample data scale, explain plans, remaining uncertainties, and sign-off. Do not claim real operational evidence if only a documentation review occurred.