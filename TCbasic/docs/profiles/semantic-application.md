# Semantic Application Profile

> **Status:** Default TCBasic adoption profile

This profile is for new applications and major redesigns that use semantic classes as the primary template-facing styling API.

## 1. Required structure

The consumer has one canonical stylesheet that:

1. Imports TCBasic source.
2. Declares consumer source paths where necessary.
3. Overrides raw semantic tokens.
4. Adds project-specific components and patterns in documented layers.

```css
@import "tailwindcss-semantic-layer/source";
@source "../views";

:root {
  --semantic-color-primary: oklch(0.48 0.16 255);
}
```

## 2. Markup policy

Markup uses semantic classes for recurring presentation:

```html
<section class="pattern-hero">
  <div class="layout-container layout-stack">
    <h1 class="element-heading">Restore your property</h1>
    <a class="button button-primary" href="/estimate">Request an estimate</a>
  </div>
</section>
```

One-off responsive or placement utilities are permitted when they remain local and readable. Repeated utility groups must be promoted.

## 3. Project extension

Project classes:

- Use a project namespace when business-specific.
- Consume TCBasic tokens or documented project tokens.
- Do not modify package source in `node_modules`.
- Do not copy components merely to change colors or radius.
- Stay out of TCBasic upstream unless they are broadly reusable.

## 4. Build

Preferred adapter order:

1. CLI for simple static or server-rendered projects.
2. PostCSS when the framework already owns that pipeline.
3. Vite only when the project already uses Vite.

## 5. Required checks

- Static class candidates.
- Explicit source paths where needed.
- Token contrast review.
- Component state review.
- No-JavaScript baseline for primary content.
- Production build and output inspection.

## 6. Completion criteria

The profile is adopted when:

- Repeated utility piles have semantic ownership.
- Public tokens are centralized.
- Templates use stable component and pattern contracts.
- Build and source detection are documented.
- Accessibility responsibilities are assigned.
- Exceptions are explicit and temporary.
