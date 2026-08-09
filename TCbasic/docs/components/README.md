# TCBasic Component System

TCBasic components are semantic CSS and HTML contracts demonstrated by the canonical reference CSS under [`../../src/components/`](../../src/components/).

## Documents

- [`catalog.md`](catalog.md) — current documented semantic component/class catalog.
- [`component-contracts.md`](component-contracts.md) — required anatomy, variants, states, and compatibility responsibilities.
- [`variants-and-states.md`](variants-and-states.md) — Tailwind variants, native attributes, and state ownership.
- [`accessibility.md`](accessibility.md) — semantic HTML, focus, keyboard, motion, forced colors, and testing responsibilities.

## Component definition

A TCBasic component has:

- a clear semantic purpose;
- a documented base class;
- optional explicit variants;
- native HTML expectations;
- complete relevant states;
- stable token dependencies;
- responsive behavior;
- accessibility responsibilities;
- a reference/example demonstrating the intended contract where useful.

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

Add a component to the reusable TCBasic reference architecture only when:

- it is reusable across unrelated applications;
- its semantic and accessibility contract is understood;
- its states can be represented without business-specific assumptions;
- existing tokens can represent it or a reusable token extension is justified;
- the reference/example material can demonstrate it without inventing host-application behavior.

Project-specific compositions stay in the adopting project.

## Authority boundary

Reference CSS demonstrates these contracts but does not override them. An example or implementation shortcut must not silently redefine component semantics.
