# WDBASIC v2 Governance, Design, and Framework Contract

> **Status:** Binding  
> **Canonical entry point:** `Wdbasic/README.md`  
> **Framework version:** WDBASIC v2  
> **Applies to:** public websites, landing pages, service and location pages, portals, dashboards, administrative interfaces, and reusable server-rendered UI components.

WDBASIC v2 is the governing implementation contract for architecture, presentation, semantic design tokens, accessibility, component behavior, conversion structure, content integrity, responsive behavior, performance, and search visibility.

The rename from `wdbasic_v2.md` to `README.md` does not change the authority or version of the framework. This file is now the canonical human and agent entry point for the complete WDBASIC document set.

---

## 1. Document Map

```text
Wdbasic/
├── README.md
├── AGENTS.md
├── architecture_rules.md
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

| Document | Responsibility |
|---|---|
| [`architecture_rules.md`](architecture_rules.md) | Rendering, state ownership, progressive enhancement, routing, security boundaries, HTTP behavior, and technical architecture. |
| [`AGENTS.md`](AGENTS.md) | Required behavior for automated agents, coding assistants, reviewers, and contributors. |
| [`tokens/semantic-colors.md`](tokens/semantic-colors.md) | Semantic color, surface, state, and contrast roles. |
| [`tokens/typography.md`](tokens/typography.md) | Type hierarchy, font roles, line length, loading, and readable rendering. |
| [`tokens/spacing.md`](tokens/spacing.md) | Spacing, content width, control size, radius, elevation, and layering roles. |
| [`tokens/accessibility.md`](tokens/accessibility.md) | WCAG, native semantics, ARIA, keyboard, focus, announcements, and HTMX accessibility. |
| [`components/component-contracts.md`](components/component-contracts.md) | Reusable server-rendered components, state models, fragments, forms, actions, and validation. |
| [`profiles/field-service.md`](profiles/field-service.md) | Field-service market positioning, proof, layout, imagery, and conversion defaults. |
| [`profiles/professional-services.md`](profiles/professional-services.md) | Expertise-led service positioning, evidence, engagement, and editorial layout defaults. |
| [`profiles/custom-brand.md`](profiles/custom-brand.md) | Controlled mapping of an established or exceptional brand into WDBASIC semantics. |
| [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md) | Repository-specific Tailwind CSS v4 organization and semantic-class pattern. |

---

## 2. Authority and Conflict Order

Apply the WDBASIC document set in this order:

1. [`architecture_rules.md`](architecture_rules.md)
2. This README and core WDBASIC rules
3. [`tokens/`](tokens/)
4. [`components/component-contracts.md`](components/component-contracts.md)
5. The active file under [`profiles/`](profiles/)
6. Product-specific documentation
7. Explicit, documented, time-bounded exceptions

A lower-level document may specialize a higher-level contract but may not weaken architecture, accessibility, security, truthful-content, semantic, or progressive-enhancement requirements.

When two documents appear inconsistent, preserve the stricter requirement until the conflict is resolved in the governing documentation.

---

## 3. Required Reading Order

Before implementing or reviewing a governed interface:

1. Read [`architecture_rules.md`](architecture_rules.md).
2. Read this README.
3. Read [`AGENTS.md`](AGENTS.md) when automated tooling or coding agents are involved.
4. Read the relevant token contracts.
5. Read [`components/component-contracts.md`](components/component-contracts.md).
6. Select and read one active design profile.
7. Read [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md) for repository styling organization.
8. Read product-specific requirements and approved exceptions.

Do not begin from a visual mockup or isolated component without resolving the controlling contracts first.

---

## 4. Framework Priorities

WDBASIC prioritizes:

1. Declarative, semantic HTML.
2. Server-rendered pages and fragments.
3. Progressive enhancement.
4. Accessibility.
5. Search visibility.
6. Performance and resilience.
7. Conversion clarity.
8. Reusable components.
9. Truthful content and proof.
10. Maintainable semantic styling.
11. Reconstructable server state.
12. Explicit governance and exceptions.

---

## 5. Core Architecture

Every public page must:

- Render primary content as complete server-generated HTML.
- Remain readable, navigable, and indexable without JavaScript.
- Use crawlable links for primary navigation.
- Use normal form submission as the baseline workflow.
- Use one clear primary heading unless a documented exception applies.
- Expose meaningful internal links in the initial HTML response.
- Return correct HTTP status codes and direct-loadable URLs.
- Preserve a meaningful response when enhancement scripts fail.

HTMX is the preferred enhancement layer when the server can own an interaction. Suitable uses include forms, validation, pagination, filtering, search, sorting, inline editing, status changes, modal contents, and fragment replacement.

JavaScript is limited to local behavior that does not reasonably belong to a server round trip, such as focus management, local menus, accessible dialogs, media controls, measured layout values, and unavoidable third-party integrations.

JavaScript must not become the authoritative owner of routing, authentication, authorization, business state, primary page content, validation rules, or persistent application state.

See [`architecture_rules.md`](architecture_rules.md) for the complete contract.

---

## 6. Progressive Enhancement

The baseline experience must work with:

- Semantic HTML.
- Normal links.
- Native controls.
- Normal form submission.
- Server validation.
- Server responses.

HTMX and JavaScript may improve speed and continuity, but users must not require them to understand or complete a primary public workflow unless a documented product constraint makes that impossible.

Enhanced controls must preserve equivalent names, labels, states, errors, URLs, outcomes, and security checks in the non-enhanced path.

---

## 7. Semantic Design System

Implementations must use semantic roles instead of scattering unexplained visual values through templates and components.

Required token groups include:

- Color and state roles.
- Typography roles.
- Spacing and content-width roles.
- Control-size roles.
- Radius, border, elevation, and layering roles.
- Focus and accessibility roles.
- Motion and transition roles where motion is used.

Components consume semantic roles such as `action-primary`, `surface-muted`, and `text-secondary`, not trade-specific, campaign-specific, or page-specific visual names.

Token values must be centrally configurable. A design profile may change token values without changing component semantics.

The binding token contracts are:

- [`tokens/semantic-colors.md`](tokens/semantic-colors.md)
- [`tokens/typography.md`](tokens/typography.md)
- [`tokens/spacing.md`](tokens/spacing.md)
- [`tokens/accessibility.md`](tokens/accessibility.md)

---

## 8. Tailwind CSS Standards

Tailwind CSS v4 is the primary styling mechanism for this repository.

- Repeated utility combinations become semantic utilities or component classes.
- Markup describes structure and intent; the stylesheet owns reusable appearance.
- Repeated values are promoted into approved tokens, utilities, or component abstractions.
- Unbounded one-off values are avoided.
- Custom CSS is reserved for token definitions, pseudo-elements, browser behavior, third-party integrations, documented shared primitives, and effects not cleanly expressible through approved utilities.
- JavaScript must not build long Tailwind class strings or own responsive styling.

Avoid by default:

- Glassmorphism.
- Neon effects.
- Excessive gradients.
- Heavy parallax.
- Decorative animation dependencies.
- Low-contrast text.
- Extremely large empty sections.
- Generic dashboard-card layouts on marketing pages.
- Visual novelty that weakens comprehension, trust, or conversion.

The repository-specific implementation pattern is binding through [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md).

---

## 9. Accessibility

Implementations target WCAG 2.2 AA where practical and follow [`tokens/accessibility.md`](tokens/accessibility.md).

Minimum expectations include:

- Normal text contrast of at least `4.5:1`.
- Large text and meaningful graphical objects at least `3:1` where applicable.
- Visible and unobscured keyboard focus.
- Keyboard-operable controls.
- Programmatically associated labels, descriptions, and errors.
- Logical heading, landmark, source, and focus order.
- Meaningful alternative text.
- Reduced-motion support.
- Resilience near `320px` CSS width and at browser zoom.
- Touch targets generally at least `44px × 44px`.
- Accurate accessible names, roles, states, values, relationships, and announcements.

Native HTML takes precedence over ARIA. ARIA supplements correct structure and behavior; it does not repair incorrect markup or missing keyboard behavior.

---

## 10. Typography

Typography prioritizes readability, hierarchy, and reliable rendering.

- Default body text is generally `16px` to `18px`.
- Mobile form controls and primary buttons use text of at least `16px`.
- Body line height generally remains between `1.5` and `1.65`.
- Long-form text targets approximately `50` to `75` characters per line.
- Ultra-light body weights and extended all-capital text are prohibited.
- Font loading must not hide essential content.
- System fallbacks are required.
- Visual heading size must not replace semantic heading order.

The detailed type contract is defined in [`tokens/typography.md`](tokens/typography.md).

---

## 11. Component Modularity

Major interface elements are reusable server-side components or fragments.

Each component must:

- Have a clear responsibility.
- Accept explicit input data.
- Avoid hidden global dependencies.
- Preserve semantic HTML.
- Define relevant loading, empty, error, success, disabled, hover, focus, active, selected, expanded, and read-only states.
- Work independently where practical.
- Return correct accessibility and server state after every render or HTMX replacement.
- Define fallback, focus, history, and announcement behavior when interactive.

See [`components/component-contracts.md`](components/component-contracts.md).

---

## 12. Conversion Architecture

Where conversion is a page objective, use this sequence or a documented equivalent:

1. Outcome-focused hero.
2. Immediate verified trust signal.
3. Services or solutions organized around user intent.
4. Benefits and differentiation.
5. Real project, customer, or outcome proof.
6. Clear process and next steps.
7. Service-area, eligibility, or audience-fit confirmation.
8. FAQ and objection handling.
9. Final conversion section.

Calls to action recur at natural decision points without becoming aggressive or repetitive.

Button color is secondary to clear wording, strong contrast, predictable meaning, appropriate placement, low friction, and credible surrounding content.

---

## 13. Trust, Proof, and Content Integrity

Do not fabricate or imply unverified:

- Reviews or ratings.
- Credentials, licenses, or insurance status.
- Awards or certifications.
- Customer logos.
- Guarantees or warranties.
- Project counts or success rates.
- Response times or service availability.
- Statistics or outcome claims.

Templates use editable placeholders or hide unsupported proof by default.

Case studies describe the initial condition, work performed, and result. Before-and-after media must not misrepresent the project. Trust badges require a defined source and meaning.

Content must be concise, credible, specific, and oriented toward user decisions. Avoid unsupported superlatives, fake scarcity, fake urgency, and vague corporate filler.

---

## 14. Forms and Actions

Forms must:

- Use visible labels.
- Group related fields.
- Explain required formats before submission where practical.
- Preserve submitted values after recoverable errors.
- Associate errors with affected controls.
- Provide an error summary for complex forms.
- Provide clear loading, success, and failure states.
- Avoid unnecessary fields.
- Support normal server submission when enhanced through HTMX.
- Include proportionate abuse prevention.

Primary calls to action use specific action-oriented text and do not rely solely on color to communicate priority.

Destructive actions use explicit wording and confirmation proportionate to impact.

---

## 15. Responsive Behavior

Layouts are designed around content priority rather than desktop compression.

Required behavior includes:

- Preserving semantic source order.
- Stacking sections logically.
- Avoiding compressed multi-column card layouts.
- Keeping forms readable and touch-friendly.
- Preserving access to primary actions.
- Preventing sticky controls from obscuring content or focus.
- Avoiding the removal of important mobile content.
- Using responsive media with stable dimensions.

Recommended review widths include approximately `1440px`, `1280px`, `768px`, `390px`, and `320px`.

---

## 16. Performance and Search

Public pages support:

- Semantic HTML.
- Crawlable navigation.
- One primary page topic.
- Appropriate breadcrumbs.
- Indexable FAQ content.
- Meaningful internal linking.
- Canonical URL control.
- Page-title and description management.
- Open Graph metadata.
- Structured-data placement where applicable.
- Responsive images with explicit dimensions.
- Lazy loading below the fold.
- Minimal layout shift.
- Minimal render-blocking assets.
- No essential text embedded only in images.

Performance budgets are defined per product. A page is not compliant solely because it achieves a single synthetic performance score.

---

## 17. Design Profiles

WDBASIC core does not require one universal palette, typeface, logo style, or photography treatment.

Select and document one active profile:

- [`profiles/field-service.md`](profiles/field-service.md)
- [`profiles/professional-services.md`](profiles/professional-services.md)
- [`profiles/custom-brand.md`](profiles/custom-brand.md)

A profile maps semantic roles to a market and brand position. It may customize appearance but may not weaken core architecture, accessibility, truth, or component requirements.

A project using `custom-brand.md` must document why an existing profile is insufficient and must provide a complete semantic token mapping.

---

## 18. Required Adoption Record

Every adopting project should maintain a short WDBASIC record containing:

```yaml
wdbasic:
  version: 2
  source: LeGoatest/tailwindcss-semantic-layer
  source_ref: <tag-or-commit>
  active_profile: field-service | professional-services | custom-brand
  token_source: <path>
  component_inventory: <path>
  tailwind_entrypoint: <path>
  validation_commands:
    - <command>
  approved_exceptions:
    - <exception-id-or-none>
