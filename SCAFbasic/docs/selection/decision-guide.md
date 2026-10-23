# Selecting and Combining Site Architecture Models

Select architecture **by orthogonal decisions**, not by selecting one label from a mixed list.

## Step 1 — Record constraints

Document: product type, business domain complexity, expected users and tenants, team size, hosting constraints (including shared cPanel and no shell where relevant), framework/language, offline requirements, accessibility/security, release model, regulatory needs, data consistency, migration tolerance and operational budget.

## Step 2 — Make one decision per axis

| Axis | Simple starting candidate | Escalate when justified |
| --- | --- | --- |
| Deployment boundary | One app / simple monolith | Modular monolith for real capabilities; microservices for independent release/scale teams |
| Source organization | Existing framework-native MVC | Feature modules or capability packages when boundaries warrant |
| Business model | Transaction scripts or modest domain logic | DDD aggregates/bounded contexts for complex invariants |
| Dependency model | Services and DI where useful | Ports/adapters or Clean/Onion for important integration independence |
| Presentation | SSR/MPA or static content | SPA/hybrid if interaction/state needs warrant JS runtime cost |
| Interactivity | Progressive HTML; small browser enhancements | Full client application when required |
| Communication | Direct calls within module | Events/queues for decoupled work; durable patterns across failure boundaries |
| Persistence | ORM/relational model appropriate to workloads | CQRS, projections, event sourcing only with identifiable benefit |
| Repository | One app repository | Monorepo packages or polyrepo as ownership/release needs justify |

## Step 3 — Check compatibility

| Combination | Result |
| --- | --- |
| Modular monolith + DDD + MVC | **Compatible:** business modules can expose MVC web interfaces. |
| Modular monolith + hexagonal + vertical slices | **Compatible:** slices in Application use domain ports and infrastructure adapters. |
| Laravel + SSR + HTMX + Alpine + PWA | **Compatible:** each adds a different responsibility; design graceful fallback and service-worker lifecycle. |
| DDD + CQRS | **Compatible, not mandatory:** CQRS may separate read projections from domain commands. |
| CQRS + event sourcing | **Optional:** separate concerns; neither entails the other. |
| Static website + serverless forms | **Compatible:** static primary delivery with remote write endpoints. |
| Microservices + monorepo | **Compatible:** repository layout is not deployment coupling. |
| HMVC + DDD | **Possible:** hierarchical web composition must not bypass domain module contracts. |
| PWA + MPA | **Compatible:** offline or install enhancement does not require an SPA. |
| Microkernel + modular monolith | **Compatible:** stable internal core may expose extension contracts. |

## Step 4 — Reject unjustified complexity

- Do **not** introduce microservices merely for code reuse or to give every feature a folder.
- Do **not** force DDD aggregates onto small content-only pages or automatically elevate framework ORM models into rich domains.
- Do **not** adopt event sourcing solely to obtain a changelog; standard audit records or change histories may be simpler.
- Do **not** label feature directories as HMVC when no hierarchical MVC composition exists.
- Do **not** introduce a frontend SPA when accessible server-rendered forms solve the requirement.
- Do **not** use plugins for all feature separation; plugin extension and capability modularity serve different purposes.
- Do **not** move a legacy application without documenting autoload, routes, scripts, database migration, deployment and compatibility effects.
- Do **not** treat any named pattern as a performance, security or compliance guarantee.

## Step 5 — Record an evidence-backed decision

~~~text
Decision:
Problem and boundaries:
Current repository / baseline:
Candidate models and their axes:
Selected composition:
Why this combination:
Explicitly rejected alternatives:
Known costs and security/operational constraints:
Folders and dependencies affected:
Validation / acceptance criteria:
Migration and rollback if applicable:
References / date:
~~~

Use [examples](../../examples/README.md) as comparative reference layouts, not a universal specification.
