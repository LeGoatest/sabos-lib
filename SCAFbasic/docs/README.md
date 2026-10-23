# SCAFbasic Knowledge Index

| Area | Location | Authority |
| --- | --- | --- |
| Architecture taxonomy | [models/README.md](models/README.md) | Explanatory catalog; classifications are informative |
| System styles | [models/system-topologies.md](models/system-topologies.md) | Informative |
| Code/domain styles | [models/application-organization.md](models/application-organization.md) | Informative |
| Web delivery styles | [models/presentation-delivery.md](models/presentation-delivery.md) | Informative |
| Data/integration styles | [models/data-and-integration.md](models/data-and-integration.md) | Informative; DBbasic controls relational substance |
| Repository and operations patterns | [models/repository-and-operations.md](models/repository-and-operations.md) | Informative; DevOpsbasic governs deployment policy |
| Folder responsibilities | [structure/directory-conventions.md](structure/directory-conventions.md) | Practitioner guidance |
| Naming and assets | [structure/naming-and-assets.md](structure/naming-and-assets.md) | Practitioner guidance |
| Architecture selection | [selection/decision-guide.md](selection/decision-guide.md) | Decision procedure, not a mandatory architecture |
| Default preferences | [positions/architecture-selection.md](positions/architecture-selection.md) | Explicit preference, not a universal contract |
| Structure review | [contracts/structure-review-proposal.md](contracts/structure-review-proposal.md) | **Proposed, not adopted** |
| Examples | [../examples/README.md](../examples/README.md) | Illustrative only |
| Glossary | [glossary.md](glossary.md) | Terminology |
| Primary references | [references/primary-sources.md](references/primary-sources.md) | Sources, vendor-qualified |

## Boundary rules

1. SCAFbasic selects **how the application is composed and arranged**, not the business feature list.
2. Architecture labels across different axes can coexist. Treat exclusions as specific to the proposed composition, not to the words themselves.
3. A model catalog can never enumerate every historical variant or trade name. Entries define a substantial, extensible baseline and an addition rule, rather than making a false claim of universal exhaustiveness.
4. Do not migrate a working application merely to achieve a cleaner example tree.
5. Public/private storage and secrets must respect adopted WDBASIC and framework security contracts. SQL integrity remains DBbasic's domain.
