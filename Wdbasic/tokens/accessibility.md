# WDBASIC Accessibility and ARIA Contract

> **Authority:** Binding accessibility contract  
> **Core entry point:** [`../README.md`](../README.md)  
> **Architecture dependency:** [`../architecture_rules.md`](../architecture_rules.md)

This document governs accessibility semantics, accessible names and descriptions, keyboard behavior, focus, dynamic announcements, media, forms, tables, authentication, and HTMX fragment accessibility.

WDBASIC targets WCAG 2.2 AA where practical. Automated conformance results do not replace keyboard, zoom, and assistive-technology testing.

## 1. Native HTML first

Use native elements whenever they provide the required semantics and behavior:

- `<button>` for actions.
- `<a href>` for navigation.
- Native form controls with `<label>`.
- `<fieldset>` and `<legend>` for related controls.
- `<details>` and `<summary>` for simple disclosures.
- `<dialog>` for supported dialog behavior.
- `<nav>`, `<main>`, `<header>`, `<footer>`, and `<aside>` for landmarks.
- `<table>`, `<caption>`, `<thead>`, `<tbody>`, and `<th>` for tabular data.

ARIA must not be added when native HTML already exposes the correct name, role, state, value, and keyboard behavior.

Incorrect or misleading ARIA is prohibited. No ARIA is preferable to false ARIA.

## 2. Document structure

Every complete page must provide:

- A valid document language through `lang`.
- A unique and meaningful page title.
- One discoverable main content region.
- Logical heading order.
- Landmark labels when multiple landmarks of the same type exist.
- A keyboard-accessible method to bypass repeated navigation, normally a skip link.
- Source order that remains meaningful without CSS.

Visual heading size does not determine semantic heading level.

## 3. Contrast and visual access

- Normal text must meet at least `4.5:1` contrast.
- Large text must meet at least `3:1` contrast.
- Important controls, focus indicators, and meaningful graphical objects must meet at least `3:1` against adjacent colors where applicable.
- Placeholder text is not a label.
- Information must not be communicated by color alone.
- Focus remains visible and unobscured.
- Text remains readable at zoom and with increased text spacing.
- Reduced-motion preferences are respected.
- Forced-colors and high-contrast conditions are reviewed where supported.

Disabled content must remain understandable. Muted text is not exempt from contrast requirements.

## 4. Accessible names

Every focusable or interactive element must expose an accurate accessible name.

Priority:

1. Visible native text or an associated `<label>`.
2. `aria-labelledby` referencing visible text.
3. `aria-label` only when no suitable visible label exists.

Rules:

- Names describe purpose, not appearance.
- Visible text and the accessible name communicate the same action or destination.
- Icon-only buttons require an accessible name.
- Repeated controls distinguish their targets.
- Link names make sense outside the surrounding sentence where practical.
- Meaningful images use appropriate alternative text.
- Decorative images use empty alternative text or are removed from the accessibility tree.
- Logos use concise alternative text representing the organization or destination.
- SVG icons inside named controls are normally hidden from assistive technology.

```html
<button type="button" aria-label="Close estimate dialog">
  <span aria-hidden="true">×</span>
</button>
```

## 5. Descriptions, instructions, and errors

Use `aria-describedby` for supplemental instructions, constraints, hints, consequences, and field errors.

- Descriptions supplement rather than duplicate names.
- Required formats and constraints are available before submission where practical.
- Required status is communicated programmatically and visually.
- Validation errors are programmatically associated with the affected field.
- Invalid fields use `aria-invalid="true"` when appropriate.
- Complex forms provide an error summary linked to invalid fields.
- Error wording identifies the problem and the required correction.
- Help text remains available when the field receives focus.

Do not remove user input after a recoverable validation error.

## 6. Roles, states, and properties

ARIA remains truthful throughout the component lifecycle.

Common requirements include:

- `aria-current="page"` for the current navigation destination.
- `aria-expanded` for disclosure controls.
- `aria-controls` when a reliable controlled relationship exists.
- `aria-selected` for selectable composite-widget items.
- `aria-pressed` for toggle buttons.
- `aria-checked` for custom checkable widgets.
- `aria-invalid` for invalid controls.
- `aria-busy` for updating regions.
- `aria-modal="true"` for active modal dialogs.

