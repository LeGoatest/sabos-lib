# WDBASIC v2 Governance, Design, and Framework Contract

> **Status:** Binding  
> **Canonical entry point:** `Wdbasic/README.md`  
> **Framework version:** WDBASIC v2  
> **Applies to:** public websites, landing pages, service and location pages, portals, dashboards, administrative interfaces, authoring tools, and reusable server-rendered UI components.

WDBASIC v2 governs architecture, presentation, semantic tokens, accessibility, authoring, component behavior, conversion structure, content integrity, internationalization, media, security, privacy, responsive behavior, performance, search visibility, and standards evidence.

## 1. Document map

```text
Wdbasic/
├── README.md
├── AGENTS.md
├── STANDARDS.md
├── architecture_rules.md
├── internationalization.md
├── media-accessibility.md
├── security-and-privacy.md
├── sustainability.md
├── compliance/
│   ├── wcag-2.2-aa-matrix.md
│   ├── testing-methodology.md
│   ├── browser-at-matrix.md
│   └── accessibility-statement-template.md
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
4. Binding cross-cutting contracts: accessibility, internationalization, media, security, privacy, and authoring
5. Token contracts
6. Component contracts
7. Active design profile
8. Product-specific requirements
9. Explicit, owned, time-bounded exceptions

A lower-level document may specialize but may not weaken architecture, accessibility, security, privacy, truthful-content, semantic, or progressive-enhancement requirements.

When requirements appear inconsistent, preserve the stricter requirement until the governing documents are corrected.

## 3. Required reading order

Before implementing or reviewing a governed surface:

1. Read [`architecture_rules.md`](architecture_rules.md).
2. Read this README.
3. Read [`STANDARDS.md`](STANDARDS.md).
4. Read [`AGENTS.md`](AGENTS.md) when automated tooling is involved.
5. Read applicable cross-cutting contracts.
6. Read relevant token contracts.
7. Read [`components/component-contracts.md`](components/component-contracts.md).
8. Read one active profile.
9. Read [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md).
10. Read product-specific requirements and exceptions.

## 4. Framework priorities

WDBASIC prioritizes:

1. Semantic native HTML.
2. Server-rendered content and reconstructable server state.
3. Progressive enhancement.
4. Accessibility and user agency.
5. Security and privacy.
6. Search visibility.
7. Performance and resilience.
8. Conversion clarity.
9. Reusable components.
10. Truthful content and proof.
11. Internationalization.
12. Maintainable semantic styling.
13. Auditable standards evidence.

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

## 6. Accessibility target and conformance

WDBASIC is designed to support WCAG 2.2 Level AA.

Use precise claim language:

- **Target:** The implementation is designed toward WCAG 2.2 Level AA but has not completed a formal evaluation.
- **Evaluated:** The declared scope has been tested and the report identifies passes and failures.
- **Conformant:** Every applicable Level A and AA success criterion passes across the declared full-page scope and complete processes using accessibility-supported technologies.
- **Non-conformant:** One or more applicable criteria fail or remain unreviewed.

“Where practical,” “mostly accessible,” and undocumented exceptions are not valid WCAG conformance qualifications.

A WDBASIC exception cannot preserve a WCAG conformance claim when it causes an applicable success criterion to fail.

Required evidence:

- [`compliance/wcag-2.2-aa-matrix.md`](compliance/wcag-2.2-aa-matrix.md)
- [`compliance/testing-methodology.md`](compliance/testing-methodology.md)
- [`compliance/browser-at-matrix.md`](compliance/browser-at-matrix.md)

## 7. Semantic design system

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

## 8. Tailwind CSS standards

Tailwind CSS v4 is the primary styling mechanism for this repository.

- Repeated utility combinations become semantic utilities or component classes.
- Markup describes intent and structure.
- The stylesheet owns reusable appearance and responsive behavior.
- Repeated values become tokens or approved abstractions.
- JavaScript must not assemble long Tailwind strings or own responsive styling.
- Custom CSS is reserved for tokens, pseudo-elements, browser behavior, third-party integration, and documented exceptions.

The repository pattern is defined in [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md).

## 9. Authoring tools and generated output

A CMS, editor, builder, template system, importer, generator, or AI authoring feature must comply with:

- [`authoring/atag-2.0.md`](authoring/atag-2.0.md)
- [`authoring/accessible-output.md`](authoring/accessible-output.md)

The authoring interface must be accessible, and the tool must support accessible output by default. Accessible editing alone is insufficient when generated pages are inaccessible.

## 10. Internationalization

Products claiming localization support follow [`internationalization.md`](internationalization.md).

They must preserve language, direction, locale formatting, Unicode input, translation expansion, logical layout, and bidirectional isolation across server rendering and fragment replacement.

## 11. Media

Audio, video, animation, carousels, and before-and-after content follow [`media-accessibility.md`](media-accessibility.md).

Applicable captions, transcripts, audio description, controls, pause behavior, motion alternatives, and quality review are required.

## 12. Security and privacy

Products follow both [`architecture_rules.md`](architecture_rules.md) and [`security-and-privacy.md`](security-and-privacy.md).

Security requires a testable verification baseline, server-side authorization, controlled browser policy, safe third-party integration, and user-safe failure behavior.

Privacy requires purpose limitation, data minimization, retention rules, user agency, third-party inventory, and prohibition of deceptive consent patterns.

## 13. Components

Major interface elements are reusable server-side components or fragments with:

- Explicit inputs.
- Semantic output.
- Complete state variants.
- Stable accessibility behavior.
- Correct server and HTTP outcomes.
- Defined HTMX swap, focus, history, announcement, and fallback behavior.
- Token-driven styling.
- Versioning and deprecation rules when shared.

See [`components/component-contracts.md`](components/component-contracts.md).

## 14. Conversion, trust, and content integrity

Where conversion is a page objective, use an outcome-focused sequence with verified trust, clear services, evidence, process, eligibility, objection handling, and a final action.

Do not fabricate or imply unverified:

- Reviews, ratings, awards, or certifications.
- Licenses, insurance, guarantees, or warranties.
- Customer logos.
- Project counts, response times, success rates, or statistics.
- Availability, pricing, or urgency.

Templates hide unsupported proof or use explicit editable placeholders.

## 15. Responsive and input resilience

Layouts preserve semantic source order and remain usable under:

- Narrow width near `320px`.
- Browser zoom and text resizing.
- Increased text spacing.
- Portrait and landscape orientation.
- Keyboard, touch, coarse pointer, and speech input where applicable.
- Reduced motion and forced colors.

Sticky content must not obscure focus or essential content.

## 16. Performance, search, and sustainability

Public pages provide semantic HTML, crawlable links, canonical URL behavior, metadata, structured-data locations, responsive media, explicit dimensions, minimal layout shift, and no essential text confined to images.

Each project defines performance budgets. [`sustainability.md`](sustainability.md) is informative unless an adopting project makes named budgets binding.

## 17. Design profiles

Select one active profile:

- [`profiles/field-service.md`](profiles/field-service.md)
- [`profiles/professional-services.md`](profiles/professional-services.md)
- [`profiles/custom-brand.md`](profiles/custom-brand.md)

A profile may customize visual character but may not weaken core contracts.

## 18. Required adoption record

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
  wcag_claim_status: target | evaluated | conformant | non-conformant
  atag_applicable: true | false
  security_baseline: <standard-and-level>
  browser_at_matrix: <path>
  validation_commands: []
  approved_exceptions: []
```

Unpinned references such as “latest” are insufficient for reproducible governance.

## 19. Conformance outcomes

Use:

- **WDBASIC conformant:** Applicable WDBASIC contracts pass.
- **WDBASIC conformant with documented exception:** A narrow WDBASIC exception exists and does not misrepresent external conformance.
- **WDBASIC non-conformant:** Binding requirements fail or are bypassed without an approved exception.

A project is not WDBASIC-conformant merely because it uses Tailwind, HTMX, semantic classes, or a profile palette.

## 20. Core review checklist

- Is primary public content server-rendered and usable without JavaScript?
- Are URLs, status codes, authorization, validation, and fallback behavior correct?
- Are semantic tokens and shared components used consistently?
- Are all applicable WCAG A and AA criteria mapped, tested, and evidenced?
- Are complete processes tested?
- Is the declared browser and assistive-technology support recorded?
- Are authoring interfaces and generated output covered when applicable?
- Are language, direction, media equivalents, security, privacy, and third-party behavior documented?
- Is proof factual?
- Is the active profile and WDBASIC revision pinned?
- Are exceptions explicit, owned, narrow, and reviewable?
