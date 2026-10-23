# Data Access and Integration Models

**Axis:** persistence object mapping, read/write responsibilities, synchronization and inter-module/service communication. This catalog is explanatory; [DBbasic](../../../DBbasic/README.md) governs relational integrity, SQL, migrations and engine behavior.

| Model | Definition and responsibility | Useful when | Major trade-off |
| --- | --- | --- | --- |
| Active Record | Entity/record object combines persistence operations with field data/behavior. | Straightforward ORM-backed CRUD. | Persistence concerns can leak into domain rules. |
| Data Mapper | Independent mapper translates between domain objects and database records. | Rich domain model independent of schema. | More mapping code and identity management. |
| Repository | Collection-like interface abstracts retrieval/saving of aggregates. | Domain-focused persistence boundaries. | Generic abstractions can hide query behavior. |
| Unit of Work | Tracks entity changes and commits coordinated persistence in a transaction. | ORM identity/change management. | Lifecycles and flush timing are easy to misunderstand. |
| Identity Map | Ensures one in-memory object instance per database identity in a unit of work. | ORM consistency within request scope. | Caching and staleness if scope is too broad. |
| Query Object / Specification | Encapsulates query predicate/composable selection logic. | Complex reusable filtering. | Hidden unbounded queries and leaky abstraction. |
| **CQRS** | Explicitly separates commands/mutations from queries/read projections; can share one database. | Different validation and read workloads. | Duplicate models, synchronization and maintenance. |
| Event sourcing | Persisted events are the source used to reconstruct state, often with snapshots/projections. | Audit-intensive complex domain workflows. | Event evolution, replay, privacy/deletion and debugging. |
| Event notification | Publish a fact after a state change for other consumers. | Loose cross-module notification. | Subscribers and duplicate delivery need contracts. |
| Transactional outbox | Record outgoing events/messages in the same local transaction as business state, then publish asynchronously. | Preventing DB-commit / message-publish gaps. | Dispatcher, duplication and cleanup complexity. |
| Pub/sub | Producers send messages to topics; multiple subscribers receive them. | Broadcast work and integrations. | Delivery guarantees and ordering vary by broker. |
| Work queue | Tasks are delivered to competing workers for processing. | Background media processing and notifications. | Idempotency, retries and poison messages. |
| Request-response | Caller waits for a synchronous response, typically HTTP/RPC. | Interactive reads and commands. | Temporal coupling, timeouts and cascading failure. |
| Orchestration | A coordinator directs multi-step workflows across components. | Auditable long-running business processes. | Central coordinator coupling and recovery logic. |
| Choreography | Components react to events without one central coordinator. | Decoupled workflows with simple participants. | Harder to see global process and failure recovery. |
| Saga | Long-running transaction across components uses local commits and compensating actions. | Distributed workflows requiring partial recovery. | Compensation is not true rollback and may be complex. |
| Database-per-service | Each independently deployed service owns its persisted data and exposes contracts. | Strong microservice autonomy. | Cross-service queries and consistency challenges. |
| Shared database | Multiple modules/services use one DB; internal shared schema needs explicit ownership rules. | Monoliths and migration phases. | Cross-boundary table writes create deep coupling. |
| Materialized view / projection | Derived read-optimized data is maintained from canonical state. | Search, dashboards and read performance. | Refresh lag and reconstruction burden. |
| Cache-aside | Application reads cache, loads miss from canonical source, writes results into cache. | Frequently read expensive data. | Invalidation and stale values. |
| Offline-first synchronization | Client commits local durable changes then reconciles with server asynchronously. | PWA/field operations with poor connectivity. | Conflicts, identity, deduplication and data-loss safeguards. |
| Change data capture (CDC) | Database transaction/log changes are published to other consumers. | Replication, analytics and legacy integration. | Schema coupling and operational lag. |
| API gateway | Edge entry point mediates routing and selected cross-cutting API concerns. | Multiple backend APIs. | Bottleneck and over-centralization. |
| Anti-corruption layer | Adapter translates an external domain's model into the application's local vocabulary. | Legacy and third-party integration. | Translation maintenance and loss of semantics. |

## Structural example: transaction + event

~~~text
packages/Media/
├── Application/
│   └── RecordCapture.php
├── Domain/
│   └── Events/CaptureRecorded.php
├── Contracts/
│   └── CaptureEvents.php
└── Infrastructure/
    ├── Persistence/
    └── Messaging/OutboxPublisher.php
~~~

Publishing an event after a successful database transaction without durable outbox coordination has a failure window. Similarly CQRS is not synonymous with two databases, and event sourcing is not required for events or CQRS. Schema-level tenant checks do not replace authorization.

Sources: [Martin Fowler enterprise patterns](https://martinfowler.com/eaaCatalog/), [Microsoft CQRS](https://learn.microsoft.com/en-us/azure/architecture/patterns/cqrs), [Microsoft transactional outbox](https://learn.microsoft.com/en-us/azure/architecture/databases/guide/transactional-outbox-cosmos).
