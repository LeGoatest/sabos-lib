# Component Framework Integration Contract

This contract applies to React, Vue, Svelte, Astro components, CSS modules, and single-file component styles that adopt TCBasic concepts.

## 1. Public class mapping

Framework props map to complete TCBasic class strings:

```js
const variants = {
  primary: "button button-primary",
  secondary: "button button-secondary",
};
```

Do not interpolate Tailwind/semantic class fragments:

```js
// Prohibited
const className = `button-${variant}`;
```

## 2. Component wrappers

A wrapper may improve type safety and reuse, but it must preserve:

- correct native elements;
- required attributes;
- documented variants;
- accessible names and content;
- ref forwarding where focus management requires it;
- deterministic class output.

## 3. Local component styles

When a framework component stylesheet needs access to Tailwind utilities or theme context, use the mechanism supported by that project's Tailwind/tooling setup. For Tailwind CSS v4 this may include `@reference` where appropriate.

The actual import/reference path belongs to the adopter project. SABOS Lib does not publish a `tailwindcss-semantic-layer/source` package path.

## 4. CSS modules

Tailwind can coexist with CSS modules, but TCBasic does not recommend creating a second parallel shared-component abstraction layer without a clear reason.

Prefer:

- TCBasic semantic responsibilities for shared components;
- CSS modules for genuinely local, encapsulated behavior;
- theme variables for shared values.

Avoid re-implementing every shared semantic component inside module-scoped classes merely because the framework supports modules.

## 5. Single-file components

For Vue or Svelte component `<style>` blocks:

- use Tailwind-v4-compatible CSS/tooling in the adopting project;
- use the host's supported reference/theme mechanism when needed;
- keep global shared semantic architecture in the project-level stylesheet unless there is a deliberate component-local design;
- verify scoped-style transforms do not invalidate documented selectors.

## 6. Runtime class libraries

Class-merging libraries are optional consumer dependencies. They must not generate candidates that Tailwind cannot detect. Variant definitions remain explicit literals in source.

## 7. State ownership

The framework owns state truth and event handling. TCBasic owns documented styling/semantic responsibilities.

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

- initial semantics and content should be correct before hydration;
- hydration must not change the meaning of component state unexpectedly;
- class output should remain deterministic;
- loading fallbacks must remain understandable and accessible.

## 9. Integration review

- Are candidate strings static and complete?
- Does the wrapper render the correct native element?
- Are refs and attributes forwarded correctly?
- Does local CSS avoid unnecessary duplication of shared architecture?
- Does scoped CSS preserve intended selectors?
- Is framework state reflected in native/ARIA attributes where appropriate?
- Does server-rendered output remain usable before hydration when required by the host architecture?

Reference CSS under [`../../src/`](../../src/) demonstrates TCBasic concepts; the adopter owns its actual framework and build validation.