State changes occur at the same time as visual and behavioral changes. Server-rendered fragments return correct state after every replacement.

ARIA must not claim a relationship or behavior that does not exist.

## 7. Keyboard access

All interactive behavior is keyboard operable.

Requirements:

- Logical tab order.
- No positive `tabindex` values for ordinary layout correction.
- Visible focus indicators.
- No keyboard traps except a correctly implemented active modal.
- Escape behavior for dismissible temporary surfaces when safe.
- Enter and Space behavior consistent with the native control or documented widget pattern.
- Arrow-key behavior for composite widgets where the selected pattern requires it.
- No essential action available only through hover, drag, swipe, or pointer precision.

ARIA does not create keyboard behavior. Custom controls must implement the complete interaction model.

## 8. Focus management

Focus moves only when required to preserve context or complete an interaction.

- Page navigation begins at a predictable location.
- Skip links become visible on focus.
- Opening a modal moves focus inside it.
- Closing a modal returns focus to the invoker or a logical successor.
- Validation failure focuses the error summary or first invalid field according to the form contract.
- Fragment replacement preserves focus when the focused element remains valid.
- Replaced content receives focus only when the user would otherwise lose context.
- Passive background updates never steal focus.
- Sticky headers, banners, and action bars do not obscure focused elements.

Use `scroll-margin` or equivalent layout behavior where anchored or focused content would otherwise be hidden.

## 9. Target size and pointer access

Interactive targets should generally provide at least `44px × 44px` of usable target area.

Where a smaller inline target is unavoidable, maintain sufficient spacing and avoid clustering multiple small targets together.

Actions must not depend on path-based pointer movement, multi-point gestures, or drag-only operation without an equivalent accessible method.

## 10. Dynamic updates and live regions

Use the least disruptive announcement mechanism:

- `role="status"` or `aria-live="polite"` for ordinary confirmations and background updates.
- `role="alert"` or assertive announcements only for urgent conditions requiring immediate attention.
- `aria-busy="true"` while a meaningful region is being updated.

Do not announce routine visual changes. Avoid duplicate announcements. Live-region containers should exist before content is inserted. Loading messages resolve into success, empty, or error outcomes.

Status messages identify what changed, not merely that “something happened.”

## 11. HTMX accessibility

Every HTMX interaction defines:

- Triggering control name.
- Target region semantics.
- Loading and busy state.
- Empty, error, and success announcements.
- Focus destination after replacement.
- History behavior.
- Any change to title or current navigation state.
- Baseline non-HTMX response behavior.

Required behavior:

- Set `aria-busy="true"` on an updating region when useful.
- Remove or set `aria-busy="false"` after completion.
- Preserve valid ARIA relationships after swaps.
- Prevent duplicate IDs when fragments render more than once.
- Return correct selected, expanded, current, invalid, and disabled state from the server.
- Keep direct URLs and browser history meaningful when history is changed.

## 12. Disclosures, menus, tabs, and widgets

Custom widgets implement the complete relevant keyboard and semantic pattern.

### Disclosures

- Use a button trigger.
- Maintain `aria-expanded`.
- Use `aria-controls` when useful and valid.
- Hide collapsed content visually and semantically.

### Menus

Ordinary website navigation uses semantic lists and links, not ARIA menu roles. Menu roles are reserved for application command menus implementing the required keyboard behavior.

### Tabs

A custom tab interface implements:

- `tablist`, `tab`, and `tabpanel` relationships.
- `aria-selected`.
- Valid `aria-controls` and `aria-labelledby` references.
- Managed focus.
- Required arrow-key behavior.
- A meaningful baseline when enhancement fails.

### Accordions

Accordion triggers use buttons and expose expanded state. Heading structure remains logical. Multiple open panels are allowed only when the interaction model and content warrant it.

Partial ARIA widgets are prohibited.

## 13. Dialogs and temporary surfaces

A modal dialog must:

- Have an accessible name.
- Expose native dialog semantics or `role="dialog"`.
- Use `aria-modal="true"` when modal.
- Move focus inside when opened.
- Keep focus within the active modal.
- Provide an explicit close control.
- Support Escape unless closing risks data loss.
- Return focus to the invoking control or logical successor.
- Prevent inactive background content from receiving focus.