```

The record establishes which WDBASIC revision and profile a product claims to implement. Unpinned references such as “latest” are insufficient for reproducible governance.

---

## 19. Conformance

A project may claim WDBASIC v2 conformance only when it satisfies:

- Core architecture and progressive-enhancement rules.
- Applicable token contracts.
- Component and fragment contracts.
- Accessibility requirements.
- Truthful-content and proof rules.
- The selected design profile.
- Product-specific validation and documented exceptions.

A project is not WDBASIC-compliant merely because it uses Tailwind, HTMX, semantic class names, or a profile palette.

Use these review outcomes:

- **Conformant:** applicable requirements pass.
- **Conformant with documented exception:** a narrow exception is recorded with impact, fallback, owner, and review condition.
- **Non-conformant:** one or more binding requirements are not met or are bypassed without an approved exception.

Avoid vague claims such as “mostly WDBASIC.”

---

## 20. Implementation Governance

Each implementation documents:

- Active design profile.
- Semantic token values.
- Typography and fallbacks.
- Component inventory.
- Conversion objective by page type.
- Accessibility checks.
- Structured-data strategy.
- Image and proof sources.
- Validation commands.
- Approved exceptions.
- WDBASIC source revision.

Contract changes must update every affected subordinate document and implementation example in the same change set.

---

## 21. Core Compliance Checklist

### Architecture

- Is primary public content server-rendered?
- Is the page usable without JavaScript?
- Is server-owned interaction HTMX-first?
- Are components reusable server-side fragments?
- Do direct URLs, refreshes, and HTTP status codes behave correctly?

### Semantics and accessibility

- Are semantic tokens used consistently?
- Do text and controls meet contrast requirements?
- Are keyboard focus states visible and unobscured?
- Are form labels and errors programmatically associated?
- Are accessible names, roles, states, relationships, and live announcements accurate?
- Does responsive source order remain logical?

### Conversion and trust

- Is the next action clear?
- Are services and eligibility immediately understandable?
- Is proof real, contextual, and non-fabricated?
- Does the page explain what happens next?
- Are calls to action placed only at relevant decision points?

### Performance and search

- Can search engines reach primary content and links?
- Are images responsive and dimensioned?
- Is essential text represented as HTML?
- Is layout shift minimized?
- Are metadata, canonical controls, and structured-data locations defined?

### Governance

- Is the active profile documented?
- Is the WDBASIC source revision pinned?
- Are exceptions explicit, owned, and reviewable?
- Were affected build, accessibility, and behavior checks run?

---

## 22. Final Principle

Architecture establishes reliability. Semantic tokens establish consistency. Accessibility establishes usability. Proof establishes credibility. Conversion structure establishes direction. Components establish reuse. A selected design profile establishes appropriate visual character without weakening any core contract.
