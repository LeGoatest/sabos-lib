# WDBASIC v2 Governance, Design, and Framework Contract

> **Status:** Binding  
> **Canonical entry point:** `Wdbasic/README.md`  
> **Framework version:** WDBASIC v2  
> **Applies to:** public websites, landing pages, service and location pages, portals, dashboards, administrative interfaces, authoring tools, hybrid and native shells, generated documents, and reusable server-rendered UI components.

WDBASIC v2 governs architecture, presentation, semantic tokens, accessibility, authoring, component behavior, cognitive clarity, conversion structure, content integrity, internationalization, media, security, privacy, responsive behavior, performance, search visibility, native and non-web output, organizational maturity, and standards evidence.

## 1. Document map

```text
Wdbasic/
├── README.md
├── AGENTS.md
├── STANDARDS.md
├── architecture_rules.md
├── cognitive-accessibility.md
├── internationalization.md
├── media-accessibility.md
├── non-web-accessibility.md
├── security-and-privacy.md
├── sustainability.md
├── compliance/
│   ├── accessibility-maturity.md
│   ├── accessibility-statement-template.md
│   ├── act-rule-template.md
│   ├── browser-at-matrix.md
│   ├── testing-methodology.md
│   └── wcag-2.2-aa-matrix.md
├── authoring/
│   ├── atag-2.0.md
│   └── accessible-output.md
├── profiles/
│   ├── field-service.md
│   ├── professional-services.md
│   └── custom-brand.md
├── tokens/
│   ├── semantic-colors.md
│   ├── typography.md
│   ├── spacing.md
│   └── accessibility.md
└── components/
    └── component-contracts.md
```

## 2. Authority and conflict order

Apply the document set in this order:

1. [`architecture_rules.md`](architecture_rules.md)
2. This README
3. [`STANDARDS.md`](STANDARDS.md)
4. Binding cross-cutting contracts: accessibility, cognitive accessibility, internationalization, media, security, privacy, non-web accessibility, and authoring
5. Token contracts
6. Component contracts
7. Active design profile
8. Product-specific requirements
9. Explicit, owned, time-bounded exceptions

A lower-level document may specialize but may not weaken architecture, accessibility, security, privacy, truthful-content, semantic, progressive-enhancement, or evidence requirements.

When requirements appear inconsistent, preserve the stricter requirement until the governing documents are corrected.

External standards retain their own conformance language. A WDBASIC exception cannot turn a failed external requirement into a pass.

## 3. Required reading order

Before implementing or reviewing a governed surface:

1. Read [`architecture_rules.md`](architecture_rules.md).
2. Read this README.
3. Read [`STANDARDS.md`](STANDARDS.md).
4. Read [`AGENTS.md`](AGENTS.md) when automated tooling is involved.
5. Read applicable cross-cutting contracts.
6. Read relevant token contracts.
7. Read [`components/component-contracts.md`](components/component-contracts.md).
8. Read one active design profile.
9. Read [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md).
10. Read product-specific requirements, evidence, and exceptions.

Applicability must be resolved explicitly. Do not omit cognitive, non-web, authoring, media, internationalization, or organizational-maturity review merely because the initial implementation is visually simple.

## 4. Framework priorities

WDBASIC prioritizes:

1. Semantic native HTML.
2. Server-rendered content and reconstructable server state.
3. Progressive enhancement.
4. Accessibility and user agency.
5. Cognitive clarity and predictable workflows.
6. Security and privacy.
7. Search visibility.
8. Performance and resilience.
9. Conversion clarity.
10. Reusable components.
11. Truthful content and proof.
12. Internationalization.
13. Maintainable semantic styling.
14. Accessible generated and non-web output.
15. Auditable, versioned standards evidence.
16. Repeatable organizational capability.

## 5. Core architecture

Every public page must:

- Render primary content as meaningful server-generated HTML.
- Remain readable, navigable, and indexable without JavaScript.
- Use crawlable links for primary navigation.
- Use native controls and normal form submission as the baseline.
- Return correct HTTP status codes.
- Use direct-loadable URLs.
- Preserve equivalent authorization, validation, labels, errors, and outcomes in enhanced and baseline paths.

HTMX is preferred for interaction the server can own. JavaScript is limited to local, ephemeral behavior and must not become the authority for routing, authentication, authorization, business state, validation, or primary public content.

See [`architecture_rules.md`](architecture_rules.md).

## 6. Accessibility target and WCAG claim status

WDBASIC is designed to support WCAG 2.2 Level AA.

Use precise status language:

- **Target:** The implementation is designed toward WCAG 2.2 Level AA but has not completed a formal evaluation.
- **Evaluated conformant:** The declared web scope has passed every applicable Level A and AA success criterion and every WCAG conformance requirement.
- **Evaluated non-conformant:** The declared scope has been evaluated but one or more applicable criteria, complete processes, claim requirements, or accessibility-supported technology conditions fail or remain unresolved.
- **Statement of partial conformance — third-party content:** Used only under the defined uncontrolled-content conditions and explicitly states that the page does not conform.
- **Statement of partial conformance — language support:** Used only under the defined lack-of-accessibility-support-for-language condition and explicitly states that the page does not conform.

