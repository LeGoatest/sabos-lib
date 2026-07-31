# WDBASIC v2 Governance, Design, and Framework Contract

WDBASIC v2 is the binding implementation contract for public websites, landing pages, service pages, portals, dashboards, administrative interfaces, and reusable server-rendered UI components maintained under this repository.

It governs architecture, presentation, semantic design tokens, accessibility, component behavior, conversion structure, content integrity, responsive behavior, performance, and search visibility.

---

## 1. Authority

The WDBASIC document set is applied in this order:

1. [`architecture_rules.md`](architecture_rules.md) — rendering, state ownership, progressive enhancement, security boundaries, and technical architecture.
2. This document — universal presentation, accessibility, trust, conversion, and implementation requirements.
3. [`tokens/`](tokens/) — semantic token contracts.
4. [`components/component-contracts.md`](components/component-contracts.md) — reusable component contracts.
5. An approved file in [`profiles/`](profiles/) — market- or brand-specific visual decisions.
6. Product-specific documentation and approved exceptions.

A lower-level document may specialize a higher-level contract but may not weaken architecture, accessibility, security, truthful-content, or semantic requirements.

---

## 2. Framework Priorities

WDBASIC prioritizes:

1. Declarative, semantic HTML.
2. Server-rendered pages and fragments.
3. Progressive enhancement.
4. Accessibility.
5. Search visibility.
6. Performance.
7. Conversion clarity.
8. Reusable components.
9. Truthful content and proof.
10. Maintainable semantic styling.

---

## 3. Core Architecture

Every public page must:

- Render primary content as complete server-generated HTML.
- Remain readable, navigable, and indexable without JavaScript.
- Use crawlable links for primary navigation.
- Use normal form submission as the baseline workflow.
- Use one clear primary heading unless a documented exception applies.
- Expose meaningful internal links in the initial HTML response.

HTMX is the preferred enhancement layer when the server can own an interaction. Suitable uses include forms, validation, pagination, filtering, search, sorting, inline editing, status changes, modal contents, and fragment replacement.

JavaScript is limited to local behavior that does not reasonably belong to a server round trip, such as focus management, local menus, accessible dialogs, media controls, and third-party integrations.

JavaScript must not become the authoritative owner of routing, authentication, business state, primary page content, or persistent application state.

See [`architecture_rules.md`](architecture_rules.md) for the complete contract.

---

## 4. Progressive Enhancement

The baseline experience must work with:

- Semantic HTML.
- Normal links.
- Normal form controls.
- Normal form submission.
- Server responses.

HTMX and JavaScript may improve speed and continuity, but users must not require them to understand or complete a primary workflow unless a documented product constraint makes that impossible.

Enhanced controls must preserve equivalent names, labels, states, errors, and outcomes in the non-enhanced path.

---

## 5. Semantic Design System

Implementations must use semantic roles instead of scattering unexplained visual values through templates and components.

Required token groups include:

- Color and state roles.
- Typography roles.
- Spacing and content-width roles.
- Radius and shadow roles.
- Focus and accessibility roles.
- Motion and transition roles where motion is used.

Components must consume semantic roles such as `action-primary`, `surface-muted`, and `text-secondary`, not trade-specific or page-specific color names.

Token values must be centrally configurable. A design profile may change token values without changing component semantics.

The binding token contracts are:

- [`tokens/semantic-colors.md`](tokens/semantic-colors.md)
- [`tokens/typography.md`](tokens/typography.md)
- [`tokens/spacing.md`](tokens/spacing.md)
- [`tokens/accessibility.md`](tokens/accessibility.md)

---

## 6. Styling Standards

Tailwind CSS v4 is the primary styling mechanism for this repository.

- Repeated utility combinations must become semantic utilities or component classes.
- Markup should describe structure and intent; the stylesheet should own reusable appearance.
- Repeated values must be promoted into approved tokens, utilities, or component abstractions.
- Unbounded one-off values should be avoided.
- Custom CSS is permitted for token definitions, pseudo-elements, complex browser behavior, third-party integrations, carefully documented shared primitives, and effects not cleanly expressible through approved utilities.
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

The repository-specific Tailwind organization contract remains documented in `docs/TAILWIND_PATTERN.md`.

---

## 7. Accessibility

Implementations must target WCAG 2.2 AA where practical and must follow [`tokens/accessibility.md`](tokens/accessibility.md).

Minimum expectations include:

- Normal text contrast of at least `4.5:1`.
- Large text and meaningful graphical objects at least `3:1` where applicable.
- Visible keyboard focus.
- Keyboard-operable controls.
- Programmatically associated labels and errors.
- Logical heading and source order.
- Meaningful alternative text.
- Reduced-motion support.
- Resilience near `320px` CSS width.
- Touch targets generally at least `44px × 44px`.
- Accurate accessible names, descriptions, roles, states, and live-region behavior.

