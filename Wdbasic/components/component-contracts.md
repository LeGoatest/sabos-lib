# WDBASIC Component Contracts

> **Authority:** Binding reusable-component and fragment contract  
> **Core entry point:** [`../README.md`](../README.md)  
> **Architecture dependency:** [`../architecture_rules.md`](../architecture_rules.md)  
> **Accessibility dependency:** [`../tokens/accessibility.md`](../tokens/accessibility.md)

This document governs reusable server-rendered components, form controls, actions, composite widgets, and HTMX fragments.

## 1. Component definition

A component is a reusable unit of content or interaction with:

- A clear responsibility.
- Explicit input data.
- Semantic markup.
- Defined state variants.
- Predictable styling hooks.
- No hidden global dependency.
- A stable accessibility contract.
- A documented fallback when enhanced.

A fragment is a server-rendered component response intended for replacement inside an existing shell.

A page section may compose multiple components but must not become a hidden client-side application boundary.

## 2. Required component record

Document or make evident:

- Component name and purpose.
- Owning domain or package.
- Input contract.
- Required and optional fields.
- Output and event behavior.
- Semantic root element.
- Child structure.
- Token dependencies.
- State variants.
- HTMX target and swap behavior when applicable.
- Focus behavior.
- Accessible name, description, role, value, and state requirements.
- Empty, loading, error, and success behavior.
- Baseline fallback behavior.
- Version or deprecation status when the component is shared across products.

Recommended record:

```yaml
component:
  name: service-card
  purpose: Link a user to one service detail page
  root: article
  inputs:
    required: [title, url]
    optional: [summary, image, proof]
  states: [default, hover, focus-visible, unavailable]
  tokens: [surface, text-primary, border, radius-card, shadow-card]
  fallback: normal anchor navigation
  accessibility:
    name_source: visible link text
    relationships: []
  htmx: null
```

## 3. Required states

Implement when relevant:

```text
default
hover
focus-visible
active
selected
expanded
collapsed
disabled
loading
empty
error
success
read-only
unavailable
pending
```

Do not implement only the visually ideal state.

A state must have consistent semantic, visual, keyboard, and server behavior. A visual state class must not contradict the associated native or ARIA state.

## 4. Markup and naming

Use semantic HTML first. Styling classes describe component or structural intent.

Recommended convention:

```text
component
component__element
component--variant
.is-state
.has-condition
```

Rules:

- Universal components use stable semantic names.
- Product wrappers may add a namespace without renaming the underlying contract.
- State classes represent state, not appearance.
- Data attributes expose behavior hooks or data identity, not authorization.
- IDs are unique and generated predictably when a component can repeat.

JavaScript may toggle state classes and attributes; it may not own component appearance through generated utility strings.

## 5. Tailwind ownership

- Repeated component styling belongs in the canonical input stylesheet.
- Universal primitives precede component contracts.
- Feature-specific variants follow universal components.
- Markup contains short semantic class lists.
- Raw CSS is reserved for token definitions, pseudo-elements, complex effects, browser behavior, and documented exceptions.
- Responsive behavior for repeated components belongs in the stylesheet.
- Component variants consume semantic tokens rather than raw palette values.

The repository-specific organization pattern is defined in [`../../docs/TAILWIND_PATTERN.md`](../../docs/TAILWIND_PATTERN.md).

## 6. Server rendering

A component renders a complete valid state from server data. The server can reconstruct any fragment state without hidden browser-only information.

Primary content must not depend on a client template to become meaningful.

Server rendering must determine:

- Visibility and permission.
- Current, selected, checked, pressed, expanded, and invalid state.
- Canonical URLs.
- User-safe error and empty outcomes.
- Verified proof and claims.
- Whether an action is available.

Client code may improve continuity but may not invent authoritative state.

## 7. Composition rules

Components may compose other components when:

- Responsibilities remain identifiable.
- Inputs remain explicit.
- Nested interactive controls are valid.
- Focus and announcement behavior remain predictable.
- Token and profile dependencies remain semantic.
- The composition does not duplicate an existing universal contract.

Avoid deeply nested wrappers that exist only to reproduce a visual mockup.

Do not place interactive controls inside other interactive controls.

## 8. HTMX fragment contract

Each fragment defines:

- Trigger.
- Request method.
- Request inputs.
- Authorization and CSRF requirements.
- Target.
- Swap strategy.
- Loading indicator.
- Busy state.
- Empty result.
- Validation or request error.
- Success result.
- Focus destination.
- Announcement behavior.
- History behavior.
- Correct title or current-navigation behavior when relevant.
- Baseline full-response path.

A normal server response path remains available where practical.

Fragments must:

- Return correct HTTP status and headers.
- Avoid duplicate IDs.
- Preserve or deliberately restore focus.
- Return truthful ARIA state.
- Remain reconstructable through a direct server request.
- Avoid replacing the complete document body for ordinary navigation.

## 9. Accessibility

Components preserve:

- Correct native semantics.
- Accurate accessible names and descriptions.
- Keyboard operation.
- Visible and unobscured focus.
- Correct expanded, selected, pressed, checked, invalid, busy, current, and modal state.
- Valid ID relationships.
- Logical source and focus order.
- Appropriate live announcements.
- Adequate target size.
- Zoom and narrow-screen usability.

Icon-only controls require names. Decorative icons are hidden from assistive technology. Partial ARIA widget implementations are prohibited.

See [`../tokens/accessibility.md`](../tokens/accessibility.md).

