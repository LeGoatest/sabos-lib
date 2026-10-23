# Repository and Operational Organization Models

**Axis:** how source, change ownership, dependency management, build and operations are organized. These are compatible with nearly every application architecture; they are not substitutes for MVC or DDD.

| Model | Definition | Use / benefit | Cost or risk |
| --- | --- | --- | --- |
| Monorepo | Multiple apps/packages in one versioned repository. | Atomic coordinated changes and common tooling. | Build scale, permission and ownership discipline. |
| Polyrepo | Separately versioned repositories for services/packages. | Independent access and release ownership. | Cross-repository dependency/version coordination. |
| Multi-package workspace | A repository with individually scoped packages and workspaces. | Shared tooling with reusable packages. | Dependency graph and release complexity. |
| Single-application repository | One app, its configuration and tests in one repository. | Simple hosting and release management. | Shared code across projects may be copied. |
| Package-by-capability | Source and contracts grouped by bounded business responsibility. | Clear module ownership. | Need explicit public API and dependency restrictions. |
| Package-by-layer | Source grouped by technical role (models, views, controllers). | Simple framework conventions. | Feature work touches many directories. |
| Source/public split | Editable source and private configuration remain outside web root; served assets/entrypoint live inside public root. | Conventional safe website deployment. | Must configure document root correctly. |
| Source/generated split | Editable source feeds a build producing disposable generated artifacts. | CSS, JS and static site builds. | Stale output/drift if build is skipped. |
| Trunk-based development | Short-lived branches integrate frequently into a protected mainline. | Frequent integration and delivery. | Needs strong CI and reversible releases. |
| Environment/line branches | Dedicated branch or ref contracts identify development, release and production states. | Explicit control in hosted deployment pipelines. | Merge/release drift if poorly validated. |
| Infrastructure as Code | Desired infrastructure is represented by declarative, version-controlled definitions. | Reproducible environments. | Provider-specific state and secret management. |
| Immutable releases | Deploy a versioned release artifact/directory instead of modifying active files in place. | Safer rollback and reproducibility. | Shared writable state and migration orchestration. |

Folder convention alone never establishes which branch is actually deployed. [DevOpsbasic](../../../DevOpsbasic/README.md) owns branch and delivery contracts; [SCAFbasic naming](../structure/naming-and-assets.md) owns file organization guidance.
