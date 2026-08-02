# Component Framework Integration Contract

This contract applies to React, Vue, Svelte, Astro components, CSS modules, and single-file component styles.

## 1. Public class mapping

Framework props map to complete TCBasic class strings:

```js
const variants = {
  primary: "button button-primary",
  secondary: "button button-secondary",
};
```

Do not interpolate class fragments:

```js
// Prohibited
const className = `button-${variant}`;
```

## 2. Component wrappers

A wrapper may improve type safety and reuse, but it must preserve:

- Correct native elements.
- Required attributes.
- Consumer-provided class merging rules.
- Documented variants.
- Accessible names and content.
- Ref forwarding where focus management requires it.

## 3. Local component styles

When a component stylesheet needs access to TCBasic theme variables or utilities without emitting duplicate CSS, use Tailwind's `@reference` mechanism as supported by the host build:

```css
@reference "tailwindcss-semantic-layer/source";

.component-local-part {
  @apply text-primary;
}
```

The exact path and support depend on the framework and build adapter. Verify generated output.

## 4. CSS modules

Tailwind can coexist with CSS modules, but TCBasic does not recommend creating a second parallel component abstraction layer without a clear reason.

Prefer:

- TCBasic semantic classes for shared components.
- CSS modules for genuinely local, encapsulated behavior.
- Theme variables for shared values.

Avoid re-implementing every TCBasic component inside module-scoped classes.

## 5. Single-file components

For Vue or Svelte component `<style>` blocks:

- Do not use Sass, Less, or Stylus with Tailwind v4.
- Use `@reference` when required for theme or utility context.
- Keep global TCBasic imports in the application stylesheet.
- Verify scoped-style transformations do not break public selectors.

## 6. Runtime class libraries

Class-merging libraries are optional consumer dependencies. They must not generate candidates that Tailwind cannot detect. Variant definitions remain explicit literals in source.

## 7. State ownership

The framework owns state truth and event handling. TCBasic owns documented styling hooks.

Example:

```jsx
<button
  className="button button-primary"
  aria-busy={pending || undefined}
  disabled={pending}
>
  {pending ? "Saving…" : "Save"}
</button>
```

## 8. Server rendering and hydration

Where a framework supports server rendering:

- Initial semantics and content must be correct before hydration.
- Hydration must not change the meaning of component state unexpectedly.
- Class output must remain deterministic.
- Loading fallbacks must be accessible.

## 9. Integration review

- Are all candidate strings static and complete?
- Does the wrapper render the correct native element?
- Are refs and attributes forwarded correctly?
- Does local CSS avoid duplicate global output?
- Does scoped CSS preserve public selectors?
- Is framework state reflected in native/ARIA attributes?
- Does server-rendered output remain usable before hydration?
