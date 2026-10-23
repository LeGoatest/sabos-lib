# Generic Capability and Operation Profile

> **Status:** Reusable *documentation template*. These keys are illustrative, not an installed registry, schema, permission or endpoint.

Remove fields that do not apply; do not fabricate implemented resources.

## Capability description

```yaml
capability:
  name: "<business capability>"
  owner: "<accountable module or bounded context>"
  purpose: "<business outcomes>"
  state: "proposed"  # placeholder | source_present | validated | deployed
  responsibilities:
    - "<approved business responsibilities>"
  exclusions:
    - "<not supported / must never expose>"
  consumers: ["<authorized UI, API, CLI, worker, peer module>"]
  public_interfaces: ["<operations, DTOs, events, ports>"]
  private_resources: ["<data, credentials, provider internals>"]
  evidence: ["<paths/tests/verification or 'not implemented'>"]
```

## Operation description

```yaml
operation:
  id: "<capability>.<resource>.<action>"
  owner: "<capability>"
  kind: "command"            # or query
  status: "proposed"         # not proof of executable behavior
  purpose: "<user/system intent>"
  input: "<validated typed request>"
  output: "<safe typed result or accepted-state>"
  authorization:
    actor: "<trusted caller identity>"
    target: "<specific resource and tenant/scope>"
    policy: "<server-side policy; independently adopted>"
  confidentiality:
    allowed_fields: ["<necessary fields>"]
    forbidden_disclosures: ["<private fields or secrets>"]
  execution:
    invariants: ["<rules>"]
    transaction: "<scope or not applicable>"
    concurrency: "<version/lock/conflict rule>"
    idempotency: "<replay strategy>"
    events: ["<facts emitted upon defined transitions>"]
  errors: ["<safe stable error types and retry semantics>"]
  audit: "<sanitized fields and retention rules>"
  compatibility: "<version/deprecation behavior>"
  evidence: "<actual implementation/validation or 'none'>"
```

Operation IDs are **internal semantic names**, not routes, authorization grants or automatic callable methods. Policies and DTOs above also require actual code and tests before being claimed as implemented.

## Role-aware workflow description

```text
Workflow / goal:
Read-only information allowed:
User-visible actions and restrictions:
Actor/role eligibility and resource scope:
Operations consumed:
Required confirmations and transitions:
Success, denial, conflict and failure states:
Masked or withheld private information:
Explicitly prohibited capabilities / raw access:
Audit, retention and recovery expectations:
Implementation state and verifiable evidence:
```

A user interface can show different actions to different roles without owning those business rules. Server-side policy decisions remain authoritative. See [capability operations](capability-operations.md).
