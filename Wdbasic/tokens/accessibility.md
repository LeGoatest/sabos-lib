# WDBASIC Accessibility and ARIA Contract

> **Authority:** Binding accessibility contract  
> **Core entry point:** [`../README.md`](../README.md)  
> **Standards registry:** [`../STANDARDS.md`](../STANDARDS.md)  
> **Coverage matrix:** [`../compliance/wcag-2.2-aa-matrix.md`](../compliance/wcag-2.2-aa-matrix.md)  
> **Cognitive contract:** [`../cognitive-accessibility.md`](../cognitive-accessibility.md)

This contract governs accessibility semantics, keyboard behavior, focus, input methods, timing, authentication, dynamic announcements, forms, human verification, custom elements, media integration, and HTMX fragment accessibility.

WDBASIC supports WCAG 2.2 Level AA evaluation. A formal claim requires the complete matrix, methodology, support evidence, and claim record; this prose alone is insufficient.

## 1. Native HTML first

Use the native element matching the behavior:

- `<button>` for actions.
- `<a href>` for navigation.
- Native controls with persistent `<label>` elements.
- `<fieldset>` and `<legend>` for related fields.
- `<details>` and `<summary>` for simple disclosures.
- `<dialog>` for supported dialog behavior.
- Landmarks and table elements for their defined structures.

Incorrect or misleading ARIA is prohibited. ARIA must not claim behavior, state, value, or relationships that do not exist.

No ARIA is preferable to false ARIA.

## 2. Document structure

Every complete page must provide:

- Correct `lang` and applicable passage-language metadata.
- A unique meaningful title.
- One discoverable main region.
- Logical heading hierarchy.
- Landmark labels when repeated landmarks require distinction.
- A keyboard-accessible bypass mechanism for repeated blocks.
- Source order meaningful without CSS.
- Orientation-independent operation unless orientation is essential.
- Correct page and process context after navigation or history replacement.

Visual heading size does not determine heading level.

## 3. Perceivable content

- Normal text meets at least `4.5:1` contrast.
- Large text meets at least `3:1`.
- Meaningful controls, focus indicators, and graphical objects meet applicable non-text contrast.
- Color is never the only carrier of meaning.
- Essential text is not provided only as an image.
- Text resizes to `200%` without loss.
- Content reflows without two-dimensional scrolling except for content that genuinely requires it.
- Increased line, paragraph, letter, and word spacing does not clip or overlap content.
- Meaningful images have context-appropriate alternatives.
- Decorative images are ignored by assistive technology.
- Charts and diagrams provide text equivalents sufficient for the task.

Media follows [`../media-accessibility.md`](../media-accessibility.md).

## 4. Accessible names and label in name

Every interactive element exposes an accurate accessible name.

Priority:

1. Visible text or associated native label.
2. `aria-labelledby` referencing visible text.
3. `aria-label` only when no suitable visible label exists.

Rules:

- Names describe purpose.
- Visible action text appears within the accessible name in the same order where practical.
- Icon-only controls have names.
- Repeated generic controls identify their target.
- Links are understandable in context and preferably when listed independently.
- Placeholder text is not a label.
- Name computation is verified in the supported accessibility tree when custom elements, shadow DOM, SVG, canvas, or native wrappers are involved.
- Draft accessible-name algorithms must not silently replace the stable baseline identified in [`../STANDARDS.md`](../STANDARDS.md).

Speech-input users must be able to identify and invoke controls using their visible labels or an equivalent exposed command.

## 5. Descriptions, instructions, and errors

- Supplemental help uses programmatic description relationships when needed.
- Required fields and formats are identified before submission where practical.
- Errors identify the affected field, problem, and correction.
- Invalid fields expose appropriate invalid state.
- Complex forms provide a linked error summary.
- Recoverable errors preserve user input.
- Error suggestions are provided when known and safe.
- Help remains available when focus enters the control.
- Critical instructions are not hidden only in hover content or a transient toast.

## 6. Roles, states, values, and status

Native and ARIA state must match visual, behavioral, server, and platform state.

Applicable states include:

- Current.
- Expanded or collapsed.
- Selected.
- Pressed.
- Checked.
- Invalid.
- Busy.
- Disabled or read-only.
- Modal.
- Required.
- Sort direction.
- Progress or value range.

Dynamic status that would otherwise be missed uses an appropriate status or live-region mechanism. Routine visual changes are not repeatedly announced.

Status messages identify what changed and any available next action.

## 7. Keyboard access

All functionality is keyboard operable.

- Tab order is logical.
- Positive `tabindex` is not used to repair layout order.
- Focus is visible and not obscured.
- Keyboard traps are prohibited except within a correctly implemented active modal.
- Escape behavior is provided for temporary dismissible surfaces when safe.
- Enter, Space, and arrow-key behavior matches the native control or complete selected widget pattern.
- Composite widgets implement their complete keyboard pattern.
- Essential actions are not hover-only.
- Native and hybrid shells preserve expected platform keyboard commands.

