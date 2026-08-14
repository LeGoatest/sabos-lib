# WDBASIC Internationalization and Bidirectional-Text Contract

> **Authority:** Binding internationalization contract  
> **Core entry point:** [`README.md`](README.md)  
> **Accessibility dependency:** [`tokens/accessibility.md`](tokens/accessibility.md)

This contract governs language metadata, text direction, locale formatting, translation resilience, and bidirectional user content.

## 1. Language

Every complete HTML document must declare its primary language using `lang`.

Passages or phrases in another human language must use an appropriate `lang` attribute when the change affects pronunciation, interpretation, or accessibility.

Do not infer language solely from country, domain, browser location, or user name.

## 2. Direction

Use HTML direction semantics:

- `dir="ltr"` for known left-to-right content when needed.
- `dir="rtl"` for known right-to-left content.
- `dir="auto"` for isolated user-generated content whose direction is unknown.
- `<bdi>` to isolate names, identifiers, and mixed-direction fragments.

Do not rely on CSS alone to define the semantic direction of text.

## 3. Logical layout

Reusable styles should use logical properties when direction may vary:

```css
margin-inline-start
margin-inline-end
padding-inline
border-inline-start
inset-inline-start
text-align: start
```

Physical properties may be used for genuinely physical positioning, such as an image crop or map coordinate, but not as the default for reading-order layout.

## 4. Component behavior

Components must preserve:

- Logical DOM order.
- Correct keyboard and focus order.
- Mirrored layout where appropriate.
- Non-mirrored treatment for logos, media, charts, clocks, and icons whose direction has intrinsic meaning.
- Correct placement of validation messages and status content.
- Valid language and direction after HTMX fragment replacement.

Directional icons such as arrows may mirror. Universal symbols and brand marks must not be mirrored without a defined reason.

## 5. Locale formatting

Dates, times, numbers, currencies, names, postal addresses, measurements, and telephone numbers must be formatted for the active locale when localization is supported.

Store canonical machine values separately from presentation formatting.

Rules:

- Do not store localized display strings as the only canonical value.
- Make time zones explicit when ambiguity affects users.
- Use unambiguous dates in legal, operational, or cross-locale contexts.
- Preserve user-entered names and addresses without imposing one cultural pattern.
- Do not require a middle name, fixed family-name order, or ASCII-only personal name without a justified business rule.

## 6. Translation resilience

Layouts must tolerate:

- Text expansion and contraction.
- Longer action labels.
- Multi-line headings and controls.
- Different plural forms.
- Scripts with different line metrics.
- Fonts with broader character coverage.

Do not fix component height around one language. Do not truncate essential labels without an accessible full value.

## 7. Forms

Forms must:

- Preserve labels and instructions after translation.
- Use locale-appropriate examples without making examples the only instruction.
- Keep submitted canonical values separate from display formatting.
- Support input methods required by the intended audience.
- Avoid rejecting valid Unicode characters without a documented reason.
- Present validation messages in the active interface language.

## 8. Search and URLs

Document:

- Locale URL strategy.
- Canonical and alternate-language relationships.
- Locale fallback behavior.
- Slug generation and collision handling.
- Search tokenization limitations.

Language variants must not become thin duplicate pages. Each published locale must provide meaningful translated content and correct metadata.

## 9. Media and content

Localized media must preserve captions, transcripts, descriptions, labels, and attribution.

Text embedded in an image is prohibited for essential content unless an equivalent localized HTML representation is provided.

## 10. Testing

Test applicable interfaces for:

- At least one long-text locale.
- At least one right-to-left locale when RTL support is claimed.
- Mixed-direction names and identifiers.
- Locale-specific dates, numbers, and currency.
- Zoom and narrow layouts after translation.
- Keyboard and screen-reader behavior.
- HTMX fragment replacement under the active locale and direction.

## 11. Adoption record

```yaml
i18n:
  default_locale: <locale>
  supported_locales: []
  rtl_supported: true | false
  locale_url_strategy: <strategy>
  translation_source: <path-or-service>
  fallback_locale: <locale>
  formatting_library: <library-or-native-runtime>
  validation_commands: []
```
