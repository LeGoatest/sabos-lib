# Contracts, Abstractions and Capability Operations

> **Status:** Informative architectural guidance; not automatically binding on adopting applications.

An **abstraction** describes *what* a capability owns, provides, permits and refuses to expose, independently of *how* its code, database or UI is implemented. It is not necessarily a PHP `abstract class` or even a programming-language interface.

## Topics

- [Capability operations](capability-operations.md): conceptual operation names, role-aware workflows, command/query semantics, access policies, failures and auditing.
- [Contracts and boundaries](contracts-and-boundaries.md): module ownership, published versus private interfaces, ports, adapters, DTOs, domain events and dependencies.
- [Generic capability profile](operation-profile.md): reusable documentation structure with illustrative identifiers and no product-specific process.
- [Illustrative example](../../examples/capability-operation.md): one abstract content capability; not a real application's registered operations.
- [Directory conventions](../structure/directory-conventions.md): where these structures may live.

## Levels

```text
Capability (purpose, owner, responsibilities, exclusions)
├── Role-aware workflows (what users/systems may attempt)
├── Conceptual operations (commands and queries)
│   ├── Inputs, safe outputs and stable errors
│   ├── Actor, resource and tenant authorization
│   ├── Invariants, transactions and retry behavior
│   └── Events, audit and prohibited exposures
├── Published contract (what consumers may rely on)
└── Private implementation (how the capability fulfills the contract)
    ├── Application/domain logic
    ├── Private state and infrastructure adapters
    └── Transport/presentation adapters
```

A named operation does **not** create a URL, permission, executable method or deployment. Separately record whether a capability is proposed, placeholder, source-present, validated or deployed. Consumers of a capability may include browser screens, a command-line interface, jobs or other modules; no particular UI owns the general pattern.

**Subject boundaries:** SCAFbasic governs structure/abstraction ownership, WDBASIC governs web behavior and security, DBbasic governs relational integrity and database transactions, DevOpsbasic governs deployment, and repository governance controls adoption and changes.