ARIA does not create keyboard behavior.

## 8. Focus management

- Skip links become visible on focus.
- Modal focus enters, remains contained, and returns appropriately.
- Fragment replacement preserves focus or deliberately moves it to maintain context.
- Background updates do not steal focus.
- Validation failure focuses the summary or first invalid control according to the form contract.
- Sticky headers and action bars do not obscure focused content.
- Anchored content uses suitable scroll offset behavior.
- Custom-element upgrade does not unexpectedly reset or remove focus.
- Focus transfer between native chrome and an embedded web view is predictable.

## 9. Hover and focus content

Additional content triggered by hover or focus, including tooltips and popovers, must be:

- Dismissible without moving focus or pointer when it obscures content.
- Hoverable when pointer movement over the added content is required.
- Persistent until dismissed, no longer relevant, or focus or hover moves.
- Available through keyboard focus when available through hover.

A `title` attribute alone is not an adequate tooltip contract for essential information.

## 10. Input modalities

### Character-key shortcuts

Single-character shortcuts must be disabled, remappable, or active only while the relevant control has focus.

### Pointer gestures

Multipoint or path-based gestures require a single-pointer alternative unless essential.

### Pointer cancellation

Actions should occur on the up-event, support cancellation or abort, or provide undo. Down-event activation requires an essential rationale.

### Motion actuation

Device-motion actions require a conventional interface control and a way to disable motion activation unless motion is essential.

### Dragging

Every drag operation requires a non-drag method unless dragging is essential.

### Target size

The WCAG 2.2 Level AA floor is `24 × 24` CSS pixels or sufficient spacing, subject to defined exceptions.

WDBASIC's preferred standalone target is at least `44 × 44` CSS pixels when layout permits.

### Speech and voice input

- Visible labels and accessible names remain aligned.
- Controls do not require users to guess an invisible command.
- Duplicate visible labels are disambiguated when they perform different actions.
- Custom controls remain invokable through the platform's supported voice or speech-input mechanism where that mode is in the declared support baseline.

## 11. Orientation, reflow, and responsive access

- Content works in portrait and landscape unless a specific orientation is essential.
- Semantic source order remains meaningful.
- Zoom and reflow do not remove content or operation.
- Sticky and fixed controls reserve space and do not cover content.
- Responsive transformations preserve table, label, and relationship semantics.
- Dialogs, popovers, menus, and custom controls remain operable at zoom and narrow widths.
- Platform text scaling is tested for native and hybrid interfaces where applicable.

## 12. Timing, movement, and flashes

- Time limits are avoided or can be turned off, adjusted, or extended when required.
- Users receive sufficient warning before session expiration where practical.
- Recoverable work is preserved through reauthentication when security permits.
- Moving, blinking, scrolling, or auto-updating content provides pause, stop, or hide behavior when applicable.
- Content does not flash beyond accepted thresholds.
- Autoplay audio is prohibited.
- Paused automatic content does not restart unexpectedly.
- Countdown or urgency indicators are accurate and not manipulative.

## 13. Predictability and consistent help

- Focus alone does not trigger an unexpected context change.
- Input changes do not unexpectedly navigate or submit without advance notice.
- Repeated navigation remains in consistent relative order.
- Same-purpose components use consistent labels and identification.
- Help mechanisms repeated across pages remain in consistent relative order unless the user changes them.
- Permission prompts, identity challenges, and external redirects are preceded by understandable context.

See [`../cognitive-accessibility.md`](../cognitive-accessibility.md) for the broader clarity, memory, interruption, and recovery contract.

## 14. Forms and redundant entry

Forms follow [`../components/component-contracts.md`](../components/component-contracts.md).

Additionally:

- Common personal and authentication fields use appropriate autocomplete tokens.
- Information already provided in the same process is automatically populated or available for selection unless re-entry is essential, required for security, or the prior value is no longer valid.
- Multi-step forms expose progress and preserve context.
- Required review and confirmation are proportionate to impact.
- Browser autofill, password managers, and assistive technology are not disabled without a documented tested reason.
- Custom form-associated elements match native form, label, validation, reset, and submission behavior.

## 15. Accessible authentication

Authentication must not make a cognitive-function test the only path unless an accessible alternative or assistance mechanism satisfies the applicable requirement.

- Password managers are supported.
- Paste is not blocked without a documented security reason.
- One-time codes may be auto-filled or pasted.
- Puzzle solving, memorization, and transcription are not the only available method.
- Account recovery instructions are clear and accessible.
- Session timeout behavior is communicated and recoverable where practical.
- Additional identity verification explains why it is required and provides a recovery path.

## 16. CAPTCHA and human verification

