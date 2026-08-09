# WDBASIC Agent Instructions

> **Status:** Binding for automated work under `Wdbasic/`  
> **Canonical entry point:** [`README.md`](README.md)  
> **Knowledge index:** [`docs/README.md`](docs/README.md)  
> **Detailed implementation agent contract:** [`docs/implementation-agent-contract.md`](docs/implementation-agent-contract.md)

WDBASIC is a binding framework-independent web architecture and implementation-contract knowledge system.

## Required reading order

Before changing WDBASIC-governed material or implementing against WDBASIC:

1. Read [`README.md`](README.md).
2. Read [`docs/architecture_rules.md`](docs/architecture_rules.md).
3. Read [`docs/framework-contract.md`](docs/framework-contract.md).
4. Read [`docs/STANDARDS.md`](docs/STANDARDS.md).
5. Read [`docs/implementation-agent-contract.md`](docs/implementation-agent-contract.md) for implementation/review work.
6. Read [`docs/AGENTS.md`](docs/AGENTS.md).
7. Read the nearest local `AGENTS.md` and applicable subject contracts.
8. Read the active profile, evidence, and product-specific requirements.

## Non-negotiables

Agents MUST preserve:

- server authority for validation, authorization, business rules, and persistence where applicable;
- valid/native semantics before unnecessary ARIA;
- accessibility names, roles, states, values, relationships, keyboard operation, focus, and announcements;
- security/privacy boundaries, explicit field allowlists, safe APIs, output encoding, and request integrity;
- progressive enhancement and baseline operation where required;
- truthful claims and evidence;
- separation between WDBASIC conformance, external standards conformance, maturity, security, privacy, sustainability, and product-specific claims;
- local contract/profile authority and explicit exceptions.

Agents MUST NOT weaken a contract merely because an implementation or example currently fails it.

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

Unrequested architecture, contract, conformance, security, accessibility, or authority changes follow repository change control. Do not silently redefine established WDBASIC behavior.

## Governing doctrine

> **Preserve the contracts. Preserve the evidence. Keep implementation convenience subordinate to governed behavior.**