“Where practical,” “mostly accessible,” and a generic “partially conformant” status are not valid WCAG conformance qualifications.

Required evidence includes:

- [`compliance/wcag-2.2-aa-matrix.md`](compliance/wcag-2.2-aa-matrix.md)
- [`compliance/testing-methodology.md`](compliance/testing-methodology.md)
- [`compliance/browser-at-matrix.md`](compliance/browser-at-matrix.md)
- Versioned ACT-compatible rules or equivalent documented manual procedures where reusable rules are claimed
- A claim or statement following [`compliance/accessibility-statement-template.md`](compliance/accessibility-statement-template.md)

## 7. Reproducible accessibility testing

Reusable automated and manual rules follow [`compliance/act-rule-template.md`](compliance/act-rule-template.md).

Each durable result identifies:

- Rule identifier and version.
- Rule implementation and version.
- Test subject and state.
- Environment.
- Outcome.
- Evidence.

`cantTell`, `untested`, manual-pending, blocked, and failed outcomes are unresolved and cannot be converted into passes for claim convenience.

A passing rule does not prove a complete WCAG success criterion unless the rule explicitly covers every required condition.

## 8. Semantic design system

Implementations use semantic roles rather than scattered visual values.

Required groups include:

- Color, surface, and state.
- Typography and measure.
- Spacing and content width.
- Control sizing.
- Radius, border, elevation, and layers.
- Focus and accessibility.
- Motion where used.

Components consume roles such as `action-primary`, `surface-muted`, and `text-secondary`, not page-, campaign-, trade-, or literal-color names.

Binding token contracts are under [`tokens/`](tokens/).

## 9. Tailwind CSS standards

Tailwind CSS v4 is the primary styling mechanism for this repository.

- Repeated utility combinations become semantic utilities or component classes.
- Markup describes intent and structure.
- The stylesheet owns reusable appearance and responsive behavior.
- Repeated values become tokens or approved abstractions.
- JavaScript must not assemble long Tailwind strings or own responsive styling.
- Custom CSS is reserved for tokens, pseudo-elements, browser behavior, third-party integration, and documented exceptions.

The repository pattern is defined in [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md).

## 10. Authoring tools and generated output

A CMS, editor, builder, template system, importer, generator, or AI authoring feature must comply with:

- [`authoring/atag-2.0.md`](authoring/atag-2.0.md)
- [`authoring/accessible-output.md`](authoring/accessible-output.md)

The authoring interface must be accessible, and the tool must support accessible output by default. Accessible editing alone is insufficient when generated pages or documents are inaccessible.

Generated output must preserve semantics, accessibility metadata, language, direction, media equivalents, security policy, and format-specific accessibility requirements.

## 11. Cognitive accessibility

All products follow [`cognitive-accessibility.md`](cognitive-accessibility.md) where its requirements are applicable.

Critical workflows must minimize unnecessary memory, attention, interpretation, and recovery burden. They use clear purpose, predictable behavior, consistent help, preserved context, plain instructions, understandable errors, and proportionate confirmation.

These are binding WDBASIC requirements but are not represented as additional WCAG success criteria.

## 12. Internationalization

Products claiming localization support follow [`internationalization.md`](internationalization.md).

They must preserve language, direction, locale formatting, Unicode input, translation expansion, logical layout, and bidirectional isolation across server rendering and fragment replacement.

## 13. Media

Audio, video, animation, carousels, and before-and-after content follow [`media-accessibility.md`](media-accessibility.md).

Applicable captions, transcripts, audio description, controls, pause behavior, motion alternatives, and quality review are required.

## 14. Security and privacy

Products follow both [`architecture_rules.md`](architecture_rules.md) and [`security-and-privacy.md`](security-and-privacy.md).

Security requires a testable verification baseline, server-side authorization, controlled browser policy, safe third-party integration, and user-safe failure behavior.

Privacy requires purpose limitation, data minimization, retention rules, user agency, third-party inventory, and prohibition of deceptive consent patterns.

## 15. Native, hybrid, and non-web output

Native applications, Wails or other web-view shells, custom viewers, PDFs, EPUBs, office documents, and other exported formats follow [`non-web-accessibility.md`](non-web-accessibility.md).

Web WCAG results, native-shell accessibility, and document-format accessibility must be scoped and reported separately.

WCAG2ICT and UAAG may inform implementation, but their publication status and non-conformance role must be represented accurately. WCAG2Mobile may inform mobile evaluation only as draft guidance. A project must identify the actual platform, format, procurement, legal, or contractual baseline used for a non-web claim.

## 16. Components

Major interface elements are reusable server-side components or fragments with:

