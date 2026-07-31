# Accessibility Statement Template

> **Purpose:** Public-facing statement template  
> **Core entry point:** [`../README.md`](../README.md)

Replace every placeholder. Remove sections that do not apply rather than publishing template text.

---

# Accessibility Statement for `<product or organization>`

`<Organization>` is committed to providing a website and digital services that are usable by people with disabilities.

## Conformance status

`<Choose one and complete accurately>`:

- This service is designed to target WCAG 2.2 Level AA. A complete conformance evaluation has not yet been completed.
- This service has been evaluated against WCAG 2.2 Level AA and is partially conformant because of the limitations listed below.
- This service has been evaluated against WCAG 2.2 Level AA and conforms within the scope described below.

**Scope:** `<domains, applications, and exclusions>`

**Last evaluated:** `<ISO-8601-date>`

## Measures taken

`<Organization>` uses measures such as:

- Accessibility requirements in design and development.
- Semantic HTML and keyboard-operable controls.
- Automated and manual accessibility testing.
- Assistive-technology testing.
- Accessibility review of reusable components.
- Staff or contributor guidance.
- A process for reporting and correcting barriers.

Edit this list to match actual practice.

## Known limitations

List each known limitation with:

- Affected content or workflow.
- User impact.
- Available alternative.
- Remediation status.
- Expected review condition.

Do not state that there are no known limitations without a current evaluation.

## Technologies relied upon

This service relies upon:

- HTML.
- CSS.
- JavaScript where identified as an enhancement or required application technology.
- `<other technologies>`.

## Evaluation approach

The service was evaluated using:

- `<automated tools>`.
- Keyboard-only testing.
- Zoom, reflow, and text-spacing testing.
- `<screen readers and browser combinations>`.
- `<disabled-user testing, when performed>`.
- `<independent review, when performed>`.

## Feedback and contact

Report an accessibility barrier through:

- Email: `<accessible contact address>`
- Phone or relay-compatible contact: `<number>`
- Accessible form: `<path>`
- Postal address: `<address, when relevant>`

Provide:

- The page or feature.
- What you were trying to do.
- The browser or assistive technology, when comfortable sharing it.
- A preferred contact method.

We aim to acknowledge accessibility reports within `<time>` and provide a status or alternative within `<time>`.

## Compatibility

This service is tested with the environments listed in `<support-matrix path or public summary>`.

## Formal approval

```yaml
statement:
  scope: <scope>
  wcag_version: "2.2"
  level: AA
  claim_status: target | partial | conformant
  evaluation_date: <date>
  evidence: <path>
  approved_by: <role>
  next_review: <date-or-condition>
```
