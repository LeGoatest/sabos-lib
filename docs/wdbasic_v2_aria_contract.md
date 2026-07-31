# WDBASIC v2 ARIA and Accessible Name Contract

This document is a **binding extension to WDBASIC v2**. It governs Accessible Rich Internet Applications (ARIA), accessible names and descriptions, assistive-technology announcements, and the accessibility semantics of dynamic components.

It MUST be read together with `docs/wdbasic_v2.md`. When this contract conflicts with native HTML semantics, valid native HTML takes precedence.

---

## 1. Core Rule: Native HTML First

Use the correct native HTML element or attribute whenever it provides the required semantics and behavior.

Preferred examples include:

- `<button>` for actions.
- `<a href>` for navigation.
- `<input>`, `<select>`, and `<textarea>` for form controls.
- `<label>` for form-control labels.
- `<fieldset>` and `<legend>` for related form groups.
- `<details>` and `<summary>` for simple disclosures.
- `<dialog>` for supported modal-dialog behavior.
- `<nav>`, `<main>`, `<header>`, `<footer>`, and `<aside>` for landmarks.
- `<table>`, `<caption>`, `<th>`, and valid header relationships for tabular data.

ARIA MUST NOT be added when native HTML already exposes the correct name, role, state, value, and keyboard behavior.

Invalid or misleading ARIA is prohibited. No ARIA is preferable to incorrect ARIA.

---

## 2. Accessible Name Contract

Every focusable or interactive element MUST expose an accurate accessible name.

Use this priority order:

1. Visible native text or an associated native `<label>`.
2. `aria-labelledby` referencing visible descriptive text.
3. `aria-label` only when no suitable visible label exists.

Rules:

- Accessible names MUST describe purpose rather than appearance.
- Visible text and the accessible name MUST communicate the same action or destination.
- `aria-label` MUST NOT replace useful visible text merely to shorten screen-reader output.
- Icon-only buttons MUST have an accessible name.
- Repeated controls MUST have names that distinguish their targets, such as `Delete photo: driveway before` rather than repeated `Delete` labels.
- Images MUST use meaningful `alt` text when they convey content.
- Decorative images MUST use empty alternative text or an equivalent method that removes them from the accessibility tree.
- Placeholder text MUST NOT serve as the only control label.

Example:

```html
<button type="button" aria-label="Close dialog">
    <span aria-hidden="true">×</span>
</button>
```

---

## 3. Accessible Description Contract

Use descriptions for supplemental instructions, constraints, hints, consequences, and error details.

- Use `aria-describedby` to associate a control with existing descriptive text.
- Descriptions MUST supplement the accessible name, not duplicate it.
- Required formats and constraints SHOULD be available before submission.
- Validation messages MUST be associated with the affected control.
- Complex forms SHOULD provide an error summary that links to invalid fields.

Example:

```html
<label for="email">Email address</label>
<input
    id="email"
    name="email"
    type="email"
    aria-describedby="email-hint email-error"
    aria-invalid="true"
>
<p id="email-hint">We will send the estimate confirmation here.</p>
<p id="email-error">Enter a valid email address.</p>
```

---

## 4. Role, State, and Property Contract

ARIA roles, states, and properties MUST reflect the component's current behavior and server state.

Required examples include:

- `aria-current="page"` for the current navigation destination.
- `aria-expanded` for controls that open or collapse content.
- `aria-controls` when a disclosure control manages an identified region.
- `aria-selected` for selectable composite-widget items when required by the widget pattern.
- `aria-pressed` for toggle buttons.
- `aria-checked` for custom checkable widgets.
- `aria-invalid="true"` for invalid fields.
- `aria-busy="true"` while a region is being updated.
- `aria-modal="true"` for an active modal dialog when appropriate.

Rules:

- ARIA state MUST change at the same time as the visual and behavioral state.
- Server-rendered fragments MUST return correct ARIA state after every replacement.
- ARIA MUST NOT claim behavior that is absent.
- Redundant roles that merely repeat native semantics SHOULD be omitted.
- Role changes after initial rendering SHOULD be avoided unless required by a documented widget pattern.

---

## 5. Dynamic Updates and Live Regions

Dynamic content that affects the user's task MUST be announced when it would otherwise be missed by assistive technology.

Use the least disruptive announcement mechanism:

- `role="status"` or `aria-live="polite"` for ordinary confirmations and background updates.
- `role="alert"` or assertive announcements only for urgent errors or conditions requiring immediate attention.
- `aria-busy="true"` while a fragment is loading or being replaced.

Rules:

- Do not announce routine visual changes that provide no actionable information.
- Do not repeatedly announce the same message.
- Live-region containers SHOULD exist before their content is updated.
- Loading messages MUST resolve into success, empty, or error messages.
- HTMX swaps MUST preserve or deliberately restore the intended live-region behavior.

Example:

```html
<div id="form-status" role="status" aria-live="polite"></div>
```

---

## 6. HTMX Accessibility Contract

Every HTMX interaction MUST define:

- The triggering control's accessible name.
- The target region's semantic role when one is needed.
- Loading and busy state.
- Success, empty, and error announcements.
- Focus destination after replacement.
- Whether browser history changes.
- Whether the replacement affects the current page title or navigation state.