- Explicit inputs.
- Semantic output.
- Complete state variants.
- Stable accessibility behavior.
- Correct server and HTTP outcomes.
- Defined HTMX swap, focus, history, announcement, and fallback behavior.
- Token-driven styling.
- Versioning and deprecation rules when shared.
- Accessibility-tree and platform exposure when native behavior, custom elements, or shadow DOM are involved.

See [`components/component-contracts.md`](components/component-contracts.md).

## 17. Conversion, trust, and content integrity

Where conversion is a page objective, use an outcome-focused sequence with verified trust, clear services, evidence, process, eligibility, objection handling, and a final action.

Do not fabricate or imply unverified:

- Reviews, ratings, awards, or certifications.
- Licenses, insurance, guarantees, or warranties.
- Customer logos.
- Project counts, response times, success rates, or statistics.
- Availability, pricing, urgency, accessibility, security, privacy, sustainability, or maturity claims.

Templates hide unsupported proof or use explicit editable placeholders.

## 18. Responsive and input resilience

Layouts preserve semantic source order and remain usable under:

- Narrow width near `320px`.
- Browser zoom and text resizing.
- Increased text spacing.
- Portrait and landscape orientation.
- Keyboard, touch, coarse pointer, speech input, and platform controls where applicable.
- Reduced motion and forced colors.

Sticky content must not obscure focus or essential content.

## 19. Performance, search, and sustainability

Public pages provide semantic HTML, crawlable links, canonical URL behavior, metadata, structured-data locations, responsive media, explicit dimensions, minimal layout shift, and no essential text confined to images.

Each project defines performance budgets. [`sustainability.md`](sustainability.md) is informative unless an adopting project makes named budgets binding.

## 20. Accessibility maturity

[`compliance/accessibility-maturity.md`](compliance/accessibility-maturity.md) governs organizational capability and continuous improvement.

It evaluates communications, ICT development lifecycle, knowledge and skills, oversight and culture, personnel, procurement, and support using evidence-backed maturity levels.

Maturity assessment is not product conformance. A mature organization may ship a non-conformant product, and one conformant release does not prove sustainable organizational capability.

## 21. Design profiles

Select one active profile:

- [`profiles/field-service.md`](profiles/field-service.md)
- [`profiles/professional-services.md`](profiles/professional-services.md)
- [`profiles/custom-brand.md`](profiles/custom-brand.md)

A profile may customize visual character but may not weaken core contracts.

## 22. Required adoption record

```yaml
wdbasic:
  version: 2
  source: LeGoatest/tailwindcss-semantic-layer
  source_ref: <tag-or-commit>
  active_profile: field-service | professional-services | custom-brand
  standards_record: <path>
  token_source: <path>
  component_inventory: <path>
  tailwind_entrypoint: <path>
  wcag_target: "2.2 AA"
  wcag_claim_status: target | evaluated-conformant | evaluated-nonconformant | partial-statement-third-party | partial-statement-language
  wcag_claim: <path-or-none>
  act_rules_format: "1.1"
  act_ruleset: <path-or-none>
  atag_applicable: true | false
  cognitive_accessibility: applicable | limited | not-applicable-with-rationale
  non_web_applicable: true | false
  non_web_baselines: []
  accessibility_maturity: <path-or-none>
  security_baseline: <standard-version-and-level>
  browser_at_matrix: <path>
  validation_commands: []
  approved_exceptions: []
```

Unpinned references such as “latest” are insufficient for reproducible governance.

## 23. WDBASIC conformance outcomes

Use:

- **WDBASIC conformant:** Applicable WDBASIC contracts pass.
- **WDBASIC conformant with documented exception:** A narrow WDBASIC exception exists and does not misrepresent an external standard or claim.
- **WDBASIC non-conformant:** Binding requirements fail or are bypassed without an approved exception.

WDBASIC conformance and WCAG conformance are separate determinations. Accessibility maturity is also separate from both. A WDBASIC exception may coexist with WDBASIC conformance when governed, but it cannot preserve a WCAG claim if an applicable WCAG requirement fails.

A project is not WDBASIC-conformant merely because it uses Tailwind, HTMX, semantic classes, or a profile palette.

## 24. Core review checklist

- Is primary public content server-rendered and usable without JavaScript?
- Are URLs, status codes, authorization, validation, and fallback behavior correct?
- Are semantic tokens and shared components used consistently?
- Are all applicable WCAG A and AA criteria mapped, tested, and evidenced?
- Are full pages, responsive variations, and complete processes tested?
- Are ACT rules or equivalent manual procedures identified and versioned?
- Is the declared browser and assistive-technology support recorded?
- Are authoring interfaces and generated output covered when applicable?
- Are cognitive clarity, language, direction, media equivalents, security, privacy, and third-party behavior documented?
- Are native shells and non-web formats evaluated under separate applicable baselines?
- Is any maturity claim scoped, dimension-specific, evidence-backed, and distinct from product conformance?
- Is proof factual?
- Is the active profile and WDBASIC revision pinned?
- Are exceptions explicit, owned, narrow, and reviewable?
- Is any WCAG claim complete, accurately scoped, and free of unresolved failures?
