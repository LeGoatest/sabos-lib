# Component Accessibility Contract

TCBasic provides styling contracts. Accessible behavior still depends on correct HTML, application state, and interaction logic.

## 1. Native semantics

Use native elements whenever they match the behavior:

- `<button>` for actions.
- `<a href>` for navigation.
- `<input>`, `<select>`, and `<textarea>` for form fields.
- `<details>/<summary>` for simple disclosure.
- `<dialog>` for modal behavior where the application supports it.
- Real lists, headings, tables, and landmarks.

A semantic class never repairs an incorrect element.

## 2. Accessible name and description

Every interactive component has an accessible name. Visible text is preferred. Icon-only controls require an explicit label.

Help and error text must be connected with appropriate relationships such as `aria-describedby`. Validation failure uses `aria-invalid="true"` only after failure is known.

## 3. Focus

Components must preserve:

- Visible keyboard focus.
- Logical focus order.
- Focus that is not obscured by sticky or fixed content.
- Focus return after temporary overlays or dialogs.
- Focus movement only when required by the interaction contract.

Do not use `outline-none` without a visible replacement. In Tailwind v4, `outline-hidden` preserves forced-colors visibility semantics where an invisible outline pattern is intended.

## 4. Keyboard behavior

Native elements provide their native keyboard operation. Custom widgets require the complete applicable interaction pattern; CSS alone does not implement it.

TCBasic documentation must state when the consuming application owns:

- Arrow-key navigation.
- Escape dismissal.
- Home/End behavior.
- Focus trapping.
- Roving tabindex.
- Typeahead.

## 5. Target size and pointer input

Controls must remain usable with touch, mouse, stylus, keyboard, speech input, and assistive technology. Avoid interactions that require precise dragging or hover without an alternative.

## 6. Color and contrast

Semantic token changes must preserve contrast for:

- Text.
- Controls and boundaries.
- Focus indicators.
- Validation states.
- Selected/current states.
- Disabled content where information must remain perceivable.

Color cannot be the only indicator of error, selection, or status.

## 7. Motion

Animations and transitions must respect reduced-motion preferences. Essential state changes remain understandable without motion.

Avoid:

- Continuous decorative animation.
- Large unexpected movement.
- Motion required to discover content.
- Loading indicators with no textual or semantic status.

## 8. Forced colors

Review components under forced-colors/high-contrast modes. Do not rely solely on background images, subtle shadows, or transparent borders for focus and boundaries.

Use system colors or allow the browser to preserve native control affordances where appropriate.

## 9. Responsive and zoom behavior

Components remain operable at narrow width, browser zoom, enlarged text, and increased text spacing. Do not clip required labels, errors, or actions.

## 10. Dynamic status

A visual state class does not announce a status. The application supplies appropriate live-region or status semantics when content is inserted dynamically and needs announcement.

Avoid adding `role="alert"` to every static error. Use it only when immediate announcement is appropriate.

## 11. No-JavaScript boundary

Primary content and navigation remain available without JavaScript. Enhanced interactions document their baseline behavior and server-rendered fallback where applicable.

## 12. Required component evidence

For a stable component, record:

- Semantic element review.
- Keyboard review.
- Visible focus review.
- Screen-reader name/role/state review.
- Reduced-motion review.
- Forced-colors review.
- Narrow-width and zoom review.
- Error and disabled-state review where applicable.

## 13. Responsibility boundary

```yaml
accessibility:
  tcbasic_owns:
    - visual focus styles
    - tokenized contrast roles
    - responsive styling hooks
    - reduced-motion styling hooks
  application_owns:
    - semantic markup
    - state truth
    - keyboard interaction logic
    - focus management
    - announcements
    - validation and errors
    - end-to-end testing
```
