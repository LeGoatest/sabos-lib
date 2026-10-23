# DBbasic Agent Instructions

> **Status:** Binding router for work inside DBbasic (inherits repository governance)
> **Scope:** DBbasic/

Read [repository instructions](../AGENTS.md), [governance authority](../governance/authority.md), [knowledge-system model](../governance/knowledge-system-model.md), and [DBbasic docs index](docs/README.md) before editing relevant knowledge.

- Distinguish **research** (informative), **platform documentation** (vendor scoped), **practitioner positions** (preferences), **proposed contracts** (not adopted), **binding contracts** (deliberately adopted), and **examples** (illustrative).
- Do not promote an external recommendation or research result to a MUST without an explicit DBbasic contract decision.
- Prefer portable relational modeling; document engine-specific syntax, transaction isolation, DDL semantics, indexing and feature availability under the relevant engine profile.
- Never infer the live schema or tenant policy of a real project from an example.
- For any database migration advice identify data-loss, locking, referential, rollout, backup, rollback and validation risks. No real production migration is authorized by DBbasic documentation.
- For multiuser examples distinguish foreign-key integrity from application authorization; tenant scoping is not guaranteed by the mere presence of tenant_id.
- For examples validate against an actual engine where possible, record what was tested, and state limitations. Never claim cross-engine portability of SQLite SQL by inspection alone.
- Preserve report provenance and working links; verify platform documentation when changed versions matter.
- Update DBbasic/CHANGELOG.md for substantive changes and root CHANGELOG.md when the system boundary or repository-wide routing changes.

Nearest docs guidance: [docs/AGENTS.md](docs/AGENTS.md).