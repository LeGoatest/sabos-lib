# TCBasic: Tailwind CSS Semantic Layer

> **Status:** Active package and governance system  
> **Tailwind baseline:** v4.x  
> **Package root:** `TCbasic/`

TCBasic is a reusable Tailwind CSS v4 architecture for teams that prefer short, meaningful HTML classes while keeping utility composition, tokens, responsive behavior, states, and component styling in CSS.

## 1. Core model

```text
raw semantic variables
        ↓
Tailwind theme variables
        ↓
Tailwind utilities
        ↓
semantic classes and variants
        ↓
readable templates
```

Templates name intent:

```html
<a class="button button-primary" href="/estimate">Request an estimate</a>
```

CSS owns reusable appearance:

```css
@layer components {
  .button-primary {
    @apply bg-primary text-on-primary hover:bg-primary-hover;
  }
}
```

## 2. Authority and reading order

Apply TCBasic documents in this order:

1. [`architecture_rules.md`](architecture_rules.md)
2. This README
3. [`STANDARDS.md`](STANDARDS.md)
4. [`AGENTS.md`](AGENTS.md) for automated changes
5. The nearest applicable local `AGENTS.md`
6. Applicable build, token, component, integration, and compliance contracts
7. Applicable explicit practitioner positions under [`positions/`](positions/README.md)
8. Active adoption profile
9. Package source, examples, and tests
10. Explicit reviewed exceptions

Practitioner positions preserve deliberate TCBasic preferences and rationale. They do not silently override binding architecture, standards, or contracts.

## 3. Package and document map

```text
TCbasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
├── STANDARDS.md
├── architecture_rules.md
├── TAILWIND_PATTERN.md
├── architecture.md
├── naming-conventions.md
├── customization.md
├── migration-guide.md
├── components.md
├── positions/
│   ├── README.md
│   └── AGENTS.md
├── build/
│   ├── README.md
│   ├── AGENTS.md
│   ├── source-detection.md
│   ├── tooling.md
│   └── package-and-release.md
├── tokens/
│   ├── README.md
│   ├── AGENTS.md
│   ├── theme-variables.md
│   ├── semantic-tokens.md
│   └── responsive-and-containers.md
├── components/
│   ├── README.md
│   ├── AGENTS.md
│   ├── component-contracts.md
│   ├── variants-and-states.md
│   └── accessibility.md
├── integrations/
│   ├── README.md
│   ├── AGENTS.md
│   ├── server-rendered.md
│   └── component-frameworks.md
├── compliance/
│   ├── README.md
│   ├── AGENTS.md
│   ├── browser-and-build-matrix.md
│   ├── migration-checklist.md
│   └── release-checklist.md
├── profiles/
│   ├── README.md
│   ├── AGENTS.md
│   ├── semantic-application.md
│   └── legacy-migration.md
├── glossaries/
│   ├── README.md
│   ├── AGENTS.md
│   └── tailwind-css.md
├── src/
│   └── AGENTS.md
├── dist/
│   └── AGENTS.md
├── tests/
│   └── AGENTS.md
├── examples/
│   └── AGENTS.md
├── package.json
└── postcss.config.mjs
```

Local `AGENTS.md` files mark real authority or evidence boundaries. In particular, `src/` is canonical source, `dist/` is generated output, and `tests/` is regression evidence; these roles must not be collapsed merely because they are all part of the same package.

## 4. Goals

- Keep repeated utility-heavy styling out of templates.
- Expose stable semantic classes such as `.button`, `.card`, and `.form-input`.
- Separate raw consumer tokens from Tailwind-facing theme variables.
- Preserve Tailwind responsive, state, data, ARIA, and preference variants.
- Remain framework-independent at the package core.
- Support server-rendered HTML, Laravel Blade, HTMX, and component frameworks through explicit integration contracts.
- Keep build, browser, package, and release claims evidence-based.

## 5. Installation

```bash
npm install tailwindcss-semantic-layer tailwindcss @tailwindcss/cli
```

Use the source package when Tailwind should process and customize the layer:

```css
@import "tailwindcss-semantic-layer/source";
```

Use the prebuilt distribution when no Tailwind compilation is required:

```css
@import "tailwindcss-semantic-layer/dist";
```

## 6. Build adapters

Core supported adapters:

- Tailwind CLI.
- PostCSS with `@tailwindcss/postcss`.

