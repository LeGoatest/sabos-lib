# Source Detection Contract

Tailwind CSS scans project files as plain text and generates utilities for complete class-like tokens it can detect. TCBasic integrations must make every required candidate statically discoverable.

Official reference: https://tailwindcss.com/docs/detecting-classes-in-source-files

## 1. Static-candidate rule

Use complete class names:

```js
const variants = {
  primary: "button button-primary",
  secondary: "button button-secondary",
};
```

Do not construct fragments:

```js
const className = `bg-${color}-500`;
```

The scanner does not execute templates or evaluate interpolation.

## 2. Automatic detection

Tailwind v4 automatically scans common project files while ignoring paths such as binary files, CSS files, lock files, and ignored dependency/build directories. Automatic detection is the default, not proof that every custom path is covered.

Review detection when a project uses:

- Nonstandard template directories.
- Vendor or package templates.
- Server-generated fragments outside the normal source tree.
- Monorepo packages.
- Files excluded through `.gitignore`.
- Generated templates consumed at runtime.

## 3. Explicit sources

Use `@source` for real source locations that automatic detection cannot discover reliably:

```css
@import "tailwindcss";
@source "../../resources/views";
@source "../../app/View/Components";
@source "../../public/fragments";
```

Paths are resolved relative to the stylesheet unless the import form establishes another base.

## 4. Exclusions

Exclude generated or irrelevant paths when they create watch loops, duplicate scanning, or false candidates:

```css
@source not "../../public/build";
@source not "../../storage";
```

Do not exclude a path that contains the only representation of a required class.

## 5. Safelisting

Prefer real fixtures and templates over safelists. When generated content cannot expose a class statically, use `@source inline()` with the narrowest candidate set:

```css
@source inline("grid-cols-1 grid-cols-2 grid-cols-3");
```

Do not safelist entire color or spacing systems without a documented requirement. Large safelists weaken output-size controls and can hide an unresolved content-model problem.

## 6. Package consumers

A consumer that imports TCBasic source receives the semantic classes defined by TCBasic. Consumer-specific Tailwind utilities still depend on the consumer's source detection.

When a package contains template files that use utilities, the consuming stylesheet may need an explicit `@source` path to that package.

## 7. Server-rendered templates

Laravel Blade, PHP, Twig, and similar templates must contain complete candidates. Conditional selection is safe when each option is a complete literal:

```php
$class = $active
    ? 'navigation-link navigation-link-active'
    : 'navigation-link';
```

Returning an HTMX fragment does not change scanning requirements. The fragment file or an equivalent fixture must expose its class candidates.

## 8. JavaScript boundary

JavaScript may add, remove, or toggle complete semantic classes:

```js
panel.classList.toggle("is-open", expanded);
```

JavaScript must not own visual utility composition or generate Tailwind class fragments.

## 9. Validation checklist

- Every dynamic choice maps to complete literal classes.
- All template and fragment directories are detected.
- Generated output directories are excluded when necessary.
- Safelists are narrow and documented.
- Example builds include expected semantic selectors.
- Watch mode does not rebuild recursively because output is scanned as input.

## 10. Evidence record

```yaml
source_detection:
  stylesheet: <path>
  automatic_root: <path>
  explicit_sources: []
  excluded_sources: []
  inline_candidates: []
  dynamic_class_review: passed | failed | pending
  example_build: <command-and-result>
```
