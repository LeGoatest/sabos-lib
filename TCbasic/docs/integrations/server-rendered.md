# Server-Rendered Integration Contract

This contract applies to plain HTML, PHP, Laravel Blade, Twig, HTMX fragments, and similar server-rendered systems.

## 1. Installation

Import the installed package source when Tailwind should process and customize TCBasic:

```css
@import "tailwindcss-semantic-layer/source";
```

Import the compiled distribution only when no Tailwind processing or token extension is required:

```css
@import "tailwindcss-semantic-layer/dist";
```

## 2. Template source detection

Declare nonstandard template paths when automatic detection is insufficient:

```css
@source "../views";
@source "../../app/View/Components";
@source "../fragments";
```

Every conditional class option must be a complete literal.

## 3. Laravel Blade

Blade components may wrap TCBasic classes, but they must preserve the public HTML contract.

```blade
<button
    type="{{ $type }}"
    {{ $attributes->class(['button', 'button-primary' => $variant === 'primary']) }}
>
    {{ $slot }}
</button>
```

Do not allow arbitrary request data to become class names. Map approved variants to complete class strings.

Laravel owns:

- Validation.
- Authorization.
- CSRF protection.
- Error state.
- Component props and escaping.
- Asset inclusion.

## 4. HTMX

HTMX responses return the same semantic markup contracts as full-page responses.

Requirements:

- A fragment is direct-load safe or has a documented fragment-only route contract.
- Classes used only in fragments are scanned.
- Error, loading, success, and disabled states remain semantically accurate.
- Focus and announcements are managed by the application when swaps change context.
- Normal links and form submission remain the baseline where required.

TCBasic classes do not imply HTMX behavior.

## 5. PHP and Twig

Use approved maps:

```php
$variantClasses = [
    'primary' => 'button button-primary',
    'secondary' => 'button button-secondary',
];
```

Reject or default unknown variants. Do not concatenate untrusted values into class candidates.

## 6. Form rendering

Forms use native labels, controls, help text, and server-rendered errors. TCBasic form classes style these states; they do not validate data.

```html
<div class="form-group has-error">
  <label class="form-label" for="email">Email</label>
  <input class="form-input" id="email" name="email" aria-invalid="true" aria-describedby="email-error">
  <p class="form-error" id="email-error">Enter a valid email address.</p>
</div>
```

## 7. Content security

Server templates escape untrusted output according to context. Class maps, token names, inline styles, and URLs must not be built from untrusted data without validation and encoding.

## 8. Progressive enhancement

Primary content, navigation, and normal form outcomes remain available without JavaScript. Enhancements may improve speed or local interaction but do not become the only authority for state.

## 9. Integration evidence

```yaml
server_rendered:
  framework: <name-and-version>
  stylesheet: <path>
  package_import: source | dist
  template_sources: []
  fragment_sources: []
  dynamic_class_maps_reviewed: true | false
  no_javascript_baseline: passed | failed | not_applicable
  example_build: passed | failed
```
