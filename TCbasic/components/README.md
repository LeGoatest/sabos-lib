# TCBasic Component System

TCBasic components are stable semantic CSS and HTML contracts implemented with Tailwind CSS v4 utilities and modern CSS.

## Documents

- [`component-contracts.md`](component-contracts.md) — required anatomy, variants, states, and versioning.
- [`variants-and-states.md`](variants-and-states.md) — Tailwind variants, native attributes, and state ownership.
- [`accessibility.md`](accessibility.md) — semantic HTML, focus, keyboard, motion, forced colors, and testing responsibilities.
- [`../components.md`](../components.md) — current public class catalog.

## Component definition

A TCBasic component has:

- A clear semantic purpose.
- A documented base class.
- Optional explicit variants.
- Required native HTML expectations.
- Complete states.
- Stable token dependencies.
- Responsive behavior.
- Accessibility responsibilities.
- Tests or fixtures demonstrating the public contract.

## Composition order

```text
foundation tokens
      ↓
layout primitives
      ↓
component base
      ↓
component variants
      ↓
state and attribute selectors
      ↓
patterns and page composition
```

## Class model

```html
<button class="button button-primary button-large">
  Save changes
</button>
```

The base class establishes shared structure. Variant classes add only their responsibility. State is represented by native attributes first and supplemental classes only when needed.

## Admission criteria

Add a component to the package only when:

- It is reusable across unrelated applications.
- Its semantic and accessibility contract is understood.
- Its states can be represented without business-specific assumptions.
- Tokens already exist or a reusable token extension is justified.
- An example and test can demonstrate it.

Project-specific compositions stay in the consuming project.
