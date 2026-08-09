# Responsive and Container Contract

Tailwind CSS uses mobile-first viewport variants and includes first-class container queries. TCBasic uses both according to component responsibility.

Official reference: https://tailwindcss.com/docs/responsive-design

## 1. Mobile-first rule

Unprefixed styles define the smallest/default layout. Breakpoint variants enhance at the named minimum width.

```html
<div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3"></div>
```

Do not treat `sm:` as a mobile-only target.

## 2. Default breakpoints

Tailwind's defaults are:

| Variant | Minimum width |
| --- | --- |
| `sm` | 40rem |
| `md` | 48rem |
| `lg` | 64rem |
| `xl` | 80rem |
| `2xl` | 96rem |

TCBasic components should not require every breakpoint. Use the smallest number of meaningful transitions.

## 3. Custom breakpoints

Define custom breakpoints with `--breakpoint-*`:

```css
@theme {
  --breakpoint-xs: 30rem;
  --breakpoint-3xl: 120rem;
}
```

Use the same unit across all custom breakpoint values so generated variants sort predictably. Prefer `rem` to align with Tailwind defaults and user font scaling.

## 4. Breakpoint ranges

Use stacked minimum and maximum variants for a bounded range:

```html
<div class="md:max-xl:grid"></div>
```

A range must represent a real layout interval, not device-brand targeting.

## 5. Container queries

Use container queries when a reusable component should respond to the space provided by its parent rather than the viewport:

```html
<section class="@container">
  <div class="grid grid-cols-1 @md:grid-cols-2"></div>
</section>
```

Container queries improve portability for cards, sidebars, embedded widgets, dashboard panels, and CMS blocks.

## 6. Named containers

Use named containers only when nested containers make the target ambiguous:

```html
<div class="@container/main">
  <div class="@lg/main:grid-cols-2"></div>
</div>
```

Names describe structural responsibility, not page ownership.

## 7. Custom container sizes

Define reusable container-query sizes with `--container-*`:

```css
@theme {
  --container-card-wide: 42rem;
}
```

Do not confuse `--container-*` query sizes with max-width content tokens. Document both when a project uses them.

## 8. Source order and accessibility

Responsive CSS must not create an illogical reading or focus order. Avoid using CSS ordering to repair incorrect markup. Content and controls remain understandable at narrow width, zoom, increased text spacing, portrait and landscape orientation, and large text.

## 9. Hover and pointer behavior

Tailwind v4's `hover` variant applies only when the primary input supports hover. Required actions must remain available to touch, keyboard, and assistive-technology users.

Use pointer/coarse-pointer variants only for ergonomic enhancements, not access control.

## 10. Motion and preference variants

Responsive behavior includes user preferences:

- `motion-reduce` for reduced animation.
- `contrast-more` where stronger visual distinction is useful.
- `forced-colors` for high-contrast environments.
- `print` for printable output.

## 11. Review checklist

- Is the layout mobile-first?
- Is the breakpoint based on content rather than a named device?
- Would a container query make the component more portable?
- Are source and focus order preserved?
- Does required behavior work without hover?
- Are custom breakpoint units consistent?
- Does the component survive zoom and enlarged text?
