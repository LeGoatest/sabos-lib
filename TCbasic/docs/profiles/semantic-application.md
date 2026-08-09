# Semantic Application Profile

> **Status:** Default TCBasic adoption profile

This profile is for new applications and major redesigns that use semantic classes as the primary template-facing styling API.

## 1. Required structure

The adopting project has one canonical stylesheet architecture that:

1. applies or adapts relevant TCBasic reference concepts;
2. declares consumer source paths where necessary;
3. owns project-specific raw semantic tokens;
4. adds project-specific components and patterns in documented layers.

Example project-owned CSS:

```css
@import "tailwindcss";
@source "../views";

:root {
  --semantic-color-primary: oklch(0.48 0.16 255);
}
```

The exact project path/import structure belongs to the adopter. SABOS Lib does not publish an installable TCBasic source package.

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

One-off responsive or placement utilities are permitted when they remain local and readable. Repeated utility groups should be promoted into stable semantic ownership.

## 3. Project extension

Project classes:

- use a project namespace when business-specific;
- consume TCBasic-style semantic roles or documented project tokens;
- remain owned by the consumer project rather than being written back into SABOS Lib unless broadly reusable;
- do not duplicate whole reusable components merely to change brand values when token customization can represent the change.

## 4. Consumer tooling

The adopting project selects its own Tailwind CSS v4 tooling. CLI, PostCSS, Vite, standalone, or framework-owned pipelines are consumer decisions.

See [`../architecture/tooling.md`](../architecture/tooling.md).

## 5. Required review

- Static class candidates.
- Explicit source paths where needed.
- Token contrast/state review.
- Component semantics/state review.
- Progressive/no-JavaScript baseline where required by the application architecture.
- Consumer production build/output inspection when the adopter has a build pipeline.

## 6. Completion criteria

The profile is adopted when:

- repeated utility piles have semantic ownership;
- public/project tokens are centralized appropriately;
- templates use stable component and pattern responsibilities;
- the consumer's build/source-detection choices are documented;
- accessibility responsibilities are assigned;
- exceptions are explicit and reviewable.