CAPTCHA, risk challenges, and proof-of-humanity mechanisms must not rely on one sensory, motor, language, or cognitive ability as the only path.

Requirements:

- Provide at least one accessible alternative appropriate to the deployed challenge.
- Keep instructions and errors programmatically associated.
- Support keyboard and assistive-technology operation.
- Preserve submitted form data after failure or timeout.
- Provide a retry and recovery path.
- Avoid forcing audio-only alternatives that themselves require difficult transcription.
- Do not block password managers, paste, privacy tools, or assistive technology without a documented tested reason.
- Provide a fallback when a third-party challenge cannot load.
- Review privacy, tracking, and cross-origin behavior under [`../security-and-privacy.md`](../security-and-privacy.md).

A challenge that blocks the only valid path without an accessible alternative prevents conformance.

## 17. Consequential submissions

Legal, financial, data-deleting, test-response, and other consequential submissions must provide at least one of:

- Reversibility.
- Validation with a correction opportunity.
- Review and confirmation before final submission.

The user must understand the object and consequence of a destructive action.

## 18. Composite widgets and dialogs

Custom menus, tabs, accordions, comboboxes, listboxes, trees, grids, and dialogs must implement the complete applicable semantics, relationships, focus, and keyboard behavior.

Ordinary website navigation must not use application-menu roles.

Partial ARIA patterns are prohibited.

Dialog, tooltip, popover, and disclosure roles must match actual modality and behavior.

## 19. Custom elements, shadow DOM, SVG, and canvas

Custom rendering does not reduce accessibility obligations.

- Define the host and internal semantic contract.
- Verify computed names, roles, states, values, and relationships in the accessibility tree.
- Preserve focus order and focus restoration.
- Preserve labels, descriptions, validation, and form participation.
- Ensure slotted content remains in a meaningful reading order.
- Prevent duplicate or conflicting host and internal roles.
- Provide native or light-DOM fallback when support is insufficient.
- Provide an accessible alternative for canvas content or custom-drawn controls.
- Expose meaningful SVG graphics through appropriate text alternatives without duplicate announcements.

Follow the detailed contract in [`../components/component-contracts.md`](../components/component-contracts.md).

## 20. Hidden and inert content

- Hidden content contains no reachable focus targets.
- Closed off-canvas navigation is removed from focus order.
- `aria-hidden="true"` is not applied to focused content or an ancestor containing focus.
- Visually hidden assistive text uses an approved utility.
- Inactive modal background content uses `inert` where appropriate.
- Hidden shadow-DOM internals and native overlay content are not reachable.

## 21. Identifier and relationship integrity

- IDs are unique.
- Labels, descriptions, controls, headings, and panels reference existing elements.
- Repeated fragments do not create duplicate IDs.
- Removed content leaves no broken relationships.
- Server-rendered swaps return complete truthful relationships.
- Relationships crossing custom-element or rendering boundaries are supported and tested.

Avoid `aria-owns` unless DOM structure cannot express the relationship and the resulting reading order is verified.

## 22. Internationalization

Language, direction, locale formatting, and bidirectional behavior follow [`../internationalization.md`](../internationalization.md).

Fragment replacements preserve `lang`, `dir`, translated labels, errors, status messages, captions, and accessible names.

## 23. Native and non-web boundaries

Native shells, embedded web views, custom viewers, and documents follow [`../non-web-accessibility.md`](../non-web-accessibility.md).

Web-content findings and native-platform findings must be recorded separately. Platform conventions and accessibility services remain part of the application scope.

## 24. Testing and evidence

Use:

- [`../compliance/testing-methodology.md`](../compliance/testing-methodology.md)
- [`../compliance/browser-at-matrix.md`](../compliance/browser-at-matrix.md)
- [`../compliance/wcag-2.2-aa-matrix.md`](../compliance/wcag-2.2-aa-matrix.md)
- [`../compliance/act-rule-template.md`](../compliance/act-rule-template.md)

Test applicable interfaces for:

- Keyboard operation.
- Focus order, visibility, restoration, and obscuration.
- Zoom, resize, reflow, and text spacing.
- Screen-reader and accessibility-tree exposure.
- Speech input where supported.
- Touch, target size, gestures, cancellation, and drag alternatives.
- Authentication and CAPTCHA alternatives.
- Custom elements, shadow DOM, SVG, and canvas.
- HTMX replacement.
- Reduced motion and forced colors.
- Language and direction.
- Native web-view or document-reader environments when applicable.

Automated checks supplement but do not replace keyboard, zoom, screen-reader, cognitive, and disabled-user evaluation.

## 25. Claim integrity

Do not claim WCAG conformance while any applicable requirement is failed, blocked, untested, `cantTell`, or manual-pending.

Do not use “partially conformant” for ordinary first-party defects. Follow the claim and partial-statement rules in [`../STANDARDS.md`](../STANDARDS.md).
