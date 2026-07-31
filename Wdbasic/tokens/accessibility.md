# WDBASIC Accessibility and ARIA Contract

This document is binding for accessibility semantics, accessible names and descriptions, keyboard behavior, focus, dynamic announcements, and HTMX fragment accessibility.

WDBASIC targets WCAG 2.2 AA where practical.

## 1. Native HTML first

Use native elements whenever they provide the required semantics and behavior:

- `<button>` for actions.
- `<a href>` for navigation.
- Native form controls with `<label>`.
- `<fieldset>` and `<legend>` for related controls.
- `<details>` and `<summary>` for simple disclosures.
- `<dialog>` for supported dialog behavior.
- Native landmarks and table elements.

ARIA must not be added when native HTML already exposes the correct name, role, state, value, and keyboard behavior. Incorrect ARIA is prohibited.

## 2. Contrast and visual access

- Normal text must meet at least `4.5:1` contrast.
- Large text must meet at least `3:1` contrast.
- Important controls, focus indicators, and meaningful graphical objects must meet at least `3:1` against adjacent colors where applicable.
- Placeholder text is not a label.
- Information must not be communicated by color alone.
- Focus must remain visible and unobscured.
- Reduced-motion preferences must be respected.

## 3. Accessible names

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
- Meaningful images use appropriate alternative text.
- Decorative images use empty alternative text or are removed from the accessibility tree.

```html
<button type="button" aria-label="Close dialog">
  <span aria-hidden="true">×</span>
</button>
```

## 4. Descriptions and errors

Use `aria-describedby` for supplemental instructions, constraints, hints, consequences, and field errors.

- Descriptions supplement rather than duplicate names.
- Required formats should be available before submission.
- Validation errors are programmatically associated with the affected field.
- Invalid fields use `aria-invalid="true"` when appropriate.
- Complex forms provide an error summary linked to invalid fields.

## 5. Roles, states, and properties

ARIA must remain truthful throughout the component lifecycle.

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

State changes must occur at the same time as visual and behavioral changes. Server-rendered fragments must return correct state after every replacement.

## 6. Dynamic updates and live regions

Use the least disruptive announcement mechanism:

- `role="status"` or `aria-live="polite"` for ordinary confirmations and background updates.
- `role="alert"` or assertive announcements only for urgent conditions requiring immediate attention.
- `aria-busy="true"` while a meaningful region is being updated.

Do not announce routine visual changes. Avoid duplicate announcements. Live-region containers should exist before content is inserted. Loading messages must resolve into success, empty, or error outcomes.

## 7. HTMX accessibility

Every HTMX interaction defines:

- Triggering control name.
- Target region semantics.
- Loading and busy state.
- Empty, error, and success announcements.
- Focus destination after replacement.
- History behavior.
- Any change to title or current navigation state.

Move focus only when context would otherwise be lost. Passive background updates must not steal focus. Validation failures focus the error summary or first invalid field according to the form contract. Opened dialogs receive focus and return it when closed.

## 8. Disclosures, menus, tabs, and widgets

Custom widgets must implement the complete relevant keyboard and semantic pattern.

### Disclosures

- Use a button trigger.
- Maintain `aria-expanded`.
- Use `aria-controls` when useful and valid.
- Hide collapsed content visually and semantically.

### Menus

Ordinary website navigation uses semantic lists and links, not ARIA menu roles. Menu roles are reserved for application command menus implementing the required keyboard behavior.

### Tabs

A custom tab interface implements `tablist`, `tab`, and `tabpanel` relationships, `aria-selected`, valid references, focus management, and arrow-key behavior. Partial ARIA widgets are prohibited.

## 9. Dialogs

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

Visual positioning or high `z-index` alone does not create a dialog.

## 10. Hidden and inert content

- Do not place `aria-hidden="true"` on a focusable element or an ancestor containing focus.
- Content visually hidden but required by assistive technology uses an approved visually-hidden utility.
- Content hidden from all users uses `hidden` or another mechanism removing it from layout and the accessibility tree.
- Inactive modal backgrounds should use `inert` where appropriate.
- Decorative icons inside named controls should generally use `aria-hidden="true"`.

## 11. Relationship integrity

- Referenced IDs must exist.
- IDs must be unique.
- ARIA relationships must target the intended element.
- Repeated fragments must not create duplicate IDs.
- Removed content must not leave broken references.
- Avoid `aria-owns` unless DOM structure cannot express the relationship.

## 12. Keyboard and focus

ARIA does not provide keyboard behavior automatically.

Every custom widget implements expected keyboard commands, visible focus, logical focus order, focus restoration, and no keyboard traps except a correctly implemented active modal.

Interactive targets should generally be at least `44px × 44px`. Essential information must not depend on hover or pointer input.

## 13. Resilience testing

Test affected interfaces for:

- Browser zoom.
- Increased text spacing.
- Reduced motion.
- Keyboard-only use.
- Screen-reader navigation.
- High-contrast conditions where supported.
- Narrow layouts near `320px`.
- Correct names, roles, states, and values.
- Focus order and restoration.
- Dynamic announcements.
- Valid references and duplicate IDs.
- Behavior before and after HTMX replacement.

Automated checks supplement but do not replace keyboard and screen-reader testing.

## 14. Compliance checklist

- Are native elements used wherever practical?
- Does every interactive control have an accurate accessible name?
- Do visible labels and accessible names communicate the same purpose?
- Are descriptions and errors associated correctly?
- Do ARIA states match visual and behavioral state?
- Are dynamic updates announced only when needed?
- Are dialogs and composite widgets fully implemented?
- Are all references valid and IDs unique?
- Is keyboard behavior complete?
- Has focus and announcement behavior been tested?

ARIA supplements semantic HTML; it does not repair incorrect structure or missing behavior.
