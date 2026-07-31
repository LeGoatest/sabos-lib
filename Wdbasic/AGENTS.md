# WDBASIC Agent Instructions

> **Canonical entry point:** [`README.md`](README.md)  
> **Standards registry:** [`STANDARDS.md`](STANDARDS.md)

These instructions apply to automated agents, coding assistants, reviewers, and contributors editing governed files or implementations.

## 1. Required reading order

Before changing architecture, markup, styling, components, accessibility, authoring, media, internationalization, security, privacy, conversion, native shells, generated output, or documentation, read:

1. [`architecture_rules.md`](architecture_rules.md)
2. [`README.md`](README.md)
3. [`STANDARDS.md`](STANDARDS.md)
4. Applicable cross-cutting contracts
5. [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md)
6. Relevant files under [`tokens/`](tokens/)
7. [`components/component-contracts.md`](components/component-contracts.md)
8. The active profile
9. Product documentation, evidence, claim records, and exceptions

The former `Wdbasic/wdbasic_v2.md` path is obsolete.

## 2. Scope resolution

Before editing, identify:

- Affected routes, components, fragments, templates, stylesheets, custom elements, and generated output.
- Governing WDBASIC documents.
- Active profile.
- WCAG criteria affected.
- Reusable ACT rules or manual procedures affected.
- Whether ATAG applies.
- Whether cognitive-accessibility requirements apply.
- Whether native, hybrid, custom-viewer, or non-web document requirements apply.
- Security, privacy, internationalization, media, search, and conversion impact.
- Existing evidence, claim language, and exceptions.

Do not infer profile, conformance, permission, business state, platform support, or standards status from appearance or filenames alone.

## 3. Required behavior

Agents must:

- Preserve server-rendered primary content.
- Prefer valid native HTML.
- Use HTMX for server-owned interaction.
- Keep JavaScript local and non-authoritative.
- Use semantic tokens and component classes.
- Preserve names, roles, states, values, relationships, keyboard operation, focus, and announcements.
- Verify accessibility-tree behavior for custom elements, shadow DOM, canvas, or native/web-view boundaries.
- Implement complete states and failure paths.
- Preserve language, direction, captions, transcripts, alternative text, and author-provided accessibility metadata.
- Preserve accessible structure through imports, sanitization, exports, and format conversion.
- Keep claims and proof factual.
- Maintain baseline operation without enhancement scripts where required.
- Keep native-shell, web-content, and document-format evaluations separately scoped.
- Update documentation, matrices, ACT rules, examples, claim templates, and evidence when contracts change.

## 4. Prohibited behavior

Agents must not:

- Create client-only primary public content.
- Use client state as authorization evidence.
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
- Add third-party scripts, telemetry, permissions, or data collection without purpose and review.
- Scatter repeated Tailwind utility piles through templates.
- Put styling logic in JavaScript.
- Weaken contrast, focus, labels, errors, keyboard access, cognitive clarity, or user agency.

## 5. Standards and claim review

When a change affects a standards claim:

1. Verify the exact external standard, version, publication status, and applicability.
2. Confirm that the claim scope includes full pages, responsive variations, and complete processes where WCAG applies.
3. Confirm relied-upon technologies and accessibility-supported environments.
4. Resolve all failed, `cantTell`, `untested`, blocked, and manual-pending results.
5. Verify required conformance-claim fields.
6. Use `evaluated-nonconformant` for ordinary known failures.
7. Use a WCAG Statement of Partial Conformance only for the narrowly defined third-party-content or language-support conditions.
8. Keep WDBASIC conformance separate from WCAG, native-platform, document-format, security, privacy, and sustainability claims.

Never improve claim wording to sound more favorable than the underlying evidence.

## 6. ACT rule governance

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

## 7. Change protocol

1. Resolve authority and scope.
2. Inspect implementation and evidence.
3. Identify affected standards criteria, WDBASIC contracts, and ACT rules.
4. Change the smallest coherent set of files.
5. Update linked contracts, matrices, rules, examples, outputs, and claims in the same change set.
6. Run applicable build, syntax, accessibility, link, output, platform, and test checks.
7. Inspect generated output when an authoring or export path changes.
8. Record unresolved failures honestly.
9. Report changed files, tests, evidence, claim impact, and exceptions.

## 8. Stop conditions

Do not claim completion when:

- Required source content is unavailable.
- A write did not reach the intended branch.
- A referenced path is broken.
- Applicable manual testing remains undone but conformance is claimed.
- A reusable rule lacks a version, subject, or evidence record.
- A security or privacy requirement is guessed.
- Generated output was not inspected after an authoring change.
- Native and web responsibilities cannot be separated.
- A format-specific document baseline is required but unresolved.
- A standards conflict or publication-status uncertainty remains unresolved.

Partial implementation may be delivered, but its status and remaining gaps must be explicit.

## 9. Completion report

Report:

```text
scope
changed files
controlling contracts
standards and criteria affected
ACT rules affected
claim status impact
validation performed
manual testing still required
generated or non-web output reviewed
evidence updated
exceptions or blockers
commit or pull request
```

Do not report a check as passed unless it was actually performed.
