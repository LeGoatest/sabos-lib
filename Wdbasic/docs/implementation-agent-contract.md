# WDBASIC Agent Instructions

> **Canonical entry point:** [`README.md`](README.md)  
> **Standards registry:** [`STANDARDS.md`](STANDARDS.md)  
> **Form contract:** [`forms/README.md`](forms/README.md)

These instructions apply to automated agents, coding assistants, reviewers, and contributors editing governed files or implementations.

## 1. Required reading order

Before changing architecture, markup, styling, components, accessibility, authoring, media, internationalization, security, privacy, conversion, forms, native shells, generated output, or documentation, read:

1. [`architecture_rules.md`](architecture_rules.md)
2. [`README.md`](README.md)
3. [`STANDARDS.md`](STANDARDS.md)
4. Applicable cross-cutting contracts
5. [`forms/README.md`](forms/README.md), [`forms/validation.md`](forms/validation.md), and [`forms/security.md`](forms/security.md) when input, submission, validation, upload, authentication, or state change is involved
6. [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md)
7. Relevant files under [`tokens/`](tokens/)
8. [`components/component-contracts.md`](components/component-contracts.md)
9. The active profile
10. Product documentation, evidence, claim records, and exceptions

The former `Wdbasic/wdbasic_v2.md` path is obsolete.

## 2. Scope resolution

Before editing, identify:

- Affected routes, components, fragments, forms, fields, templates, stylesheets, custom elements, and generated output.
- Governing WDBASIC documents.
- Active profile.
- WCAG criteria affected.
- Reusable ACT rules or manual procedures affected.
- Whether ATAG applies.
- Whether form validation and form security apply.
- Whether cognitive-accessibility requirements apply.
- Whether native, hybrid, custom-viewer, or non-web document requirements apply.
- Security, privacy, internationalization, media, search, conversion, retention, and audit impact.
- Existing evidence, claim language, and exceptions.

For a form-related change, also identify:

- Form purpose and owner.
- Route and methods.
- Field allowlist and submitted shapes.
- Syntactic, semantic, cross-field, state, and persistence rules.
- Authentication, authorization, ownership, tenant, and CSRF requirements.
- Request, upload, rate-limit, replay, concurrency, and idempotency controls.
- Sensitive-data, retention, output-encoding, logging, and audit rules.
- Full-page, HTMX, custom-element, and generated-form paths.

Do not infer profile, conformance, permission, business state, field authority, platform support, or standards status from appearance, hidden controls, disabled controls, filenames, or client state.

## 3. Required behavior

Agents must:

- Preserve server-rendered primary content.
- Prefer valid native HTML.
- Use HTMX for server-owned interaction.
- Keep JavaScript local and non-authoritative.
- Keep the server authoritative for form validation, authorization, business rules, and persistence.
- Use explicit field allowlists and mapping.
- Use semantic tokens and component classes.
- Preserve names, roles, states, values, relationships, keyboard operation, focus, and announcements.
- Verify accessibility-tree behavior for custom elements, shadow DOM, canvas, or native/web-view boundaries.
- Implement complete states and failure paths.
- Preserve language, direction, captions, transcripts, alternative text, form values where safe, and author-provided accessibility metadata.
- Preserve accessible structure through imports, sanitization, exports, and format conversion.
- Use parameterized queries, safe APIs, context-sensitive output encoding, and reviewed rich-content sanitization where applicable.
- Verify CSRF, authentication, object-level authorization, request limits, upload controls, replay behavior, and idempotency for state-changing forms.
- Keep claims and proof factual.
- Maintain baseline operation without enhancement scripts where required.
- Keep native-shell, web-content, form-processing, and document-format evaluations separately scoped when required.
- Update documentation, schemas, matrices, ACT rules, examples, claim templates, and evidence when contracts change.

## 4. Prohibited behavior

Agents must not:

- Create client-only primary public content.
- Treat browser or JavaScript validation as a security boundary.
- Use client state, hidden fields, disabled controls, signed values, or submitted IDs as authorization evidence.
- Bind arbitrary request fields directly to domain models.
- Accept client-supplied role, tenant, owner, price, discount, status, path, or privileged workflow fields.
- Concatenate submitted input into SQL, shell commands, templates, headers, paths, or other interpreters.
- Return unencoded submitted values to HTML, JavaScript, CSS, URLs, JSON, email, logs, exports, or administrative viewers.
- Replace native semantics with unnecessary ARIA.
- Ship partial ARIA widget patterns.
- Assume custom elements or shadow DOM are accessible because their light-DOM markup appears correct.
- Block password managers or paste without a documented security requirement.
- Require drag, hover, motion, pointer precision, one orientation, or one sensory channel without an equivalent or essential rationale.
- Use CAPTCHA, puzzle solving, or human-verification methods without an accessible alternative and recovery path.
- Fabricate alternative text, captions, credentials, reviews, statistics, conformance results, or test evidence.
- Treat automated accessibility output as proof of conformance.
- Convert `cantTell`, `untested`, blocked, manual-pending, or failed results into passes.
- Call an ordinarily defective first-party implementation “partially conformant.”
- Claim WCAG conformance for a native application or exported document without a valid claim model and applicable baseline.
- Present WCAG2ICT, UAAG 2.0, cognitive guidance, or draft specifications as W3C Recommendations when they are not.
- Add third-party scripts, validation providers, telemetry, permissions, or data collection without purpose and review.
- Log passwords, tokens, payment data, full sensitive values, or unnecessary submitted content.
- Scatter repeated Tailwind utility piles through templates.
- Put styling logic in JavaScript.
- Weaken contrast, focus, labels, errors, form recovery, keyboard access, cognitive clarity, or user agency.