Optional adapters:

- Vite with `@tailwindcss/vite` in the consuming project.
- Official standalone CLI.

TCBasic does not require Vite and does not support Sass, Less, or Stylus as part of the Tailwind v4 pipeline.

See [`build/tooling.md`](build/tooling.md).

## 7. Source detection

Tailwind scans files as plain text. Every required class candidate must appear as a complete static string.

Allowed:

```js
const variants = {
  primary: "button button-primary",
  secondary: "button button-secondary",
};
```

Prohibited:

```js
const className = `bg-${color}-500`;
```

See [`build/source-detection.md`](build/source-detection.md).

## 8. Source architecture

```text
src/
├── foundation/  tokens, theme mapping, reset, typography, accessibility
├── elements/    semantic element treatments
├── layout/      reusable spatial primitives
├── components/  interface objects and variants
├── patterns/    larger component compositions
├── states/      loading, empty, error, success, disabled
└── utilities/   intentionally limited escape hatches
```

`src/index.css` is the canonical import graph. `dist/` is generated output and is never the editing source.

## 9. Token architecture

Raw values use `--semantic-*` variables. Tailwind mappings use official theme namespaces.

```css
:root {
  --semantic-color-primary: oklch(0.45 0.17 255);
  --semantic-radius-card: 1rem;
}

@theme inline {
  --color-primary: var(--semantic-color-primary);
  --radius-card: var(--semantic-radius-card);
}
```

See [`tokens/README.md`](tokens/README.md).

## 10. Class model

| Category | Prefix or form | Examples |
| --- | --- | --- |
| Layout primitive | `layout-` | `.layout-container`, `.layout-stack` |
| Element treatment | `element-` | `.element-link`, `.element-heading` |
| Reusable component | semantic noun | `.button`, `.card`, `.form-input` |
| Component variant | noun + modifier | `.button-primary`, `.card-interactive` |
| Composition pattern | `pattern-` | `.pattern-hero`, `.pattern-feature-grid` |
| State | `is-` / `has-` | `.is-loading`, `.is-disabled`, `.has-error` |
| Limited utility | `util-` or `@utility` | `.util-content-narrow`, `.util-text-balance` |

See [`naming-conventions.md`](naming-conventions.md) and [`components/README.md`](components/README.md).

## 11. Accessibility boundary

TCBasic provides styling hooks for visible focus, states, responsive behavior, reduced motion, and forced colors. The consuming application remains responsible for correct native HTML, state truth, keyboard interaction, focus management, announcements, validation, and end-to-end testing.

See [`components/accessibility.md`](components/accessibility.md).

## 12. Browser baseline

TCBasic inherits the Tailwind CSS v4 baseline:

- Chrome 111+
- Safari 16.4+
- Firefox 128+

See [`STANDARDS.md`](STANDARDS.md) and [`compliance/browser-and-build-matrix.md`](compliance/browser-and-build-matrix.md).

## 13. Adoption profiles

- [`profiles/semantic-application.md`](profiles/semantic-application.md) — default for new applications.
- [`profiles/legacy-migration.md`](profiles/legacy-migration.md) — temporary controlled migration profile.

## 14. Examples

- [`examples/basic-html/`](examples/basic-html/)
- [`examples/laravel-blade/`](examples/laravel-blade/)
- [`examples/htmx/`](examples/htmx/)

## 15. Development

Run from `TCbasic/`:

```bash
npm install
npm test
npm run build
npm run build:example
npm pack --dry-run
```

The test suite verifies imports, exports, naming boundaries, generated CSS, required governance documents, and relative Markdown links.

## 16. Releases

A semantic version tag such as `v0.2.0` must match `package.json`. The release workflow tests the package, rebuilds `dist/`, verifies the package subtree, and attaches readable CSS, minified CSS, and the TCBasic source archive.

See [`build/package-and-release.md`](build/package-and-release.md) and [`compliance/release-checklist.md`](compliance/release-checklist.md).

## 17. Relationship to WDBASIC

[`../Wdbasic/`](../Wdbasic/) is a separate framework-independent standards and implementation-contract system. TCBasic supplies a Tailwind-specific styling architecture; using TCBasic alone does not establish WDBASIC, WCAG, security, privacy, or application conformance.

## 18. License

GPL-3.0-only. See [`LICENSE`](LICENSE).