## 10. Forms

Reusable form controls define:

- Label.
- Control.
- Name and submitted value.
- Hint.
- Required or optional status.
- Format constraints.
- Error association.
- Disabled and read-only behavior.
- Loading behavior when submission is pending.
- Success confirmation.
- Autocomplete behavior where applicable.

Validation remains server-authoritative.

A field component must not hide the actual native control unless the replacement preserves complete keyboard, focus, value, and error behavior.

Example:

```html
<div class="form-field" data-state="error">
  <label class="form-field__label" for="email">Email address</label>
  <p class="form-field__hint" id="email-hint">We will send the estimate confirmation here.</p>
  <input
    class="form-input"
    id="email"
    name="email"
    type="email"
    autocomplete="email"
    aria-describedby="email-hint email-error"
    aria-invalid="true"
  >
  <p class="form-field__error" id="email-error">Enter a valid email address.</p>
</div>
```

## 11. Actions

Action variants retain consistent meaning across the product:

```text
primary
secondary
tertiary or ghost
destructive
link
icon-only
toggle
```

Rules:

- Primary action means the preferred next step in the current context.
- Only one action in a local decision group is normally primary.
- Destructive actions use explicit wording and confirmation proportionate to impact.
- Color alone does not communicate destructive meaning.
- Disabled actions explain unavailable state when the reason is not obvious.
- Loading actions prevent duplicate effects without erasing the action label.
- Toggle actions expose pressed or checked state as appropriate.

## 12. Navigation components

Navigation components use real links for destinations.

They define:

- Current-page state.
- Keyboard and focus behavior.
- Mobile open and closed states.
- Escape and focus restoration when a disclosure is used.
- Complete link availability without JavaScript.
- Service, category, article, and location links meaningful to users and search engines.

Ordinary website navigation must not use ARIA menu roles.

## 13. Dialogs, disclosures, and composite widgets

A custom interactive pattern must implement the complete applicable behavior described in [`../tokens/accessibility.md`](../tokens/accessibility.md).

Required documentation includes:

- Native element or ARIA pattern selected.
- Keyboard commands.
- Focus entry and exit.
- Open, closed, selected, or expanded state.
- Relationship IDs.
- Escape and dismissal behavior.
- Baseline or fallback behavior.

Do not ship a partially implemented tab, menu, dialog, accordion, combobox, or listbox pattern.

## 14. Feedback and status components

Alerts, notices, toasts, progress, and status regions define:

- Severity and meaning.
- Whether the message interrupts the user.
- Dismissal behavior.
- Persistence.
- Focus behavior.
- Live-region behavior.
- Recovery or next action.

Use assertive announcements only when immediate attention is required. Do not repeatedly announce the same status.

## 15. Media components

Image, gallery, before-and-after, video, and lightbox components define:

- Alternative text or decorative treatment.
- Dimensions and responsive source behavior.
- Caption and attribution.
- Keyboard controls.
- Focus behavior.
- Reduced-motion behavior.
- Permission and proof source where applicable.

Before-and-after components must not exaggerate or misrepresent results.

## 16. Responsive behavior

Components preserve semantic source order, avoid hiding essential information, maintain touch-friendly controls, and define how layouts stack at narrow widths.

Responsive behavior belongs in the stylesheet for repeated components.

A desktop table or grid must not be converted into visually attractive mobile cards if doing so destroys header, label, source-order, or comparison relationships.

## 17. Content integrity

Components that display reviews, credentials, ratings, metrics, guarantees, licenses, badges, prices, availability, or customer identities require verified source data.

Missing proof is hidden or represented as an editable placeholder, never fabricated.

A component should make the source or context of important proof available when doing so improves credibility or interpretation.

## 18. Versioning and deprecation

Shared component contract changes must document compatibility impact.

A deprecated component must define:

- Replacement component.
- Migration guidance.
- Compatibility period.
- Removal condition.
- Known accessibility or behavior differences.

Do not maintain two universal components for the same responsibility without a documented migration or product distinction.

## 19. Example section contract

```html
<section class="site-section services-section" aria-labelledby="services-title">
  <div class="site-section__inner services-section__inner">
    <header class="site-section__header services-section__header">
      <p class="site-section__eyebrow">Services</p>
      <h2 id="services-title" class="site-section__title">How we can help</h2>
      <p class="site-section__text">Choose the service that matches your project.</p>
    </header>

    <div class="site-section__layout services-section__layout">
      <!-- Server-rendered service-card components -->
    </div>
  </div>
</section>
```

## 20. Validation matrix

Review applicable component behavior under:

- Default server-rendered response.
- No JavaScript.
- HTMX success.
- HTMX validation failure.
- Network or server failure.
- Empty data.
- Long content.
- Keyboard-only use.
- Screen-reader navigation.
- Zoom and increased text spacing.
- Reduced motion.
- Narrow width near `320px`.
- Duplicate rendering on the same page.
- Unauthorized or unavailable action.

## 21. Review checklist

- Is the component reusable rather than page-bound without reason?
- Are inputs explicit?
- Is markup semantic?
- Are all relevant states implemented?
- Are tokens semantic?
- Does it work without JavaScript where practical?
- Is HTMX state reconstructable by the server?
- Are names, roles, states, focus, relationships, and announcements correct?
- Does it remain usable at narrow widths and zoom?
- Are HTTP, validation, and authorization outcomes correct?
- Is displayed proof factual?
- Is any deprecation or compatibility impact documented?
