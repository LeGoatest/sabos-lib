# Contracts, Interfaces, Ports and Ownership

> **Status:** Reusable structure guidance, not automatically binding on adopters.

## Ownership matrix

| Responsibility | Owner | Consumer boundary |
| --- | --- | --- |
| Business invariants, entities, domain terms | Business capability / bounded context | Call published operations; do not duplicate private logic |
| Operation semantics, input/output and errors | Capability that publishes them | Depend on contract, not private controller implementation |
| Data writes and persistent state | Owning capability's persistence boundary | Do not write another module's private tables directly |
| Authentication and policy enforcement | Application security boundary plus resource-specific capability policy | UI role-awareness is insufficient |
| Read models and projections | Owning capability | Expose minimal authorized fields, not raw ORM objects |
| Domain/integration events | Event producer | Publish versioned safe facts; consumers handle replays |
| Transport adapters | UI/API/CLI/job adapter | Parse/translate; not owner of private business rules |
| Provider secrets and external integration | Owning infrastructure adapter | Narrow safe operations, no secret disclosure/generic provider proxy |
| Auditing and retention | Relevant operation owner + shared facilities | Sanitized actor/action/target/outcome and retention rules |

**Ownership is logical.** Distinct modules may share one process/database and still have protected contracts and controlled data writes. Database constraints do not replace authorization.

## Abstraction forms

- **Conceptual capability:** human-readable scope, approved workflows, operations and excluded responsibilities.
- **Published operation contract:** stable semantic request/result/error/side-effect guarantees for consumers.
- **Interface / port:** language-level dependency abstraction; often used where an integration needs substitution or testing.
- **Abstract class:** inheritance/reuse technique, *not* required by an operation or module boundary.
- **DTO / schema:** safe typed data shape that avoids leaking private persistence/provider objects.
- **Adapter:** translation between contracts and transport, storage or a provider.
- **Domain event:** past-tense fact with declared producer and delivery/compatibility semantics.
- **Policy:** authorization rule evaluated for actor, action and specific resource/scope.

Do not require interfaces, base classes, DTOs and extra layers for every simple function. Introduce them where a stable boundary or real consumer needs them.

## Example organization — optional

```text
packages/<capability>/
├── Domain/            # Rules/invariants
├── Application/       # Commands, queries and workflows
├── Contracts/         # Published interfaces, operations and DTOs
│   ├── Interfaces/
│   ├── Operations/
│   └── Data/
├── Infrastructure/    # Private persistence and integration adapters
└── Presentation/      # Optional HTTP/UI/CLI adapters
```

The shape is illustrative. A compact MVC module may combine responsibilities into fewer folders. Preserve framework conventions and don't create empty folders unless explicitly authorized as placeholders.

## Dependency and change guidance

A caller uses a **published contract**, not another module's private repository or controller. The owner enforces authorization/invariants, performs local state changes, emits documented events and returns sanitized results. Contracts should include compatibility policy and tests for forbidden access, tenant isolation, version conflicts, replay/idempotency and sensitive field redaction as warranted by risk.

Avoid circular dependencies and generic all-powerful core services. Contract ownership belongs to the relevant capability, while cross-cutting plumbing can reside in a shared foundation.

Related: [operation semantics](capability-operations.md), [SCAFbasic directory structure](../structure/directory-conventions.md), [WDBASIC](../../../Wdbasic/README.md) and [DBbasic](../../../DBbasic/README.md).
