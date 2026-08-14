# WDBASIC Implementation Agent Contract

> **Status:** Binding for implementation/review work  
> **Canonical entry point:** [`../README.md`](../README.md)  
> **Core invariants:** [`core-invariants.md`](core-invariants.md)  
> **Architecture contract:** [`architecture_rules.md`](architecture_rules.md)

These instructions apply to automated agents, coding assistants, reviewers, and contributors editing governed files or implementations.

## 1. Required reading order

Before changing architecture, markup, styling, components, accessibility, authoring, media, internationalization, security, privacy, conversion, forms, native shells, generated output, or documentation, read:

1. [`core-invariants.md`](core-invariants.md)
2. [`architecture_rules.md`](architecture_rules.md)
3. [`framework-contract.md`](framework-contract.md)
4. [`STANDARDS.md`](STANDARDS.md)
5. Applicable cross-cutting contracts
6. [`forms/README.md`](forms/README.md), [`forms/validation.md`](forms/validation.md), and [`forms/security.md`](forms/security.md) when input, submission, validation, upload, authentication, or state change is involved
7. Applicable [`content-strategies/`](content-strategies/README.md)
8. Applicable [`technology-profiles/`](technology-profiles/README.md)
9. Relevant token/component contracts and active design profile
10. Product documentation, evidence, claim records, and exceptions

## 2. Scope resolution

Before editing, identify:

- affected routes, components, fragments, forms, fields, templates, stylesheets, custom elements, generated output, and platform boundaries;
- governing core invariants and contracts;
- applicable content strategy;
- applicable technology profile(s);
- active design/profile rules;
- accessibility criteria/evidence affected;
- security/privacy/form requirements;
- search/discoverability impact for public content;
- performance/resilience impact;
- existing evidence, claim language, and exceptions.

For forms/state change, also identify field allowlists, submitted shapes, validation layers, authentication/authorization, CSRF/request-integrity, replay/concurrency/idempotency, rate/upload limits, sensitive data, retention, logging, and failure paths.

Do not infer conformance, permission, business state, field authority, platform support, standards status, or technology applicability from appearance or client state.

## 3. Required behavior

Agents must:

- preserve non-compensatory core invariants;
- prefer native semantics before unnecessary ARIA;
- keep privileged trust decisions in an appropriate trusted boundary;
- use explicit field allowlists and safe structured APIs;
- preserve accessibility names, roles, states, values, relationships, keyboard operation, focus, and announcements;
- implement complete loading, empty, validation, conflict, rate-limit, error, recovery, and success behavior where applicable;
- preserve language, direction, captions, transcripts, alternative text, and accessibility metadata;
- use context-sensitive output encoding and reviewed sanitization where applicable;
- verify authentication, authorization, CSRF/request integrity, limits, uploads, replay/concurrency/idempotency for state changes;
- keep claims/proof factual;
- preserve direct-load and recovery behavior required by the active technology profile;
- update documentation, evidence, schemas, matrices, examples, and claims when contracts change.

## 4. Technology neutrality

Agents must not treat HTMX, Tailwind, SSR, static generation, a JavaScript framework, or a hybrid/native shell as a universal WDBASIC core requirement.

Instead:

- select the technology profile that fits the product;
- document why it fits;
- verify its cache/history/state/security/accessibility/performance behavior;
- preserve core invariants regardless of implementation technology.

HTMX-specific rules live in [`technology-profiles/htmx-hypermedia.md`](technology-profiles/htmx-hypermedia.md).

Tailwind-specific rules live in [`technology-profiles/tailwind-tcbasic.md`](technology-profiles/tailwind-tcbasic.md) and TCbasic/project contracts.

## 5. Content-strategy neutrality

Agents must not force PAS or any single persuasion sequence onto every page.

Select strategy from user intent, awareness, task, decision stage, risk, evidence, and page objective.

The hardened law is:

> **Relevance precedes or accompanies persuasion.**

PAS is used only when problem/consequence framing genuinely helps the intended user.

Do not use the historical `P(7)+A(5)+S(8)` rubric or any `Efficacy - Threat` equation as a canonical current WDBASIC score.

## 6. Evaluation rules

Current WDBASIC evaluation is gate-first.

Core failures in accessibility, security, privacy, truthfulness, HTTP/URL integrity, semantics, or required evidence cannot be offset by higher discoverability, conversion, trust, or performance results.

The superseded additive 100-point model must not be reported as current WDBASIC evaluation.

