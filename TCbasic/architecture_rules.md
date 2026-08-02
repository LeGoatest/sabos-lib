# TCBasic Architecture Rules

> **Status:** Highest-authority TCBasic contract

TCBasic is a Tailwind CSS v4 semantic layer. Tailwind utilities are the implementation vocabulary; stable semantic CSS classes are the template-facing API.

## 1. Package boundary

`TCbasic/` is a self-contained npm package root.

```text
TCbasic/
├── src/          canonical CSS source
├── dist/         generated browser CSS
├── tests/        structural and package tests
├── examples/     integration examples
├── build/        build and source-detection contracts
├── tokens/       token contracts
├── components/   component API contracts
├── integrations/ adapter contracts
├── compliance/   validation and release evidence
├── profiles/     adoption profiles
└── glossaries/   non-normative terminology
```

Package-relative commands, exports, examples, and documentation must work from this directory.

## 2. Canonical source

- `src/index.css` is the canonical import graph.
- Files under `src/` are the canonical implementation.
- Files under `dist/` are generated outputs.
- Documentation defines public contracts but does not replace executable tests.
- Examples demonstrate supported integration and must not silently introduce package requirements.

## 3. Required layer order

The source import graph follows this order:

1. Tailwind import.
2. Foundation.
3. Elements.
4. Layout.
5. Components.
6. Patterns.
7. States.
8. Limited utilities.

A lower layer must not depend on a higher layer. Components may consume foundation and layout concepts; foundation must not depend on components.

## 4. Token flow

```text
raw semantic variables
        ↓
Tailwind theme namespace mappings
        ↓
Tailwind utilities
        ↓
semantic classes and variants
        ↓
template markup
```

Rules:

- Raw project-neutral values use the `--semantic-*` namespace.
- Tailwind-facing variables use official theme namespaces such as `--color-*`, `--font-*`, `--spacing-*`, `--breakpoint-*`, `--container-*`, `--radius-*`, and `--shadow-*`.
- Components consume semantic roles rather than raw brand values.
- A consumer customizes tokens before copying or forking component CSS.

## 5. Template-facing API

Templates use short classes that name intent:

```html
<button class="button button-primary">Save changes</button>
```

Repeated visual utility piles do not belong in templates. One-off responsive or layout utilities may remain in markup when they are local, readable, and not a recurring contract.

## 6. Class categories

| Category | Form | Responsibility |
| --- | --- | --- |
| Layout | `layout-*` | Reusable spatial relationships. |
| Elements | `element-*` | Semantic HTML treatment. |
| Components | semantic noun | Reusable interface objects. |
| Variants | noun + modifier | Explicit component variation. |
| Patterns | `pattern-*` | Multi-component composition. |
| States | `is-*` / `has-*` | Supplemental current condition. |
| Utilities | `util-*` or `@utility` | Narrow, intentional escape hatch. |

Native attributes such as `disabled`, `open`, `aria-current`, `aria-invalid`, and `aria-busy` remain authoritative. State classes supplement rather than replace semantics.

## 7. Tailwind v4 configuration

TCBasic uses CSS-first configuration:

- `@import "tailwindcss"` loads Tailwind.
- `@theme` defines generated design tokens.
- `@source` controls source scanning when automatic detection is insufficient.
- `@utility` registers utilities that should participate in variants.
- `@custom-variant` registers recurring selectors.
- `@config` is allowed only for a documented legacy migration.

A JavaScript configuration file is not part of the normal architecture.

## 8. Source detection

Tailwind scans source files as plain text. Therefore:

- Class candidates must appear as complete static strings.
- Dynamic fragments are prohibited.
- Server templates, fragments, and JavaScript files containing classes must be discoverable or declared with `@source`.
- Generated output directories must be excluded when they cause watch loops or duplicate candidates.
- Safelisting uses `@source inline()` only when a class cannot be represented in a real fixture or template.

See [`build/source-detection.md`](build/source-detection.md).

## 9. Custom CSS and `@apply`

`@apply` is appropriate inside stable semantic classes when it improves maintainability. It is not a substitute for token design or semantic naming.

Rules:

- Prefer official utilities over duplicate handwritten declarations.
- Use native CSS for pseudo-elements, complex selectors, unsupported platform features, or clearer token-driven expressions.
- Do not apply one custom component class into another as hidden inheritance.
- Keep modifier classes focused on their additional behavior.
- Use `@utility` when a custom primitive should support Tailwind variants and ordering.

## 10. Responsive architecture

- Use mobile-first defaults.
- Prefer component behavior based on available space, including container queries where appropriate.
- Preserve logical source order.
- Avoid viewport-specific business names.
- Use consistent units for custom breakpoints.
- Treat hover as an enhancement, not an operating requirement.

## 11. Build adapters

Core supported adapters:

- Tailwind CLI.
- PostCSS through `@tailwindcss/postcss`.

Optional documented adapters:

- Vite through `@tailwindcss/vite`.
- Framework-specific build systems.

No optional adapter becomes a runtime or package dependency merely because it is documented.

## 12. Browser policy

TCBasic inherits the Tailwind CSS v4 modern-browser baseline recorded in [`STANDARDS.md`](STANDARDS.md). Features beyond the baseline require consumer-specific review and tests.

## 13. Public API and versioning

Public API includes:

- Exported package paths.
- Documented semantic classes.
- Documented raw and Tailwind-facing token names.
- Supported state and variant contracts.
- Build adapter expectations.

Removing or changing the meaning of a public API requires a breaking release. Additive classes and tokens normally require a minor release. Fixes that preserve the contract normally require a patch release.

## 14. Generated distributions

`dist/semantic-layer.css` and `dist/semantic-layer.min.css` must:

- Be generated from the same source revision.
- Contain no unresolved `@apply` directives.
- Include required public selectors.
- Be rebuilt before release.
- Never become the source for subsequent edits.

## 15. Accessibility boundary

TCBasic styles accessible semantics; it does not create semantics by appearance alone. Components must document native element expectations, keyboard behavior ownership, required attributes, focus behavior, reduced motion, and forced-colors considerations.

See [`components/accessibility.md`](components/accessibility.md).

## 16. Exceptions

An exception must record:

```yaml
exception:
  rule: <rule-or-document>
  scope: <files-or-components>
  rationale: <why-required>
  owner: <role-or-person>
  review_by: <ISO-8601-date>
  removal_condition: <condition>
  tests: <evidence>
```

An exception cannot redefine upstream Tailwind behavior or claim unsupported compatibility.
