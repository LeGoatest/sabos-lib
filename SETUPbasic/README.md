# SETUPbasic

> **Status:** Initial architecture and project-structure knowledge system; practitioner preferences and proposed review contract, not an automatic mandate
> **Scope:** Website, web application and platform composition, source-tree organization, architecture-model selection and boundaries
> **Not:** A framework, starter kit, application generator or license to refactor existing projects

SETUPbasic captures reusable **site/application setup and structure** patterns from projects using traditional PHP MVC, Laravel, static sites, progressive web applications, capability packages and other stacks. Its job is to make *structural options and their consequences* explicit instead of imposing one folder tree or calling different architecture axes mutually exclusive.

## Find the right material

| Need | Source |
| --- | --- |
| Definitions and complete initial model inventory | [Model index](docs/models/README.md) |
| Monolith, modular monolith, microservices, SOA, serverless, event-driven | [System topologies](docs/models/system-topologies.md) |
| MVC, HMVC, DDD, vertical slices, layered, clean, hexagonal | [Application organization](docs/models/application-organization.md) |
| MPA, SPA, SSR, SSG, hybrid, headless, PWA | [Web presentation and delivery](docs/models/presentation-delivery.md) |
| Data access, CQRS, event sourcing, integration and consistency | [Data and integration patterns](docs/models/data-and-integration.md) |
| Repository and operating layouts: monorepo/polyrepo, source/public/generated, branching | [Repository and operations models](docs/models/repository-and-operations.md) |
| Choosing and combining models | [Decision guide](docs/selection/decision-guide.md) |
| Directory boundaries | [Directory conventions](docs/structure/directory-conventions.md) |
| Filenames, case, assets and generated source | [Naming and asset conventions](docs/structure/naming-and-assets.md) |
| Explicit preferred starting stance | [Practitioner position](docs/positions/architecture-selection.md) |
| Candidate structure-review checks | [Proposed contract](docs/contracts/structure-review-proposal.md) |
| Comparative directory trees | [Examples](examples/README.md) |
| Terms | [Glossary](docs/glossary.md) |
| Original source documentation | [References](docs/references/primary-sources.md) |
| Scope, authority and long-form index | [docs/README.md](docs/README.md) |

## Fundamental distinction

An application can simultaneously be a **modular monolith** (one deployment boundary), use **DDD** (domain boundaries), **MVC** (HTTP presentation), **hexagonal ports/adapters** (dependency direction), **events** (communication), and an **SSR/PWA frontend** (delivery). These labels answer different questions. HMVC is not synonymous with a modular monolith or DDD.

## Relationship to the rest of SABOS Lib

- **SETUPbasic** owns architecture taxonomy, repository/application layout, module boundaries, dependency direction and organization decisions.
- [WDBASIC](../Wdbasic/README.md) owns web semantics, accessibility, HTTP/URL behavior, security/privacy, progressive enhancement and implementation contracts.
- [TCbasic](../TCbasic/README.md) owns semantic Tailwind CSS source architecture.
- [DBbasic](../DBbasic/README.md) owns database integrity, modeling, migrations and engine-specific SQL.
- [DevOpsbasic](../DevOpsbasic/README.md) owns branch, build, deployment and operational promotion knowledge.
- [READMEbasic](../READMEbasic/README.md) owns README integrity and documentation entrypoints.
- [Governance](../governance/README.md) owns authority, change-control and evidence.

Do not reorganize existing projects solely to match an example. Verify framework requirements, runtime constraints and present code before any adoption.
