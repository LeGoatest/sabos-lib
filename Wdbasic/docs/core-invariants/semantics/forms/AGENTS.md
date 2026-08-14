# WDBASIC Forms Agent Instructions

> **Status:** Binding for work under `Wdbasic/docs/forms/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Primary contract:** [`README.md`](README.md)

This directory governs form architecture, validation, submission lifecycle, security, recovery, and related evidence.

## Read first

1. [`../architecture_rules.md`](../architecture_rules.md)
2. [`../framework-contract.md`](../framework-contract.md)
3. [`README.md`](README.md)
4. [`validation.md`](validation.md)
5. [`security.md`](security.md)
6. Applicable accessibility, privacy, authoring, and component contracts

## Preserve

Agents MUST preserve:

- server authority for validation, authorization, business rules, and persistence;
- explicit field allowlists and submitted shapes;
- accessible labels, instructions, errors, summaries, focus, announcements, and recovery;
- CSRF, authentication, authorization, request-limit, upload, replay, rate-limit, and idempotency decisions;
- truthful HTTP/status behavior and complete success/failure states;
- privacy, retention, logging, and sensitive-data constraints.

## Do not

Agents MUST NOT:

- treat client-side validation as a security boundary;
- infer authorization from hidden/disabled/client-controlled values;
- weaken validation or security rules to make a new implementation pass;
- silently change field meaning, route/method contracts, persistence semantics, or response conventions;
- document a happy-path-only form as complete.

Material changes to the form lifecycle, security model, or field contract are governed mutations and require repository change control unless explicitly requested.

## Validation

Use the testing requirements in [`README.md`](README.md) plus applicable WDBASIC compliance procedures. Validate full-page, no-JavaScript, enhanced/HTMX, malformed, expired-session, duplicate, concurrent, and failure paths as applicable.

## Changelog

Notable form-contract changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
