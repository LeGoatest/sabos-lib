# WDBASIC Glossary Index

> **Status:** Non-normative terminology reference  
> **Canonical entry point:** [`../README.md`](../README.md)  
> **Standards registry:** [`../STANDARDS.md`](../STANDARDS.md)

The glossaries explain recurring terminology used across WDBASIC. They do not create requirements by themselves. Binding requirements remain in the architecture, accessibility, form, security, privacy, authoring, component, token, and compliance contracts.

## 1. Glossary governance

Each glossary must:

- Define one coherent subject area.
- Expand acronyms on first appearance.
- Distinguish attacks, weaknesses, impacts, controls, testing methods, standards, and organizational functions.
- Mark deprecated, obsolete, draft, ambiguous, or context-dependent terminology.
- Link terms to the WDBASIC contract that governs their implementation.
- Prefer definitions supported by primary standards bodies or recognized security organizations.
- Avoid presenting a product, tool, framework, or acronym as proof of conformance or security.
- Record a review date and owner.

Normative documents should still expand an acronym on first use. A reader must not be required to open a glossary to understand a binding requirement.

## 2. Canonical-term rule

A term has one canonical glossary location.

Other glossaries may cross-reference the canonical definition but should not silently redefine it. When a term has multiple accepted meanings, the glossary must:

- State the relevant meanings.
- Identify which meaning WDBASIC uses.
- Require the expanded term where ambiguity could affect implementation or review.

## 3. Current glossary

- [`security.md`](security.md) — attacks, security impacts, identity and access, browser and application defenses, cryptography, testing, operations, and vulnerability identifiers.

## 4. Recommended glossary set

Additional glossaries are useful, but they should be added only when the corresponding terminology is used repeatedly across WDBASIC or adopting projects.

### Priority 1

1. **Accessibility and ARIA** — accessible name, description, role, state, value, landmark, live region, focus order, accessibility tree, WCAG, ATAG, ACT, WCAG2ICT, and assistive-technology terminology.
2. **Architecture and web platform** — SSR, CSR, hydration, progressive enhancement, HTMX, fragment, idempotency, cache key, origin, site, URL, route, session, cookie, header, and HTTP status terminology.
3. **Forms and data handling** — syntactic validation, semantic validation, canonicalization, normalization, sanitization, encoding, field allowlist, overposting, idempotency key, optimistic concurrency, and persistence constraint terminology.
4. **Privacy and data governance** — personal data, sensitive data, purpose limitation, data minimization, retention, processor, controller, consent, telemetry, fingerprinting, and data-subject terminology.

### Priority 2

5. **Design tokens and Tailwind CSS** — token, semantic token, primitive token, component class, utility, variant, state class, cascade layer, `@theme`, `@utility`, and `@apply` terminology.
6. **Testing and compliance** — conformance, evaluation, evidence, assertion, ACT rule, automated check, manual check, false positive, false negative, accessibility-supported technology, and maturity terminology.
7. **Internationalization and media** — locale, language tag, writing direction, bidirectional isolation, translation expansion, caption, transcript, audio description, media alternative, and reading-order terminology.

## 5. Glossaries that should remain combined

Do not create separate glossaries for every framework, library, browser, or product. Product-specific terms belong in product documentation unless they are reused across WDBASIC.

Avoid:

- One glossary per dependency.
- Duplicate acronym lists in each contract.
- A single unstructured mega-glossary covering unrelated disciplines.
- Definitions copied without source context.
- Placeholder glossary files with no governed content.

## 6. Source hierarchy

Prefer sources in this order:

1. Applicable W3C, WHATWG, IETF, ISO, NIST, or other primary specification.
2. OWASP, MITRE, CISA, FIRST, or another recognized domain authority.
3. Framework documentation for framework-specific behavior.
4. WDBASIC-specific definitions where no external definition matches the governed architecture.

A source definition may be shortened for readability, but the glossary must not materially change its meaning.

## 7. Review record

```yaml
glossaries:
  index_owner: <role-or-team>
  canonical_terms: <path-or-index>
  review_interval: annual-or-on-standards-change
  last_reviewed: <ISO-8601-date>
  planned: []
  deprecated_terms: []
```
