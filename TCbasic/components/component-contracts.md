# Component Contract Framework

Each public component must define the following contract before it is considered stable.

## 1. Identity

```yaml
component:
  name: button
  base_class: button
  status: experimental | stable | deprecated
  introduced: <version>
  owner: <role-or-team>
```

The name describes the interface object, not its current color, location, or business use.

## 2. Native element contract

Document the expected element and allowed alternatives.

Example:

```text
button action  -> <button type="button|submit|reset">
navigation     -> <a href="...">
disclosure     -> <details>/<summary> when sufficient
modal          -> <dialog> when supported by the application contract
```

A class does not change a `<div>` into a button, link, table, list, or dialog.

## 3. Anatomy

A component with subparts lists every public part class and whether it is required:

```yaml
anatomy:
  required:
    - card
    - card-body
  optional:
    - card-header
    - card-media
    - card-footer
```

Do not expose internal helper classes as public anatomy without a consumer need.

## 4. Variants

Variants use explicit modifier classes:

```html
<a class="button button-primary button-large" href="/quote">Request quote</a>
```

Each modifier:

- Adds only its responsibility.
- Works with the documented base class.
- Does not silently reset unrelated states.
- Uses semantic token roles.
- Has a defined compatibility policy with other modifiers.

## 5. State contract

Document:

- Default.
- Hover where relevant.
- Focus and focus-visible.
- Active/pressed.
- Disabled or aria-disabled.
- Loading or busy.
- Invalid/error.
- Selected/current/expanded where relevant.
- Empty and success states where relevant.

Native attributes are authoritative. CSS classes may mirror application state for styling but cannot replace required semantics.

## 6. Content contract

Define:

- Whether text is required.
- Whether icons are decorative or named.
- Maximum useful content length where layout depends on it.
- Wrapping and truncation behavior.
- Whether media needs alternative text.
- Whether hidden labels or descriptions are permitted.

Do not solve unknown content by forcing fixed heights or clipping essential text.

## 7. Responsive contract

Define:

- Smallest supported width.
- Viewport or container-query behavior.
- Wrapping and stacking.
- Touch-target behavior.
- Zoom and large-text expectations.
- Logical source order.

## 8. Token dependencies

List public semantic roles consumed by the component:

```yaml
tokens:
  - color-primary
  - color-on-primary
  - radius-component
  - shadow-component
```

A component must not depend on undocumented raw values.

## 9. JavaScript boundary

Document whether JavaScript is:

- Not required.
- Optional enhancement.
- Required for application behavior.

When JavaScript is required, the application owns event handling, focus management, state updates, dismissal, and persistence. TCBasic owns only the documented styling hooks.

## 10. Accessibility contract

Document:

- Native role and accessible name source.
- Keyboard interaction.
- Focus entry, movement, and return.
- Required ARIA attributes, if any.
- Announcement behavior for dynamic status.
- Reduced-motion behavior.
- Forced-colors behavior.
- Screen-reader and keyboard tests required by the consumer.

## 11. Example and fixture

Every stable component needs representative markup under `examples/` or `tests/fixtures/`. Fixtures include important states, not only the ideal default.

## 12. Versioning

A breaking change includes:

- Removing or renaming a public class.
- Changing required markup anatomy.
- Changing a class from navigation to action semantics or vice versa.
- Changing required state attributes.
- Removing token support.
- Making JavaScript required where it was optional.

## 13. Review template

```yaml
review:
  semantic_name: passed | failed
  native_element: passed | failed
  anatomy: passed | failed
  variants: passed | failed
  states: passed | failed
  responsive: passed | failed
  tokens: passed | failed
  accessibility: passed | failed
  example: passed | failed
  tests: passed | failed
  versioning: patch | minor | major
```
