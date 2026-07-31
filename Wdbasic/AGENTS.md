# WDBASIC Agent Instructions

> **Canonical entry point:** [`README.md`](README.md)

These instructions apply to automated agents, coding assistants, reviewers, and contributors editing governed files or implementations.

## 1. Required reading order

Before changing architecture, markup, styling, components, accessibility, authoring, media, internationalization, security, privacy, conversion, or documentation, read:

1. [`architecture_rules.md`](architecture_rules.md)
2. [`README.md`](README.md)
3. [`STANDARDS.md`](STANDARDS.md)
4. Applicable cross-cutting contracts
5. [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md)
6. Relevant files under [`tokens/`](tokens/)
7. [`components/component-contracts.md`](components/component-contracts.md)
8. The active profile
9. Product documentation, evidence, and exceptions

The former `Wdbasic/wdbasic_v2.md` path is obsolete.

## 2. Scope resolution

Before editing, identify:

- Affected routes, components, fragments, templates, stylesheets, and generated output.
- Governing WDBASIC documents.
- Active profile.
- WCAG criteria affected.
- Whether ATAG applies.
- Security, privacy, internationalization, media, search, and conversion impact.
- Existing evidence and exceptions.

Do not infer profile, conformance, permission, or business state from appearance alone.

## 3. Required behavior

Agents must:

- Preserve server-rendered primary content.
- Prefer valid native HTML.
- Use HTMX for server-owned interaction.
- Keep JavaScript local and non-authoritative.
- Use semantic tokens and component classes.
- Preserve names, roles, states, values, relationships, keyboard operation, focus, and announcements.
- Implement complete states and failure paths.
- Preserve language, direction, captions, transcripts, alternative text, and author-provided accessibility metadata.
- Keep claims and proof factual.
- Maintain baseline operation without enhancement scripts where required.
- Update documentation, matrices, examples, and evidence when contracts change.

## 4. Prohibited behavior

Agents must not:

- Create client-only primary public content.
- Use client state as authorization evidence.
- Replace native semantics with unnecessary ARIA.
- Ship partial ARIA widget patterns.
- Block password managers or paste without a documented security requirement.
- Require drag, hover, motion, pointer precision, or one orientation without an equivalent or essential rationale.
- Fabricate alternative text, captions, credentials, reviews, statistics, or conformance evidence.
- Treat automated accessibility output as proof of conformance.
- Add third-party scripts, telemetry, permissions, or data collection without purpose and review.
- Scatter repeated Tailwind utility piles through templates.
- Put styling logic in JavaScript.
- Weaken contrast, focus, labels, errors, keyboard access, or user agency.

## 5. Change protocol

1. Resolve authority and scope.
2. Inspect implementation and evidence.
3. Identify affected standards criteria.
4. Change the smallest coherent set of files.
5. Update linked contracts and matrices in the same change set.
6. Run applicable build, syntax, accessibility, link, and test checks.
7. Record unresolved failures honestly.
8. Report changed files, tests, evidence, and exceptions.

## 6. Stop conditions

Do not claim completion when:

- Required source content is unavailable.
- A write did not reach the intended branch.
- A referenced path is broken.
- Applicable manual testing remains undone but conformance is claimed.
- A security or privacy requirement is guessed.
- Generated output was not inspected after an authoring change.
- A standards conflict remains unresolved.

Partial implementation may be delivered, but its status and remaining gaps must be explicit.

## 7. Completion report

Report:

```text
scope
changed files
controlling contracts
standards criteria affected
validation performed
manual testing still required
evidence updated
exceptions or blockers
commit or pull request
```
