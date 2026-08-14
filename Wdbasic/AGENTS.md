# WDBASIC Agent Instructions

> **Status:** Binding for automated work under `Wdbasic/`  
> **Canonical entry point:** [`README.md`](README.md)  
> **Knowledge index:** [`docs/README.md`](docs/README.md)  
> **Detailed implementation agent contract:** [`docs/implementation-agent-contract.md`](docs/implementation-agent-contract.md)

WDBASIC is a binding framework-independent web architecture, experience, content-strategy, and implementation-contract knowledge system.

## Required reading order

Before changing WDBASIC-governed material or implementing against WDBASIC:

1. Read [`README.md`](README.md).
2. Read [`docs/core-invariants.md`](docs/core-invariants.md).
3. Read [`docs/architecture_rules.md`](docs/architecture_rules.md).
4. Read [`docs/framework-contract.md`](docs/framework-contract.md).
5. Read [`docs/STANDARDS.md`](docs/STANDARDS.md).
6. Read [`docs/implementation-agent-contract.md`](docs/implementation-agent-contract.md) for implementation/review work.
7. Read [`docs/AGENTS.md`](docs/AGENTS.md).
8. Read the nearest local `AGENTS.md` and applicable subject contracts.
9. Resolve the applicable [`docs/content-strategies/`](docs/content-strategies/README.md) and [`docs/technology-profiles/`](docs/technology-profiles/README.md).
10. Read the active design/profile evidence and product-specific requirements.

## Non-negotiables

Agents MUST preserve:

- non-compensatory core invariants;
- trusted-boundary authority for authentication, authorization, privileged business rules, validation integrity, and persistence where applicable;
- valid/native semantics before unnecessary ARIA;
- accessibility names, roles, states, values, relationships, keyboard operation, focus, and announcements;
- security/privacy boundaries, explicit field allowlists, safe APIs, output encoding, and request integrity;
- truthful claims and evidence;
- HTTP/URL integrity where applicable;
- resilience and recoverability appropriate to the active technology profile;
- separation between WDBASIC conformance, external standards conformance, heuristics, maturity, security, privacy, sustainability, and product-specific claims;
- local contract/profile authority and explicit exceptions.

Agents MUST NOT:

- treat HTMX, Tailwind, SSR, static generation, or a JavaScript framework as a universal WDBASIC core requirement;
- force PAS onto pages where user intent calls for another strategy;
- use the superseded additive 100-point model as current WDBASIC evaluation;
- convert accessibility, security, privacy, truthfulness, or HTTP failures into compensatory score deductions;
- present WDBASIC preferences as Google, W3C, OWASP, Semrush, or academic requirements without source support.

## Forms

Any input, submission, upload, authentication, or state-changing workflow requires the applicable contracts under [`docs/forms/`](docs/forms/README.md), including validation and security.

## Standards and evidence

Do not report a check as passed unless it was performed. Preserve `failed`, `cantTell`, `untested`, `blocked`, `manual_review_required`, and similar outcomes honestly.

External standards retain their own applicability and conformance language. WDBASIC exceptions cannot convert an external failure into a pass.

## Structural changes

The WDBASIC root is navigational. Long-form knowledge belongs under [`docs/`](docs/README.md).

When moving material:

- preserve substantive contract wording unless content change is intentional;
- update relative links and local authority paths;
- update [`CHANGELOG.md`](CHANGELOG.md) for notable canonical-path changes;
- keep the root README/AGENTS concise.

## Mutation gate

Unrequested architecture, contract, conformance, security, accessibility, authority, content-strategy, or technology-profile changes follow repository change control. Do not silently redefine established WDBASIC behavior.

## Governing doctrine

> **Be strict about outcomes, evidence, truth, access, integrity, and recovery; be flexible about technology and persuasion patterns when multiple valid approaches satisfy the invariants.**
