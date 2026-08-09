# Server-Rendered Integration Contract

This contract applies to plain HTML, PHP, Laravel Blade, Twig, HTMX fragments, and similar server-rendered systems that adopt TCBasic concepts.

## 1. Adoption boundary

SABOS Lib does not publish an installable TCBasic package. A server-rendered project may adapt the canonical reference CSS under [`../../src/`](../../src/) into its own stylesheet architecture or reproduce the documented contracts in project-owned CSS.

The adopting project owns its actual Tailwind/tooling pipeline.

## 2. Template source detection

Declare nonstandard template paths when the adopter's Tailwind setup cannot discover them automatically:

```css
@source "../views";
@source "../../app/View/Components";
@source "../fragments";
```

Every conditional class option should remain a complete literal.

See [`../architecture/source-detection.md`](../architecture/source-detection.md).

## 3. Laravel Blade

Blade components may wrap TCBasic semantic classes, but they must preserve the documented HTML/component contract.

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

- validation;
- authorization;
- CSRF protection;
- error state;
- component props and escaping;
- asset inclusion and build tooling.

## 4. HTMX

HTMX responses should return the same semantic markup contracts as full-page responses.

Requirements:

- a fragment is direct-load safe or has a documented fragment-only route contract;
- classes used only in fragments are represented in the adopter's source-detection model;
- error, loading, success, and disabled states remain semantically accurate;
- focus and announcements are managed by the application when swaps change context;
- normal links and form submission remain the baseline where required by the host architecture.

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

Server templates escape untrusted output according to context. Class maps, token names, inline styles, and URLs must not be built from untrusted data without appropriate validation and encoding.

## 8. Progressive enhancement

Primary content, navigation, and normal form outcomes remain available without JavaScript when that is part of the adopted architecture. Enhancements may improve speed or local interaction but should not become the sole authority for important state without a documented reason.

## 9. Integration evidence

An adopter may record:

```yaml
server_rendered:
  framework: <name-and-version>
  tcbasic_source_ref: <commit-or-tag>
  stylesheet: <project-path>
  template_sources: []
  fragment_sources: []
  dynamic_class_maps_reviewed: true | false
  no_javascript_baseline: passed | failed | not_applicable | not_tested
  consumer_build: passed | failed | not_tested
```

This record belongs to the adopter environment; SABOS Lib does not infer it from the existence of reference files.
