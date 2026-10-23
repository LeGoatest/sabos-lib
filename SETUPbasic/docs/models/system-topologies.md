# System and Deployment Architecture Models

**Axis:** allocation of responsibilities across runtime processes, services, deployments and organizational boundaries. Directory examples are explanatory, not mandatory.

| Model | Definition and responsibility boundary | Typical use / benefit | Principal cost or risk |
| --- | --- | --- | --- |
| Traditional monolith | Most business features execute in one deployable application, typically sharing process/data access. | Small or established websites; simple hosting and transactions. | Accidental coupling makes change and scaling harder. |
| **Modular monolith** | One deployable application with internal modules owning capabilities and controlled public interfaces. | Growing products needing clear boundaries without distributed operations. | Modules become nominal if every feature reaches into others' internals. |
| Distributed monolith | Separate deployables remain tightly coupled in releases, state or failure paths. Primarily an **anti-pattern**. | Diagnostic term for nominal microservices. | Costs of distribution without independence. |
| Microservices | Independently deployable services own bounded capabilities and expose APIs/messages. | Organizational scale, independent release/scale needs. | Networking, observability, transactions, contracts and operating overhead. |
| Service-oriented architecture (SOA) | Services expose reusable business capabilities, often via explicit enterprise integration standards or buses. | Integration across large or legacy systems. | Centralized integration complexity and governance friction. |
| Microkernel / plug-in | Stable core publishes extension contracts; optional modules plug in without modifying core. | CMS, editors, marketplace add-ons. | Versioning, trust/sandboxing, compatibility and uncontrolled extension API growth. |
| Client–server | Clients request resources or operations from a centralized server. | Most web applications. | Server/network availability and concurrency constraints. |
| Peer-to-peer | Peers exchange work/data directly without relying on one central processing node. | Collaboration/replication in specialized systems. | Trust, NAT traversal, conflict handling and availability. |
| Layered/n-tier deployment | Presentation, business and data responsibilities are logically layered and sometimes hosted on separate tiers. | Conventional enterprise applications and migration. | High coupling through horizontal layers; tier latency. |
| Web–queue–worker | Request-serving web application offloads durable asynchronous jobs to queue consumers. | Upload processing, email, media and reports. | Retries, idempotency, monitoring and queue maintenance. |
| Event-driven system | Producers publish meaningful events consumed by decoupled components or services. | Cross-capability notifications and integration. | Ordering, duplicate delivery, debugging and eventual consistency. |
| Message-driven / actor | Independently addressed components or actors exchange messages, limiting mutable shared state. | Concurrent stateful systems. | Delivery semantics, supervision and distributed debugging. |
| Pipe-and-filter | Processing stages transform data and pass it to the next stage. | Import/export, ETL, image/audio pipelines. | Handling backpressure, error propagation and state across stages. |
| Serverless / FaaS | Functions or managed services execute on demand with infrastructure largely operated by a provider. | Sporadic event workloads and APIs. | Provider limits, cold starts, observability, costs and lock-in. |
| Event-stream / log-centric | Ordered append-only event logs are consumed by separate processors. | High-volume integrations and analytics. | Replay/idempotency and storage/retention complexity. |
| Space-based / in-memory grid | Partitioned, replicated in-memory state distributes application loads beyond a single DB bottleneck. | Specialized extreme-throughput systems. | Complexity, memory expense and consistency boundaries. |
| Shared-nothing | Compute nodes own their local memory/state with no shared process memory; coordinate through network/storage. | Horizontal scaling and fault isolation. | Partitioning, coordination and consistency design. |
| Multi-tenant shared application | One logical application serves distinct tenant organizations with enforced logical isolation. | SaaS with common feature set. | Tenant authorization, noisy-neighbor isolation and migrations. |
| Single-tenant deployment | Each tenant receives an independently isolated application or runtime instance. | Regulatory/customization/isolation needs. | Per-tenant cost and fleet management. |
| Edge/distributed delivery | Selected rendering, caching or compute is placed near clients rather than solely at origin. | Global latency-sensitive content and operations. | State consistency, portability and debugging. |
| Backend-for-frontend (BFF) | A client-specific API boundary composes backend data for one interface type. | Mobile and desktop clients with different needs. | API duplication and another service boundary. |

## Sample layouts

### A. Modular monolith: one application and internal capabilities

~~~text
project/
├── app/
│   ├── Core/
│   ├── Modules/
│   │   ├── Customers/
│   │   ├── Media/
│   │   └── Billing/
│   └── Http/
├── config/
├── database/
├── public/
└── tests/
~~~

The module structure does not by itself guarantee encapsulation. Define and test dependencies, export contracts, authorization boundaries and persistence ownership.

### B. Independently deployed services

~~~text
workspace/
├── services/
│   ├── catalog/
│   └── orders/
├── contracts/
├── infra/
└── tests/
~~~

A monorepo is compatible with separate service deployments; a directory tree does not prove independent operations. See [structure guidance](../structure/directory-conventions.md).

### C. Microkernel

~~~text
project/
├── core/
│   ├── Contracts/
│   └── PluginHost/
├── plugins/
│   ├── ThemeA/
│   └── PaymentAdapter/
└── tests/
~~~

Plugins need explicit permission boundaries and stable versioned extension interfaces. Do not equate an arbitrary plugins/ folder with safe runtime extensibility.

**Composition:** DDD, hexagonal layering, MVC and event-driven messaging may be internal design choices inside many of these topologies.

Sources: [Microsoft architecture styles](https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/), [Microsoft web-queue-worker](https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/web-queue-worker), [Martin Fowler: Monolith First](https://martinfowler.com/bliki/MonolithFirst.html).
