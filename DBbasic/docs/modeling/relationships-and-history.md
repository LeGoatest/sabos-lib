# Relational Modeling, Cross Tables, Tags, and History

> **Status:** Practitioner implementation guidance
> **Sources:** [Full research](../research/2026-10-23-relational-database-research.md), [primary references](../references/primary-sources.md)

## Model independent facts independently

Start with entities, functional dependencies, candidate keys, cardinality, lifecycle, and authorized ownership. For transactional applications, 3NF/BCNF is a useful default when dependencies support it; 4NF addresses genuinely independent multivalued facts, not every repeating UI section.

- Each durable entity has an unambiguous primary key. Surrogate IDs do not eliminate domain-specific UNIQUE constraints.
- A one-to-many relation puts a foreign key on the child. Declare optionality via nullability and specify a deletion policy.
- Many-to-many relations use a junction/cross table with keys to both sides and unique membership pairs; additional columns on the junction represent facts about the relationship.
- Composite foreign keys can include organization_id so a child cannot reference another tenant's parent despite globally unique IDs.
- Neither a generic JSON array nor comma-separated IDs substitute for enforceable relationship tables.

## Example: users, locations, photos, tags and shares

```text
organizations ─┬── memberships ── users
               ├── locations
               ├── photos ─────── photo_tags ── tags
               └── photo_shares ── memberships (recipient, sender)
```

The photo belongs to an organization and location and records an uploader (organization member). `photo_tags` connects structured tags to photos. `photo_shares` has a distinct row for each recipient and can carry shared_at, revoked_at, and permission scope. This makes a photo available to users only when **authorization logic** permits the access, not simply because a join exists.

See the [SQLite executable schema](../../examples/sqlite/schema.sql).

## Ownership and deletion

Choose `RESTRICT`, `NO ACTION`, `CASCADE`, or `SET NULL` based on what the business considers authoritative. Cascading a tag relationship may be safe while cascading a customer, tenant, media record, or audit trail can be destructive. `deleted_at` soft deletion changes visibility; it does not remove foreign keys or physical data. Define restoration behavior, retention, and final purge explicitly.

## Tags are not free-text search

Structured tags require `tags` plus `photo_tags` (or other junction table), normalized naming and scoped UNIQUE constraints. Captions and user notes remain text. Full-text search uses derived indexes (SQLite FTS5, PostgreSQL text search, MySQL FULLTEXT) and has engine-specific tokenization, ranking and refresh behavior.

## History and provenance

Use explicit audit/change events when reconstruction or accountability matters: organization, subject type and ID, action, date/time, and actor when trustworthy. Events and row state are different. A database trigger can record an insert but cannot automatically infer the authenticated HTTP user. Audit access controls, privacy minimization, immutability, retention and restoration must be designed separately.

## Media and integrity

Keep object storage identity/path and necessary business attributes in SQL; store binary media elsewhere when warranted. A SHA-256 or equivalent digest can detect accidental byte changes against an original trusted digest; MD5 is inappropriate as a collision-resistant security control. Avoid retaining/displaying device, resolution, quality, or other technical metadata without a real use case.

## Tradeoffs

Normalize first; denormalize with measured justification, a declared source of truth, and a rebuild path. Relationship-rich designs have more joins, which should be addressed with query/index design rather than allowing update anomalies to accumulate.