## 5. Form review protocol

For every new or changed form:

1. Confirm the form purpose and minimum necessary fields.
2. Define the explicit field schema and unexpected-field policy.
3. Define field-specific normalization without mutating passwords or meaningful user data.
4. Define syntactic, semantic, cross-field, state, and persistence validation.
5. Define accessible instructions, inline errors, error summary, focus, announcements, preservation, and success behavior.
6. Verify route, method, content type, request size, field count, nesting, and upload limits.
7. Verify authentication, CSRF, action authorization, object ownership, and tenant isolation.
8. Verify mass-assignment protection, parameterized queries, safe APIs, output encoding, and sanitization.
9. Verify duplicate-submission, replay, concurrency, transaction, and idempotency behavior.
10. Verify rate limits, bot defense, challenge fallback, file processing, and third-party failure behavior.
11. Verify sensitive-data collection, autocomplete, retention, redisplay, analytics, logging, and audit behavior.
12. Test full-page, no-JavaScript, HTMX, custom-element, generated, expired-session, and failure paths.

Do not describe a form as complete merely because its ideal submission succeeds.

## 6. Standards and claim review

When a change affects a standards claim:

1. Verify the exact external standard, version, publication status, and applicability.
2. Confirm that the claim scope includes full pages, responsive variations, forms, and complete processes where WCAG applies.
3. Confirm relied-upon technologies and accessibility-supported environments.
4. Resolve all failed, `cantTell`, `untested`, blocked, and manual-pending results.
5. Verify required conformance-claim fields.
6. Use `evaluated-nonconformant` for ordinary known failures.
7. Use a WCAG Statement of Partial Conformance only for the narrowly defined third-party-content or language-support conditions.
8. Keep WDBASIC conformance separate from WCAG, native-platform, document-format, security, privacy, and sustainability claims.

Never improve claim wording to sound more favorable than the underlying evidence.

## 7. ACT rule governance

A reusable automated or manual accessibility procedure must follow [`compliance/act-rule-template.md`](compliance/act-rule-template.md).

Agents must record:

- Rule identifier and version.
- ACT Rules Format version.
- Test implementation and version.
- Applicability and expectations.
- Test subject and state.
- Environment.
- Outcome.
- Evidence.

A rule update that changes interpretation requires versioning and review of dependent evidence and composite rules.

Form validation and security tests that are reused across products must likewise have stable identifiers, versions, fixtures, expected outcomes, and evidence locations.

## 8. Change protocol

1. Resolve authority and scope.
2. Inspect implementation and evidence.
3. Identify affected standards criteria, WDBASIC contracts, form rules, and ACT rules.
4. Change the smallest coherent set of files.
5. Update linked contracts, schemas, matrices, rules, examples, outputs, and claims in the same change set.
6. Run applicable build, syntax, accessibility, validation, security, link, output, platform, and test checks.
7. Inspect generated output when an authoring or export path changes.
8. Inspect full-page and HTMX responses when a form or fragment changes.
9. Record unresolved failures honestly.
10. Report changed files, tests, evidence, claim impact, and exceptions.

## 9. Stop conditions

Do not claim completion when:

- Required source content is unavailable.
- A write did not reach the intended branch.
- A referenced path is broken.
- A form lacks an explicit field allowlist, server validation, authorization, or CSRF decision.
- A state-changing request can be triggered through `GET` or another safe method.
- Client input can mass-assign protected properties.
- A query, command, template, header, or path is built through unsafe concatenation.
- An upload lacks content, size, storage, processing, access, retention, or cleanup controls.
- Applicable manual testing remains undone but conformance is claimed.
- A reusable rule lacks a version, subject, or evidence record.
- A security or privacy requirement is guessed.
- Generated output was not inspected after an authoring change.
- Native and web responsibilities cannot be separated.
- A format-specific document baseline is required but unresolved.
- A standards conflict or publication-status uncertainty remains unresolved.

Partial implementation may be delivered, but its status and remaining gaps must be explicit.

## 10. Completion report

Report:

```text
scope
changed files
controlling contracts
forms and fields affected
validation rules affected
security controls affected
standards and criteria affected
ACT rules affected
claim status impact
validation performed
security testing performed
manual testing still required
generated or non-web output reviewed
evidence updated
exceptions or blockers
commit or pull request
```

Do not report a check as passed unless it was actually performed.
