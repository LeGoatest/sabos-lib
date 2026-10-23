# Illustrative Capability Contract: Document Revision

> **Status:** Example only. No software, permission or endpoint is installed by this document.

## Capability

- **Name:** Document revisions (a hypothetical capability).
- **Owns:** Revision history, publish eligibility and approved revision transitions.
- **Does not expose:** Unpublished revisions to unauthorized actors; raw storage credentials; arbitrary database queries or privileged command execution.
- **Consumers:** Content editing UI, internal publication worker, authorized API clients.

## Conceptual operations

| Identifier | Kind | Meaning | Boundary |
| --- | --- | --- | --- |
| `content.revision.list` | Query | Return a paginated filtered revision summary. | Actor may only view documents in permitted scope. |
| `content.revision.read` | Query | Return one authorized revision projection. | Avoid leaking private storage fields. |
| `content.revision.publish` | Command | Request a version-checked publish transition. | Requires publish policy, expected version and valid domain state. |

These identifiers are **not public URLs, route definitions or permissions**.

## Example workflow

An editor sees draft revisions and can request a publish operation if the UI believes the action is available. The server independently checks the authenticated actor, document ownership/tenant scope, revision state and publish policy. A successful transition persists the intended state atomically where possible; an optional publication event is emitted with a safe payload. A forbidden or stale request receives a stable safe error. The UI does not obtain unrestricted storage access.

## Illustrative file organization

```text
packages/content/
├── Domain/
├── Application/
│   ├── Commands/PublishRevision.php
│   └── Queries/ListRevisions.php
├── Contracts/
│   ├── Operations/
│   ├── Interfaces/
│   └── Data/
├── Infrastructure/
└── Presentation/
```

This shape is only one combination of a capability module and published operation contracts. Do not copy these folders into an existing project without considering framework conventions and actual scope. No claim is made that this example reflects the current implementation of any project.

See [operation profile](../docs/abstractions/operation-profile.md) and [ownership guidance](../docs/abstractions/contracts-and-boundaries.md).
