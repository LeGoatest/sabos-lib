# TCBasic: Tailwind CSS Semantic Layer

A reusable Tailwind CSS v4 architecture for teams that prefer short, meaningful HTML classes while keeping Tailwind utilities organized in CSS with `@theme`, `@layer`, and `@apply`.

## Goals

- Keep utility-heavy styling out of templates.
- Expose stable semantic classes such as `.button`, `.card`, and `.form-input`.
- Separate raw design tokens from semantic theme roles.
- Preserve Tailwind's responsive, state, and accessibility utilities.
- Remain framework-independent and compatible with server-rendered HTML, Laravel Blade, and HTMX.

## Installation

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

Build a project stylesheet with the Tailwind CLI:

```bash
npx @tailwindcss/cli -i ./input.css -o ./public/app.css --watch
```

## Usage

```html
<a class="button button-primary" href="/estimate">Request an estimate</a>

<article class="card card-interactive">
  <div class="card-body layout-stack">
    <span class="badge badge-info">Featured</span>
    <h2 class="card-title">Semantic components</h2>
    <p class="card-description">Templates stay readable while Tailwind remains the implementation layer.</p>
  </div>
</article>
```

## Architecture

```text
../src/
├── foundation/  tokens, theme mapping, reset, typography, accessibility
├── elements/    semantic element treatments
├── layout/      reusable spatial primitives
├── components/  interface objects and variants
├── patterns/    larger component compositions
├── states/      loading, empty, error, success, disabled
└── utilities/   intentionally limited escape hatches
```

The import graph is defined in [`../src/index.css`](../src/index.css). Raw values live in [`../src/foundation/tokens.css`](../src/foundation/tokens.css); [`../src/foundation/theme.css`](../src/foundation/theme.css) maps those values into Tailwind theme namespaces.

## Customization

```css
@import "tailwindcss-semantic-layer/source";

:root {
  --semantic-color-primary: oklch(45% 0.17 255);
  --semantic-color-primary-hover: oklch(38% 0.16 255);
  --semantic-color-accent: oklch(78% 0.16 75);
  --semantic-radius-card: 1rem;
}
```

See [`customization.md`](customization.md).

## Class model

| Category | Prefix or form | Examples |
| --- | --- | --- |
| Layout primitive | `layout-` | `.layout-container`, `.layout-stack` |
| Element treatment | `element-` | `.element-link`, `.element-heading` |
| Reusable component | semantic noun | `.button`, `.card`, `.form-input` |
| Component variant | noun + modifier | `.button-primary`, `.card-interactive` |
| Composition pattern | `pattern-` | `.pattern-hero`, `.pattern-feature-grid` |
| State | `is-` / `has-` | `.is-loading`, `.is-disabled`, `.has-error` |
| Limited utility | `util-` | `.util-content-narrow`, `.util-text-balance` |

## Examples

- [`../examples/basic-html/`](../examples/basic-html/)
- [`../examples/laravel-blade/`](../examples/laravel-blade/)
- [`../examples/htmx/`](../examples/htmx/)

## Documentation

- [`TAILWIND_PATTERN.md`](TAILWIND_PATTERN.md)
- [`architecture.md`](architecture.md)
- [`naming-conventions.md`](naming-conventions.md)
- [`customization.md`](customization.md)
- [`migration-guide.md`](migration-guide.md)
- [`components.md`](components.md)
- [`CHANGELOG.md`](CHANGELOG.md)
- [`CONTRIBUTING.md`](CONTRIBUTING.md)

WDBASIC remains a separate standards and implementation-contract layer under [`../Wdbasic/`](../Wdbasic/); the core package does not require WDBASIC-specific class names.

## Development

Run these commands from the repository root:

```bash
npm install
npm test
npm run build
npm run build:example
```

`npm run build` writes the readable and minified distributions under [`../dist/`](../dist/). The test suite verifies imports, package exports, naming boundaries, and committed browser CSS.

## Releases

A semantic version tag such as `v0.1.0` triggers the release workflow. The tag must match [`../package.json`](../package.json). The workflow tests the package, rebuilds `dist/`, and attaches the source archive and both CSS distributions to the GitHub release.

## License

GPL-3.0-only. See [`../LICENSE`](../LICENSE).
