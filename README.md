# Tailwind CSS Semantic Layer

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

Create an input stylesheet:

```css
@import "tailwindcss-semantic-layer";
```

Build it with the Tailwind CLI:

```bash
npx @tailwindcss/cli -i ./input.css -o ./public/app.css --watch
```

## Usage

```html
<a class="button button-primary" href="/estimate">
  Request an estimate
</a>

<article class="card card-interactive">
  <div class="card-body layout-stack">
    <span class="badge badge-info">Featured</span>
    <h2 class="card-title">Semantic components</h2>
    <p class="card-description">
      Templates stay readable while Tailwind remains the implementation layer.
    </p>
  </div>
</article>
```

## Customization

Override raw semantic variables after importing the package:

```css
@import "tailwindcss-semantic-layer";

:root {
  --semantic-color-primary: oklch(45% 0.17 255);
  --semantic-color-primary-hover: oklch(38% 0.16 255);
  --semantic-color-accent: oklch(78% 0.16 75);
  --semantic-radius-card: 1rem;
}
```

The `@theme inline` mappings expose those variables as Tailwind utilities such as `bg-primary`, `text-muted`, `rounded-card`, and `shadow-component`.

## Class model

| Category | Prefix or form | Examples |
| --- | --- | --- |
| Layout primitive | `layout-` | `.layout-container`, `.layout-stack` |
| Reusable component | semantic noun | `.button`, `.card`, `.form-input` |
| Component variant | noun + modifier | `.button-primary`, `.card-interactive` |
| Composition pattern | `pattern-` | `.pattern-hero`, `.pattern-proof-strip` |
| State | `is-` / `has-` | `.is-loading`, `.is-disabled`, `.has-error` |
| Limited utility | `util-` | `.util-content-narrow`, `.util-text-balance` |

See [`docs/architecture.md`](docs/architecture.md) and [`docs/naming-conventions.md`](docs/naming-conventions.md).

## Development

```bash
npm install
npm run build
npm run build:example
```

The generated files are written to `dist/` and `examples/basic-html/output.css`.

## License

GPL-3.0-only. See [`LICENSE`](LICENSE).
