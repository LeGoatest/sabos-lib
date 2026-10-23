# Application and Domain Organization Models

**Axis:** structuring source code, dependencies and business behaviors within an application or capability. These categories often combine rather than replace each other.

| Model | Definition and primary responsibility | Useful when | Limitation / failure mode |
| --- | --- | --- | --- |
| **MVC** | Model owns application data/domain interaction, View renders presentation, Controller handles input/coordination. | Server-rendered applications and clear HTTP/UI separation. | Large controllers/models and global technical folders. |
| **HMVC** | Hierarchical or composable MVC subsystems encapsulate their own controllers, models and views; subrequests/module composition may be supported. | Independent UI subapplications or reusable MVC modules. | Nested controllers duplicate orchestration and obscure domain boundaries. |
| Modular MVC | MVC implementation grouped into capability/feature modules, without necessarily implementing hierarchical MVC invocation. | Feature grouping in established MVC apps. | Namespace organization alone is not isolation. |
| Layered architecture | Code separated into responsibilities such as presentation, application, domain and infrastructure with constrained dependencies. | General-purpose business systems. | Cross-cutting changes can traverse many layers. |
| Three-layer design | UI/presentation, business logic and persistence/data access form three logical responsibilities. | Straightforward CRUD applications. | Business logic leaks between layers. |
| **Domain-Driven Design (DDD)** | Business concepts, invariants and domain language shape bounded contexts, aggregates, entities, value objects and services. | Complex domains with meaningful business rules. | Significant modeling overhead for simple content sites. |
| Bounded-context modules | Capability modules define ownership of their domain vocabulary, state and integration contracts. | Growing applications with separate business capabilities. | Shared DB access or ambiguous ownership erodes boundaries. |
| **Vertical slices** | Organize related request/handler/validation/persistence behavior by use case or feature, instead of only by global technical layer. | Independent feature evolution and thin integration. | Can duplicate generic logic or fragment shared invariants. |
| **Hexagonal / ports-and-adapters** | Core business logic depends on declared ports; external HTTP, DB and service implementations are adapters. | External integration, testable domain rules or technology swaps. | Unnecessary interfaces/indirection for simple apps. |
| **Clean Architecture** | Business entities and use cases are inward dependencies; outer adapters/frameworks depend on them. | Long-lived domain-heavy systems. | Excessive wrappers and DTO translation for trivial behavior. |
| **Onion Architecture** | Domain model is central; layers around it depend inward, separating infrastructure concerns. | Domain-focused enterprise applications. | Boilerplate or poor boundaries if domain is anemic. |
| Screaming Architecture | Project organization visibly communicates its business/use cases instead of the framework first. | Domain-rich applications with many features. | Can conceal shared technical infrastructure without a clear boundary. |
| Functional core / imperative shell | Pure, deterministic domain transformations are separated from side-effecting input/output orchestration. | Complex calculations and rule testing. | Domain operations involving mutable external state require careful boundaries. |
| Transaction Script | A procedure directly orchestrates one business action, often with straightforward persistence. | Small, simple use cases. | Repeated business logic and growing procedural tangles. |
| Domain Model | Rich domain objects enforce business behavior and invariants rather than merely expose fields. | Richly constrained business logic. | More complexity than simple data-entry flows require. |
| Table Module | One class/service supplies domain behavior for a table or recordset rather than each individual entity object. | Data-centric applications. | Domain complexity can become bound to storage shape. |
| Service Layer | Application-facing operations expose business workflows above domain/persistence mechanisms. | Multiple clients or repeated workflows. | Anemic core and oversized generic service classes. |
| Repository pattern (application boundary) | An abstraction presents collection-like access to aggregate persistence; implementation remains separate. | Need to isolate domain use cases from storage. | Generic repositories can mask query costs or duplicate ORM features. |
| Dependency injection / IoC | Callers receive dependencies through explicit construction/binding instead of creating concrete implementations internally. | Testable replaceable services. | Hidden container magic and over-abstraction. |
| Package-by-layer | Root folders group technical type (Controllers, Models, Services). | Smaller apps, familiar framework workflows. | Business changes scatter across the tree. |
| Package-by-feature | Each feature contains its relevant handlers/models/views/validation. | Multiple independent product capabilities. | Shared contracts and ownership need definition. |
| Package-by-capability + DDD layers | Each business module contains Domain, Application, Infrastructure and Contracts; presentation adapters live in or near the capability. | Long-lived modular monoliths. | Too much ceremony for trivial features. |

## MVC versus HMVC versus modular MVC

~~~text
# Traditional MVC
app/
├── Controllers/
├── Models/
└── Views/

# Modular MVC: packaging decision
app/Modules/
├── Users/{Controllers,Models,Views}/
└── Gallery/{Controllers,Models,Views}/

# Capability/DDD organization: business boundaries
packages/
└── Gallery/
    ├── Domain/
    ├── Application/
    ├── Infrastructure/
    └── Contracts/
~~~

The latter two trees may look similar. **HMVC** additionally describes hierarchical MVC composition behavior in variants that implement it; a feature-folder tree alone is not HMVC. Neither MVC nor HMVC automatically enforces tenant isolation, transaction discipline or aggregate boundaries.

## DDD + ports-and-adapters

~~~text
packages/Media/
├── Domain/           # Entities, value objects, rules, events
├── Application/      # Use cases, commands, queries
├── Contracts/        # Published interfaces and DTO schemas
├── Infrastructure/   # Database/repository, external service adapters
└── Presentation/     # Web/API adapters when module-owned
~~~

Dependency rule: domain must not import infrastructure concrete classes. Contracts belong to their stable owning module; do not make "Contracts" a catch-all for every model. A capability can use MVC at its HTTP edge and vertical slices for application use cases without adopting HMVC.

**Important caveat:** DDD describes modeling and bounded contexts; it does not prescribe this physical folder hierarchy. Likewise Clean and hexagonal are related, not identical, and do not imply the exact same class names.

Sources: [Alistair Cockburn: Hexagonal Architecture](https://alistair.cockburn.us/hexagonal-architecture/), [AWS hexagonal pattern](https://docs.aws.amazon.com/prescriptive-guidance/latest/cloud-design-patterns/hexagonal-architecture.html), [Martin Fowler enterprise patterns](https://martinfowler.com/eaaCatalog/), [Laravel directory flexibility](https://laravel.com/framework/docs/structure).
