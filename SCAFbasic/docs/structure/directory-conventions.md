# Directory Boundaries and Site Layout

**Purpose:** explain what file location communicates. These are **adaptable models**, not one universal mandatory tree.

## Define responsibility before folder names

| Concern | Common directory | Should own | Should not own |
| --- | --- | --- | --- |
| Application bootstrap | app/, bootstrap/, Core/ | Startup, DI registration, shared internal infrastructure | Independent business capabilities |
| Business capabilities | Modules/, packages/, app/Domain/ | Business concepts, feature commands, public module contracts | Arbitrary imported code from another module's internals |
| HTTP interface | Controllers/, Http/, Routes/, Presentation/ | Request parsing, transport validation, responses, routing | Primary business rules |
| Application workflows | Application/, Actions/, UseCases/, Services/ | Orchestration, authorization coordination, transactions | Domain model invariants that should be in aggregates |
| Domain logic | Domain/, Models/ (where accurate) | Domain rules, value objects, entities | Filesystem/HTTP/network implementation details |
| Infrastructure | Infrastructure/, adapters/, repositories/ | DB, network integrations, persistence adapters | Core domain policy |
| Database | database/, migrations/ | Schema changes, seed/test fixtures | Dynamic uploaded media or unversioned production data |
| Configuration | config/, .env (not committed) | Non-secret defaults and environment wiring | Hard-coded deployed secrets |
| Private state | storage/, var/, data/ | Logs, private uploads, caches and temp data | Directly URL-accessible application secrets |
| Public web | public/, public_html/ | HTTP entrypoint, compiled assets and intentionally public files | Private code, private media, credentials, writeable logs |
| Presentation source | resources/, templates/, views/, src/components/ | Editable templates and UI source | Silent generated outputs maintained by hand |
| Static assets | assets/, static/, public/assets/ | CSS, JS, images, fonts by purpose | Duplicated sources of truth |
| Automated checks | tests/, spec/, e2e/ | Regression and architectural boundary checks | Live production fixtures |
| Project knowledge | docs/, README.md, AGENTS.md, CHANGELOG.md | Routing, architecture decisions, usage, change traceability | Secrets or an alternative implementation source of truth |
| Automation | scripts/, tools/, .github/workflows/ | Reproducible development/admin commands | Undocumented production mutation shortcuts |

Use framework-standard locations where a framework owns the runtime contract. E.g., Laravel commonly places route definitions under routes/, bootstrap under bootstrap/, public entrypoint under public/ and app source under app/. Moving these for cosmetic consistency is not a sound reason for change.

## Three major source-tree organizations

### 1. Technical/layer grouped MVC

~~~text
app/
├── Core/
├── Controllers/
├── Models/
├── Services/
└── Views/
~~~

Good fit: compact PHP apps or projects with existing global MVC conventions. As capabilities grow, explicitly distinguish shared services from feature-specific business rules.

### 2. Feature-grouped MVC

~~~text
app/
├── Core/
└── Modules/
    ├── Users/
    │   ├── Controllers/
    │   ├── Models/
    │   └── Views/
    └── Gallery/
        ├── Controllers/
        ├── Models/
        └── Views/
~~~

A directory such as Modules/Gallery does **not** by itself implement HMVC. Decide whether controllers may compose other controllers and whether the framework supports such subrequests; prefer ordinary application services when orchestration is the actual requirement.

### 3. Capability packages with DDD/layers

~~~text
packages/
└── Media/
    ├── Domain/
    ├── Application/
    ├── Infrastructure/
    ├── Contracts/
    └── Presentation/
~~~

Good fit: larger modular monoliths with distinct capability ownership, well-defined entry/exit contracts and intentional dependency direction. These layers can be selectively merged when the feature is simple.

## Boundaries that actually matter

- A shared Core should contain broadly applicable plumbing, not absorb every new business feature.
- Decide **who owns each route, entity, table, event, API contract and service**; document cross-module access.
- Prefer an explicit public module API over calling foreign concrete controllers or reaching directly into another module's database tables.
- Use DI ports/adapters where changing dependencies or testing domain rules has real value. Do not create one adapter per trivial method.
- For single-deploy modular monoliths, enforce **logical module boundaries** even when sharing a process or database.
- Never confuse framework's ORM model with a DDD entity or data-model term; the roles may overlap but are not identical.
- External Composer/npm packages are dependency units, not automatically separate deployables.
- Tenant identity and row-level authorization are security responsibilities, not consequences of moving files into Modules/.
- Avoid unrequested placeholder folders or over-nesting; prefer folders backed by real responsibilities. An **explicitly requested** scaffold may use tracked placeholder directories when the README records that they are empty, unregistered and not a working capability.
- Keep the public document root narrow and intentionally configured. Sensitive assets must remain outside it regardless of folder labels.

## Documented scaffold versus implemented architecture

A directory tree may describe a **proposed topology**, an **intentional scaffold** or a **verified implementation**. Label the state clearly:

| State | Evidence | What must not be inferred |
| --- | --- | --- |
| Proposed | Design document or example | That files or runtime code exist |
| Placeholder | Tracked empty folder or `.gitkeep`, explicitly approved in scope | Registered module, working service or installed theme |
| Source present | Concrete files, package manifest, class/provider/route/migration registration as applicable | Successful build, complete feature behavior or compatibility |
| Validated | Passing relevant builds/tests, linked asset output, integration and release evidence | Unchecked environments or unrelated subsystems |
| Deployed | Verified release identity and operational checks on the intended target | That the default branch equals live production |

A module's entrypoint README should identify its owned routes, persistent tables/migrations, public contracts, dependencies, excluded responsibilities and current state. Placeholders do not require fake Composer manifests, service providers, migrations or stub classes. If a user asks to create a scaffolding tree, preserve existing working source, indicate placeholders in documentation and leave deployment claims unchanged.

## Migration policy

Adoption into a real project requires repository inspection, a dependency inventory, framework/autoload verification, unchanged-route tests, rollback planning and an explicit user-approved scope. SCAFbasic **does not authorize** a refactor by reference alone.