Native HTML takes precedence over ARIA. ARIA supplements correct structure and behavior; it does not repair incorrect markup.

---

## 8. Typography

Typography must prioritize readability, hierarchy, and reliable rendering.

- Default body text should generally be `16px` to `18px`.
- Mobile form controls and primary buttons must use text of at least `16px`.
- Body line height should generally remain between `1.5` and `1.65`.
- Long-form text should target approximately `50` to `75` characters per line.
- Ultra-light body weights and extended all-capital text are prohibited.
- Font loading must not hide essential content.
- System fallbacks must be defined.

The detailed type contract is defined in [`tokens/typography.md`](tokens/typography.md).

---

## 9. Component Modularity

Major interface elements must be reusable server-side components or fragments.

Each component must:

- Have a clear responsibility.
- Accept explicit input data.
- Avoid hidden global dependencies.
- Preserve semantic HTML.
- Define relevant loading, empty, error, success, disabled, hover, focus, active, and selected states.
- Work independently where practical.
- Return correct accessibility state after every server render or HTMX replacement.

See [`components/component-contracts.md`](components/component-contracts.md).

---

## 10. Conversion Architecture

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

Calls to action should recur at natural decision points without becoming aggressive or repetitive.

Button color is secondary to clear wording, strong contrast, predictable meaning, appropriate placement, low friction, and credible surrounding content.

---

## 11. Trust and Proof

Do not fabricate or imply unverified:

- Reviews or ratings.
- Credentials or licenses.
- Insurance status.
- Awards.
- Customer logos.
- Guarantees or warranties.
- Project counts.
- Response times.
- Service availability.
- Statistics.

Templates must use editable placeholders or hide unsupported proof by default.

Case studies should describe the initial condition, work performed, and result. Before-and-after media must not misrepresent the project. Trust badges must have a defined source and meaning.

---

## 12. Content

Content must be concise, credible, specific, and oriented toward user decisions.

Avoid unsupported language such as:

- “Best in the industry.”
- “World-class.”
- “Revolutionary.”
- “Number one” without defensible evidence.
- Fake scarcity.
- Fake urgency.
- Unsupported guarantees.

Prefer outcome-focused headings, clear service definitions, direct process descriptions, honest qualification language, local or operational specificity, and plain-language next steps.

---

## 13. Forms

Forms must:

- Use visible labels.
- Group related fields.
- Explain required formats before submission where practical.
- Preserve submitted values after recoverable errors.
- Associate errors with affected controls.
- Provide an error summary for complex forms.
- Provide a clear success state.
- Avoid unnecessary fields.
- Support normal server submission when enhanced through HTMX.
- Include proportionate abuse prevention.

Primary calls to action must use specific action-oriented text and must not rely solely on color to communicate priority.

---

## 14. Responsive Behavior

Layouts must be designed around content priority rather than desktop compression.

Required behavior includes:

- Preserving semantic source order.
- Stacking sections logically.
- Avoiding compressed multi-column card layouts.
- Keeping forms readable and touch-friendly.
- Preserving access to primary actions.
- Preventing sticky controls from obscuring content.
- Avoiding the removal of important mobile content.
- Using responsive media with stable dimensions.

Recommended review widths include approximately `1440px`, `1280px`, `768px`, `390px`, and `320px`.

---

## 15. Performance and Search

Public pages must support:

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

Performance budgets should be defined per product.

---

## 16. Design Profiles

WDBASIC core does not require one universal palette, typeface, logo style, or photography treatment.

Select and document one profile:

- [`profiles/field-service.md`](profiles/field-service.md)
- [`profiles/professional-services.md`](profiles/professional-services.md)
- [`profiles/custom-brand.md`](profiles/custom-brand.md)

A profile maps semantic roles to a market and brand position. It may customize appearance but may not weaken core architecture, accessibility, trust, or component requirements.

---

## 17. Implementation Governance

Each implementation should document:

- Active design profile.
- Semantic token values.
- Typography and fallbacks.
- Component inventory.
- Conversion objective by page type.
- Accessibility checks.
- Structured-data strategy.
- Image and proof sources.
- Approved exceptions.

A project is not WDBASIC-compliant merely because it uses Tailwind or HTMX.

---

## 18. Compliance Checklist

### Architecture

- Is primary public content server-rendered?
- Is the page usable without JavaScript?
- Is server-owned interaction HTMX-first?
- Are components reusable server-side fragments?

### Semantics and accessibility

- Are semantic tokens used consistently?
- Do text and controls meet contrast requirements?
- Are keyboard focus states visible?
- Are form labels and errors programmatically associated?
- Are accessible names, roles, states, and live announcements accurate?
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

---

## 19. Final Principle

Architecture establishes reliability. Semantic tokens establish consistency. Accessibility establishes usability. Proof establishes credibility. Conversion structure establishes direction. A selected design profile establishes appropriate visual character without weakening any core contract.