Required behavior:

- Set `aria-busy="true"` on the updating region while a request is active where useful.
- Remove or set `aria-busy="false"` after completion.
- Move focus only when the user's context would otherwise be lost.
- Do not force focus for passive background updates.
- When validation fails, focus the error summary or first invalid field according to the form contract.
- Newly opened dialogs MUST receive focus and return focus to the invoking control when closed.

---

## 7. Disclosure, Menu, Tabs, and Composite Widgets

Custom widgets MUST follow the relevant WAI-ARIA Authoring Practices Guide keyboard and semantic pattern.

### Disclosures

- Use a button as the trigger.
- Maintain `aria-expanded`.
- Use `aria-controls` when it provides a reliable relationship.
- The controlled content MUST be hidden visually and semantically when collapsed.

### Menus

- Ordinary website navigation SHOULD use semantic lists and links, not the ARIA `menu` role.
- Use ARIA menu roles only for application-style command menus that implement the required keyboard behavior.

### Tabs

A custom tab interface MUST implement the complete tab pattern, including:

- `tablist`, `tab`, and `tabpanel` relationships.
- `aria-selected` state.
- Valid `aria-controls` and `aria-labelledby` references.
- Roving focus or another approved keyboard model.
- Arrow-key behavior required by the selected interaction model.

Partial ARIA widgets are prohibited.

---

## 8. Dialog Contract

A modal dialog MUST:

- Have an accessible name using `aria-labelledby` or `aria-label`.
- Expose dialog semantics through native `<dialog>` or `role="dialog"`.
- Use `aria-modal="true"` when it is modal.
- Move focus into the dialog when opened.
- Keep keyboard focus within the modal while active.
- Close with an explicit control.
- Support Escape when closing does not create data-loss risk.
- Return focus to the invoking control or a logical successor.
- Prevent inactive background content from receiving focus.

A dialog MUST NOT be represented only by visual positioning or a high `z-index`.

---

## 9. Hidden and Inert Content

- `aria-hidden="true"` MUST NOT be applied to a focusable element or an ancestor containing active focus.
- Content hidden visually but still required by assistive technology MUST use an approved visually-hidden utility rather than `display: none`.
- Content hidden from all users SHOULD use the native `hidden` attribute or another mechanism that removes it from layout and the accessibility tree.
- Inactive modal background content SHOULD use `inert` where supported and appropriate.
- Decorative icons inside named controls SHOULD generally use `aria-hidden="true"`.

---

## 10. Relationship and Identifier Integrity

ARIA relationships MUST remain valid after server rendering and fragment replacement.

- Every referenced ID MUST exist.
- IDs MUST be unique within the document.
- `aria-labelledby`, `aria-describedby`, `aria-controls`, `aria-owns`, and similar references MUST target the intended element.
- Fragment templates MUST avoid duplicate IDs when rendered more than once.
- Removed content MUST not leave controls referencing nonexistent elements.

`aria-owns` SHOULD be avoided unless the accessibility-tree relationship cannot be expressed through DOM structure.

---

## 11. Keyboard and Focus Contract

ARIA does not provide keyboard behavior automatically.

Every custom interactive widget MUST implement:

- The expected keyboard commands for its pattern.
- A visible focus indicator.
- Logical focus order.
- Focus restoration after temporary surfaces close.
- No keyboard traps except a correctly implemented active modal dialog.
- No reliance on hover or pointer input alone.

Use native controls whenever implementing the complete keyboard model would otherwise require custom code.

---

## 12. Testing Contract

ARIA-dependent components MUST be tested for:

- Correct accessible name.
- Correct role.
- Correct state and value.
- Keyboard operation.
- Visible focus.
- Focus order and restoration.
- Screen-reader announcement of dynamic changes.
- Valid ID references.
- Duplicate IDs.
- Behavior before and after HTMX fragment replacement.
- Narrow layouts, zoom, increased text spacing, and reduced motion.

Automated testing SHOULD be supplemented with keyboard and screen-reader testing. Passing an automated checker alone does not establish compliance.

---

## 13. Compliance Checklist

A WDBASIC v2 implementation MUST be able to answer yes to the following:

- Do native HTML elements provide semantics wherever possible?
- Does every interactive element expose an accurate accessible name?
- Do visible labels and accessible names communicate the same purpose?
- Are descriptions and validation errors programmatically associated?
- Do ARIA states match the current visual and behavioral state?
- Are dynamic HTMX updates announced only when necessary?
- Are dialogs, disclosures, tabs, and other widgets complete rather than partially implemented?
- Are all ARIA references valid and all IDs unique?
- Is keyboard behavior complete for every custom widget?
- Has the resulting name, role, state, value, focus behavior, and announcement behavior been tested?

---

## 14. Final Principle

ARIA supplements semantic HTML; it does not repair incorrect structure or missing behavior.

Use native semantics first. Add only the ARIA required to expose an accurate name, role, state, value, relationship, or announcement. Every ARIA attribute creates a contract with assistive technology and MUST remain truthful throughout the component lifecycle.
