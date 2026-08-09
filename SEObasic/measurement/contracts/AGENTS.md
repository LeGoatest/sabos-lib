# SEObasic Measurement Contract Agent Instructions

> **Scope:** `SEObasic/measurement/contracts/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md) and [`../../contracts/AGENTS.md`](../../contracts/AGENTS.md)

Measurement contracts are binding semantic/data obligations.

Agents MUST:

- preserve canonical metric meanings unless a deliberate contract change is authorized;
- keep normative requirements separate from examples and provider-specific definitions;
- state when a rule applies only to a metric family, provider, platform, or reporting context;
- preserve comparability requirements when adding aggregation or normalization rules;
- define validation for mechanically checkable measurement behavior;
- update [`../../CHANGELOG.md`](../../CHANGELOG.md) for material contract changes.

Agents MUST NOT:

- weaken metric definitions to accommodate ambiguous implementation data;
- treat proprietary scores as interchangeable universal metrics;
- create a new universal metric meaning from one analytics vendor's terminology;
- silently change denominators, attribution models, geography, sampling, or aggregation while preserving the old metric label.
