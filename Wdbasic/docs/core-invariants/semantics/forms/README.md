# WDBASIC Form Contract

> **Authority:** Binding form architecture and lifecycle contract  
> **Semantic domain:** [`../README.md`](../README.md)  
> **Validation contract:** [`validation.md`](validation.md)  
> **Security contract:** [`security.md`](security.md)  
> **Architecture dependency:** [`../../http-url-integrity/architecture-rules.md`](../../http-url-integrity/architecture-rules.md)  
> **Accessibility dependency:** [`../tokens/accessibility.md`](../tokens/accessibility.md)

This contract governs forms rendered, processed, generated, embedded, or submitted by WDBASIC implementations.

## 1. Scope

It applies to public forms, authentication/recovery/invitation, client/admin/authoring interfaces, settings/filters/bulk actions, uploads/payments/consequential actions, multi-step processes, HTMX-enhanced forms, generated forms, form-associated custom elements, and native/hybrid shells that submit equivalent data.

## 2. Core principles

Every form must:

- use native HTML controls where they provide the required behavior;
- keep an appropriate trusted boundary authoritative for validation, authorization, business rules, and persistence;
- collect only information required for the declared task;
- state purpose, requirements, formats, and consequences before they are needed;
- preserve non-sensitive input after recoverable failure where safe;
- distinguish validation, authorization, conflict, rate-limit, and unexpected failures;
- provide accessible pending, error, success, and recovery states;
- remain secure when client validation or enhancement is bypassed;
- avoid treating validation as encoding, sanitization, authorization, or injection prevention.

Normal server submission is preferred as a baseline where it fits the selected technology profile, but v2.1 does not require every valid application to operate identically without JavaScript.

## 3. Standard lifecycle

A form workflow resolves, as applicable:

1. **Render** — purpose, labels, instructions, constraints, request-integrity state, and authorized values.
2. **Input** — native semantics and appropriate input assistance.
3. **Local validation** — native/client feedback for obvious correctable errors.
4. **Admission** — route, method, content type, size, origin/request-integrity, authentication, and shape.
5. **Canonicalization** — field-specific normalization without destroying meaningful data.
6. **Syntactic validation** — requiredness, type, length, shape, range, and allowed structure.
7. **Semantic validation** — domain meaning, cross-field consistency, current state, uniqueness, and business rules.
8. **Authorization** — actor permission for the resolved object/tenant/account/record.
9. **Abuse controls** — proportionate rate, replay, honeypot, upload, and escalation controls.
10. **Atomic effect** — transaction/compensation/idempotency behavior for persistence and side effects.
11. **Response** — truthful validation, conflict, rate-limit, success, or failure state.
12. **Audit** — consequential outcomes recorded without secrets or unnecessary personal values.

A client-side pass never skips integrity-critical lifecycle stages.

## 4. Form definition record

Reusable or consequential forms should record purpose/owner, route and methods, rendering/enhancement profile, authentication/authorization, request-integrity policy, field schema, unexpected-field policy, request limits, rate limits, idempotency, response conventions, audit events, and evidence.

## 5. Field contract

Each field defines business meaning, submitted representation, required/optional status, permitted shape, length/count/size/range constraints, input-purpose/autocomplete behavior, normalization, syntactic and semantic rules, instructions/examples, error identifiers/messages, sensitivity, retention/logging, redisplay policy, and authorization implications.

Hidden fields, query parameters, cookies, headers, disabled controls, signed values, and JavaScript state remain untrusted when they influence a material action.

## 6. States and responses

Implement applicable states such as default, required, disabled/read-only, pending, invalid, conflict, rate-limited, expired, unauthorized/forbidden, uploading/processing, success, recoverable/unrecoverable error, and offline.

Visual state, native validity, ARIA state, server/service response, and stored state must not contradict each other.

HTTP outcomes follow [`../../http-url-integrity/architecture-rules.md`](../../http-url-integrity/architecture-rules.md). A project may use documented response conventions, but visible and transport outcomes must remain truthful.

## 7. HTMX and asynchronous checks

HTMX-enhanced forms follow [`../../../technology-profiles/htmx-hypermedia.md`](../../../technology-profiles/htmx-hypermedia.md). Enhanced submission does not create a second validation/security model.

Asynchronous checks are advisory until the final authoritative operation revalidates conditions that can change.

## 8. Multi-step and generated forms

Multi-step flows expose progress, preserve accepted information, revalidate dependencies, protect drafts, define expiration/recovery, allow review/correction for consequential information, and remain one complete accessibility/security workflow.

Generated forms also follow [`../authoring/accessible-output.md`](../authoring/accessible-output.md) and may not let untrusted authors define privileged routes, model properties, recipients, storage paths, ownership, permission, or security fields without explicit authorization.

## 9. Testing

Test applicable forms for direct load, selected baseline/enhanced paths, bypassed client validation, malformed/unexpected/duplicate input, keyboard and assistive-technology behavior, zoom/narrow width, slow network/retry/refresh, session/request-integrity expiration, rate/challenge fallback, concurrent modification, uploads, and sensitive-data redaction.

Reusable accessibility procedures follow [`../../accessibility/compliance/act-rule-template.md`](../../accessibility/compliance/act-rule-template.md) where applicable.

## 10. Adoption record

```yaml
forms:
  inventory: <path>
  validation_contract: Wdbasic/docs/core-invariants/semantics/forms/validation.md
  security_contract: Wdbasic/docs/core-invariants/semantics/forms/security.md
  field_schema_source: <path>
  response_convention: <path>
  csrf_policy: <path>
  upload_policy: <path-or-none>
  rate_limit_policy: <path>
  test_evidence: <path>
  exceptions: []
  owner: <role>
  last_reviewed: <ISO-8601-date>
```
