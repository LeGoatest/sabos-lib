# WDBASIC Component Contracts

This document governs reusable server-rendered components and HTMX fragments.

## 1. Component definition

A component is a reusable unit of content or interaction with:

- A clear responsibility.
- Explicit input data.
- Semantic markup.
- Defined state variants.
- Predictable styling hooks.
- No hidden global dependency.

A fragment is a server-rendered component response intended for replacement inside an existing shell.

## 2. Required component record

Document or make evident:

- Component name and purpose.
- Input contract.
- Required and optional fields.
- Semantic root element.
- Child structure.
- Token dependencies.
- State variants.
- HTMX target and swap behavior when applicable.
- Focus behavior.
- Accessible name, description, role, and state requirements.
- Fallback behavior.

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
```

Do not implement only the visually ideal state.

## 4. Markup and naming

Use semantic HTML first. Styling classes should describe component or structural intent.

Recommended convention:

```text
component
component__element
component--variant
.is-state
.has-condition
```

JavaScript may toggle state classes and attributes; it may not own component appearance through generated utility strings.

## 5. Tailwind ownership

- Repeated component styling belongs in the canonical input stylesheet.
- Universal primitives precede component contracts.
- Feature-specific variants follow universal components.
- Markup should contain short semantic class lists.
- Raw CSS is reserved for token definitions, pseudo-elements, complex effects, browser behavior, and documented exceptions.

## 6. Server rendering

A component must render a complete valid state from server data. The server must be able to reconstruct any fragment state without hidden browser-only information.

Primary content must not depend on a client template to become meaningful.

## 7. HTMX fragment contract

Each fragment defines:

- Trigger.
- Request inputs.
- Target.
- Swap strategy.
- Loading indicator.
- Busy state.
- Empty result.
- Validation or request error.
- Success result.
- Focus destination.
- History behavior.
- Correct title or current-navigation behavior when relevant.

A normal server response path must remain available where practical.

## 8. Accessibility

Components must preserve:

- Correct native semantics.
- Accurate accessible names and descriptions.
- Keyboard operation.
- Visible focus.
- Correct expanded, selected, pressed, checked, invalid, busy, and modal state.
- Valid ID relationships.
- Logical source and focus order.
- Appropriate live announcements.

Icon-only controls require names. Decorative icons are hidden from assistive technology. Partial ARIA widget implementations are prohibited.

## 9. Forms

Reusable form controls define:

- Label.
- Control.
- Hint.
- Required or optional status.
- Error association.
- Disabled and read-only behavior.
- Loading behavior when submission is pending.
- Success confirmation.

Validation remains server-authoritative.

## 10. Actions

Action variants must retain consistent meaning across the product:

```text
primary
secondary
tertiary or ghost
destructive
link
icon-only
```

A destructive action requires clear wording and confirmation proportionate to impact. Color alone does not communicate destructive meaning.

## 11. Responsive behavior

Components preserve semantic source order, avoid hiding essential information, maintain touch-friendly controls, and define how layouts stack at narrow widths.

Responsive behavior belongs in the stylesheet for repeated components.

## 12. Content integrity

Components that display reviews, credentials, ratings, metrics, guarantees, licenses, badges, or customer identities require verified source data. Missing proof is hidden or represented as an editable placeholder, never fabricated.

## 13. Example section contract

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

## 14. Review checklist

- Is the component reusable rather than page-bound without reason?
- Are inputs explicit?
- Is markup semantic?
- Are all relevant states implemented?
- Are tokens semantic?
- Does it work without JavaScript where practical?
- Is HTMX state reconstructable by the server?
- Are names, roles, states, focus, and announcements correct?
- Does it remain usable at narrow widths and zoom?
- Is displayed proof factual?