Use [`experience-evaluation.md`](experience-evaluation.md) for current diagnostics.

## 7. Prohibited behavior

Agents must not:

- treat browser/client validation as a security boundary;
- use client state, hidden fields, disabled controls, submitted IDs, signed values, caches, or local storage as sufficient authorization evidence;
- bind arbitrary request fields directly to protected domain models;
- accept client-supplied privileged role/tenant/owner/price/discount/status/path/workflow values as truth;
- concatenate submitted input into SQL, shell commands, templates, headers, paths, or other interpreters;
- return unencoded submitted values into output contexts;
- replace native semantics with unnecessary ARIA or ship partial ARIA patterns;
- fabricate alternative text, captions, credentials, reviews, statistics, citations, conformance results, or test evidence;
- treat automated accessibility output as proof of conformance;
- convert `cantTell`, `untested`, blocked, manual-pending, failed, or unknown results into passes;
- add third-party scripts, telemetry, permissions, or data collection without purpose and review;
- log passwords, tokens, payment data, full sensitive values, or unnecessary submitted content;
- present WDBASIC preferences as Google, W3C, OWASP, Semrush, Tailwind, HTMX, or academic requirements without source support;
- claim a rendering technology is automatically faster, more accessible, or better for SEO without evidence.

## 8. Form review protocol

For every new or changed form:

1. confirm purpose and minimum necessary fields;
2. define explicit schema/allowlist and unexpected-field policy;
3. define normalization and syntactic/semantic/cross-field/state validation;
4. define accessible labels, instructions, inline errors, summary, focus, announcements, preservation, pending, and success behavior;
5. verify route, method, content type, size, field/file count, and nesting limits;
6. verify authentication, CSRF/request integrity, action authorization, object ownership, and tenant isolation;
7. verify mass-assignment protection, safe queries/APIs, output encoding, and sanitization;
8. verify duplicate/replay/concurrency/transaction/idempotency behavior;
9. verify rate limits, bot defense, challenge fallback, file processing, and third-party failure;
10. verify sensitive-data collection, autocomplete, retention, redisplay, analytics, logging, and audit;
11. test applicable technology-profile paths, including direct load, expired session, failure, and recovery.

Do not call a form complete merely because its ideal submission succeeds.

## 9. Standards and claim review

When a change affects a standards claim:

1. verify exact standard, version, publication status, applicability, and scope;
2. verify relied-upon technologies and accessibility-supported environments where relevant;
3. resolve failed, `cantTell`, untested, blocked, and manual-pending results;
4. verify required claim fields;
5. keep WDBASIC, WCAG, native-platform, document-format, security, privacy, sustainability, and maturity claims separate;
6. never improve claim wording beyond the evidence.

## 10. Change protocol

1. resolve authority and scope;
2. inspect implementation and evidence;
3. identify affected core invariants, contracts, standards, strategies, profiles, forms, and reusable tests;
4. change the smallest coherent set of files;
5. update linked contracts, indexes, schemas, evidence, examples, and claims in the same change set;
6. run applicable build, syntax, accessibility, validation, security, link, output, platform, performance, and profile-specific checks;
7. inspect generated or dynamic output when relevant;
8. record unresolved failures honestly.

## 11. Stop conditions

Do not claim completion when:

- a required source or controlling contract is unavailable;
- a write did not reach the intended branch/path;
- a referenced path is broken;
- an applicable core invariant remains materially failed or unknown while a positive WDBASIC claim is made;
- a form lacks explicit field authority, validation, authorization, or request-integrity decisions;
- a state change is exposed through a safe method;
- unsafe interpreter concatenation or unrestricted mass assignment exists;
- an upload lacks content/size/storage/processing/access/retention/cleanup controls;
- applicable manual testing remains undone but conformance is claimed;
- a security/privacy requirement is guessed;
- technology-profile cache/history/direct-load/failure behavior is unresolved where material;
- a standards conflict or publication-status uncertainty remains unresolved.

Partial work may be delivered, but remaining gaps must be explicit.

## 12. Completion report

Report:

```text
scope
changed files
core invariants affected
controlling contracts
content strategy selected
technology profiles selected
forms/fields affected
security/privacy controls affected
standards/criteria affected
validation performed
accessibility testing performed
security testing performed
performance evidence reviewed
manual testing still required
generated/non-web output reviewed
evidence updated
exceptions/blockers
commit or pull request
```

Do not report a check as passed unless it was actually performed.
