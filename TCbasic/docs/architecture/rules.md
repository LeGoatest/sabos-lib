# TCBasic Architecture Rules

> **Status:** Highest-authority TCBasic architecture contract  
> **Reference implementation:** [`../../src/`](../../src/)  
> **Standards registry:** [`../standards.md`](../standards.md)

TCBasic is a Tailwind CSS v4 semantic architecture. Tailwind utilities are the implementation vocabulary; stable semantic CSS classes are the template-facing API.

## 1. Framework boundary

TCBasic is a governed knowledge framework with a canonical reference implementation.

```text
TCbasic/
├── README.md      framework entrypoint
├── AGENTS.md      agent routing
├── CHANGELOG.md   framework history
├── docs/          knowledge, contracts, positions and references
├── src/           canonical reference CSS
└── examples/      illustrative adoption examples
```

SABOS Lib does not build, publish, or distribute TCBasic as an npm package.

## 2. Canonical reference source

- [`../../src/index.css`](../../src/index.css) is the canonical reference import graph.
- Files under `../../src/` demonstrate the architecture described by the contracts.
- Documentation defines the governed architecture and semantic responsibilities.
- Examples demonstrate adoption and must not silently introduce framework requirements.
- There is no canonical compiled `dist/` output in SABOS Lib.

## 3. Required layer order

The reference import graph follows this order:

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
- Adopters customize tokens before copying or forking component CSS.

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

## 7. Tailwind v4 configuration concepts

TCBasic documents CSS-first Tailwind v4 behavior:

- `@import "tailwindcss"` loads Tailwind in an adopter stylesheet.
- `@theme` defines generated design tokens.
- `@source` controls source scanning when automatic detection is insufficient.
- `@utility` registers utilities that should participate in variants.
- `@custom-variant` registers recurring selectors.
- `@config` is legacy/migration-only.

A JavaScript Tailwind configuration file is not part of the normal TCBasic architecture.

## 8. Source detection

Tailwind scans source files as plain text. Therefore:

- Class candidates must appear as complete static strings.
- Dynamic class fragments are prohibited in governed examples/reference patterns.
- Server templates, fragments, and scripts containing Tailwind candidates must be discoverable by the adopter's Tailwind configuration.
- Generated output should not become a source-of-truth input.
- Safelisting should be narrow and justified.

See [`source-detection.md`](source-detection.md).

## 9. Custom CSS and `@apply`

`@apply` is appropriate inside stable semantic classes when it improves maintainability. It is not a substitute for token design or semantic naming.

Rules:

- Prefer official utilities over duplicate handwritten declarations when the utility expresses the intended behavior clearly.
- Use native CSS for pseudo-elements, complex selectors, unsupported platform features, or clearer token-driven expressions.
- Do not apply one custom component class into another as hidden inheritance.
- Keep modifier classes focused on their additional behavior.
- Use `@utility` when a custom primitive should participate in Tailwind variants and ordering.

## 10. Responsive architecture

- Use mobile-first defaults.
- Prefer component behavior based on available space, including container queries where appropriate.
- Preserve logical source order.
- Avoid device- or page-specific reusable class names.
- Use consistent units for custom breakpoints.
- Treat hover as an enhancement, not an operating requirement.

## 11. Tooling boundary

TCBasic may document Tailwind CLI, PostCSS, Vite, standalone tooling, and host-framework adapters because adopters need that knowledge.

Those tools are **adopter implementation options**, not SABOS Lib repository dependencies or build requirements.

See [`tooling.md`](tooling.md).

## 12. Browser policy

TCBasic records the upstream Tailwind CSS v4 browser baseline in [`../standards.md`](../standards.md). Claims about an adopter's actual browser support require adopter-specific evidence.

## 13. Public semantic contract

TCBasic's governed public concepts include:

- documented semantic classes;
- documented raw and Tailwind-facing token names;
- component anatomy and semantic responsibilities;
- supported state and variant meanings;
- source-layer responsibilities;
- documented adoption expectations.

Changing the meaning of a stable contract requires migration analysis and an intentional framework decision. SABOS Lib does not need npm semantic-version machinery to recognize that a contract change can be breaking for adopters.

## 14. Accessibility boundary

TCBasic styles accessible semantics; it does not create semantics by appearance alone. Components must document native element expectations, keyboard-behavior ownership, required attributes, focus behavior, reduced motion, and forced-colors considerations.

See [`../components/accessibility.md`](../components/accessibility.md).

## 15. Exceptions

An exception should record:

```yaml
exception:
  rule: <rule-or-document>
  scope: <files-or-components>
  rationale: <why-required>
  owner: <role-or-person>
  review_by: <ISO-8601-date-or-condition>
  removal_condition: <condition>
  evidence: <evidence>
```

An exception cannot redefine upstream Tailwind behavior or support claims.
