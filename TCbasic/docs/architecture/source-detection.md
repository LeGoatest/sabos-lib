# Source Detection Contract

Tailwind CSS scans project files as plain text and generates utilities for complete class-like tokens it can detect. TCBasic integrations must make every required candidate statically discoverable.

Official reference: https://tailwindcss.com/docs/detecting-classes-in-source-files

This contract governs **adopter implementations and TCBasic examples/reference patterns**. SABOS Lib itself does not run a Tailwind build.

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

Review detection when an adopter uses:

- nonstandard template directories;
- vendor or package templates;
- server-generated fragments outside the normal source tree;
- monorepo packages;
- files excluded through `.gitignore`;
- generated templates consumed at runtime.

## 3. Explicit sources

Use `@source` for real source locations that automatic detection cannot discover reliably:

```css
@import "tailwindcss";
@source "../../resources/views";
@source "../../app/View/Components";
@source "../../public/fragments";
```

Paths are resolved according to the adopter's stylesheet/tooling context.

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

Do not safelist entire color or spacing systems without a documented requirement.

## 6. Reference and adopter code

TCBasic reference CSS defines its semantic classes directly. Consumer-specific Tailwind utilities still depend on the consumer's source detection.

When an adopter integrates templates from another location, the adopter may need explicit source declarations for those files.

## 7. Server-rendered templates

Laravel Blade, PHP, Twig, and similar templates should contain complete candidates. Conditional selection is safe when each option is a complete literal:

```php
$class = $active
    ? 'navigation-link navigation-link-active'
    : 'navigation-link';
```

Returning an HTMX fragment does not change scanning requirements.

## 8. JavaScript boundary

JavaScript may add, remove, or toggle complete semantic classes:

```js
panel.classList.toggle("is-open", expanded);
```

JavaScript must not own visual utility composition or generate Tailwind class fragments.

## 9. Review checklist

- Every dynamic choice maps to complete literal classes.
- All template and fragment directories are detectable in the adopter environment.
- Generated output directories are excluded when necessary.
- Safelists are narrow and documented.
- Required semantic selectors are represented by the reference/adopter source.
- Watch/build configuration does not recursively consume its own output.

## 10. Evidence record

```yaml
source_detection:
  stylesheet: <path>
  automatic_root: <path>
  explicit_sources: []
  excluded_sources: []
  inline_candidates: []
  dynamic_class_review: passed | failed | pending
  evidence: <path-or-note>
```