Non-modal popovers, tooltips, and disclosure panels must not be implemented as modal dialogs.

Visual positioning or high `z-index` alone does not create a dialog.

## 14. Hidden and inert content

- Do not place `aria-hidden="true"` on a focusable element or an ancestor containing focus.
- Content visually hidden but required by assistive technology uses an approved visually-hidden utility.
- Content hidden from all users uses `hidden` or another mechanism removing it from layout and the accessibility tree.
- Inactive modal backgrounds should use `inert` where appropriate.
- Hidden content must not contain reachable keyboard targets.
- Off-canvas navigation must be removed from focus order while closed.

## 15. Relationship and identifier integrity

- Referenced IDs must exist.
- IDs must be unique.
- ARIA relationships target the intended element.
- Repeated fragments must not create duplicate IDs.
- Removed content must not leave broken references.
- Avoid `aria-owns` unless DOM structure cannot express the relationship.
- Labels, descriptions, controls, panels, and headings retain valid relationships after HTMX replacement.

## 16. Forms and authentication

Forms follow the requirements in [`../components/component-contracts.md`](../components/component-contracts.md).

Additional requirements:

- Autocomplete tokens are used for common personal and authentication fields where appropriate.
- Password managers and paste are not blocked without a documented security reason.
- Authentication challenges provide understandable instructions and recovery.
- Time limits are avoided or allow extension where practical.
- Multi-step forms communicate progress and preserve context.
- Confirmation requirements are proportionate to risk.
- Destructive actions identify the object and consequence.

## 17. Media and animation

- Meaningful prerecorded video provides captions.
- Audio-only content provides a transcript where required for equivalent access.
- Media controls are keyboard operable and named.
- Autoplay with sound is prohibited.
- Motion that can trigger discomfort is avoided or disabled under reduced-motion preferences.
- Carousels and sliders provide pause, navigation, status, and non-drag alternatives.
- Before-and-after controls expose understandable labels and keyboard operation.

Essential instructions and evidence must not exist only inside images or video.

## 18. Tables and data presentation

Use tables only for tabular relationships.

- Provide a caption or nearby accessible name when the table purpose is not obvious.
- Use header cells and appropriate scope or relationships.
- Keep source order logical on narrow screens.
- Do not remove headers merely to create a card appearance.
- Responsive transformations preserve the relationship between headers and values.
- Sorting controls are buttons and expose current sort direction.
- Empty and loading states remain understandable.

## 19. Content and cognitive clarity

- Instructions use plain, specific language.
- Error messages identify correction steps.
- Repeated navigation remains consistent.
- Controls with the same purpose use consistent labels.
- Icons do not replace necessary text for unfamiliar or high-impact actions.
- Time-sensitive or irreversible actions explain consequences before activation.
- Fake urgency, flashing content, and distracting continuous motion are prohibited.

## 20. Resilience testing

Test affected interfaces for:

- Browser zoom to at least `200%` and higher where the layout is expected to reflow.
- Increased text spacing.
- Reduced motion.
- Keyboard-only use.
- Screen-reader navigation.
- High-contrast or forced-colors conditions where supported.
- Narrow layouts near `320px`.
- Correct names, roles, states, and values.
- Focus order and restoration.
- Dynamic announcements.
- Valid references and duplicate IDs.
- Behavior before and after HTMX replacement.
- Baseline behavior with enhancement scripts unavailable.

Automated checks supplement but do not replace manual keyboard and screen-reader testing.

## 21. Compliance checklist

- Is document language defined?
- Are landmarks and headings logical?
- Is repeated navigation bypassable?
- Are native elements used wherever practical?
- Does every interactive control have an accurate accessible name?
- Do visible labels and accessible names communicate the same purpose?
- Are descriptions and errors associated correctly?
- Do ARIA states match visual and behavioral state?
- Are dynamic updates announced only when needed?
- Are dialogs and composite widgets fully implemented?
- Are all references valid and IDs unique?
- Is keyboard behavior complete?
- Are focus and target size sufficient?
- Does media provide equivalent access?
- Does the interface remain usable at zoom and narrow widths?
- Has focus and announcement behavior been tested?

ARIA supplements semantic HTML; it does not repair incorrect structure or missing behavior.
