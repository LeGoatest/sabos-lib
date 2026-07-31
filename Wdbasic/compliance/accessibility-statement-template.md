# Accessibility Statement Template

> **Purpose:** Public-facing statement template  
> **Core entry point:** [`../README.md`](../README.md)  
> **Standards registry:** [`../STANDARDS.md`](../STANDARDS.md)

Replace every placeholder. Remove inapplicable sections rather than publishing template instructions.

Do not describe a service as “partially conformant” as though that were a general WCAG conformance level. Use the evaluated-nonconformant language below unless the narrow WCAG Statement of Partial Conformance conditions actually apply.

---

# Accessibility Statement for `<product or organization>`

`<Organization>` is committed to providing websites, applications, and digital services that are usable by people with disabilities.

## Accessibility status

Choose one status and complete it accurately.

### Target; evaluation incomplete

> This service is designed to target Web Content Accessibility Guidelines (WCAG) 2.2 Level AA. A complete conformance evaluation has not yet been completed, so this statement does not make a WCAG conformance claim.

### Evaluated; not conformant

> This service has been evaluated against Web Content Accessibility Guidelines (WCAG) 2.2 Level AA. The evaluated scope does not currently conform because one or more applicable success criteria fail. The known limitations and available alternatives are listed below.

### Conformant claim

> On `<claim date>`, `<organization>` determined that the scope identified below conforms to Web Content Accessibility Guidelines 2.2 at Level AA.

A conformant claim must include every required claim component:

- **Claim date:** `<ISO-8601-date>`
- **Guidelines:** `Web Content Accessibility Guidelines 2.2`
- **Guidelines URI:** `https://www.w3.org/TR/WCAG22/`
- **Level:** `AA`
- **Scope:** `<concise list or expression describing every included URI, domain, subdomain, and application state>`
- **Technologies relied upon:** `<HTML, CSS, JavaScript, SVG, or other technologies>`

The full evaluation record is available at `<public location or internal evidence reference>`.

## Statements of partial conformance

Use one of these sections only when its precise WCAG conditions apply. These statements explicitly say the page does not conform.

### Uncontrolled third-party content

> This page does not conform, but would conform to WCAG 2.2 at Level `<level>` if the following parts from uncontrolled sources were removed: `<clearly identifiable uncontrolled content>`.

The identified content must:

- Be outside the author's control.
- Be described so users can identify it.
- Not be a first-party defect represented as external content.

When uncontrolled content can be monitored and repaired, document the monitoring and remediation process separately.

### Accessibility support for a language

> This page does not conform, but would conform to WCAG 2.2 at Level `<level>` if accessibility support existed for the following language or languages: `<languages>`.

Do not use either partial statement for ordinary known defects, incomplete testing, missing remediation, schedule pressure, or unsupported internal components.

## Scope

**Included:** `<domains, routes, applications, authenticated states, and complete processes>`

**Excluded:** `<content and rationale>`

**Responsive variations included:** `<yes/no and tested range>`

**Complete processes included:** `<list>`

**Last evaluated:** `<ISO-8601-date>`

## Measures taken

`<Organization>` uses measures such as:

- Accessibility requirements in design, development, procurement, and authoring.
- Semantic HTML and keyboard-operable controls.
- Automated, manual, and assistive-technology testing.
- Review of reusable components and generated output.
- Accessibility training and contributor guidance.
- A process for reporting, prioritizing, correcting, and retesting barriers.
- Testing with disabled users for selected high-impact workflows when performed.

Edit the list to match actual practice. Do not publish measures that are only planned.

## Known limitations

For each limitation, provide:

- Affected content or workflow.
- Applicable success criterion or WDBASIC requirement.
- User impact.
- Available alternative or workaround.
- Remediation owner and status.
- Expected review or completion condition.
- Issue or evidence reference where appropriate.

Do not state that there are no known limitations without a current evaluation supporting that statement.

## Technologies relied upon

List technologies required for conformance, for example:

- HTML.
- CSS.
- JavaScript where relied upon.
- SVG.
- `<other technologies>`.

List technologies used but not relied upon separately when that information helps users understand fallback behavior.

## Compatibility and testing environments

This service is tested with the environments summarized in `<support-matrix path or public summary>`.

Include:

- Operating systems.
- Browsers and versions.
- Screen readers and versions.
- Mobile screen readers.
- Keyboard-only use.
- Zoom, magnification, high contrast, and reduced motion.
- Speech input or other access modes when tested.

Testing combinations are evidence of accessibility support; they are not a guarantee that every untested combination is unsupported.

## Evaluation approach

The service was evaluated using:

- `<automated tools and versions>`.
- ACT rules or manual procedures at `<ruleset path or version>`.
- Keyboard-only testing.
- Zoom, reflow, and text-spacing testing.
- `<screen-reader and browser combinations>`.
- `<disabled-user evaluation, when performed>`.
- `<independent review, when performed>`.

## Non-web software and documents

When the service includes native applications, hybrid shells, PDFs, EPUBs, or other exported documents, identify their separate accessibility baselines and testing scope.

Do not imply that a web WCAG conformance claim automatically covers native software or every exported format.

## Feedback and contact

Report an accessibility barrier through one or more accessible channels:

- Email: `<accessible contact address>`
- Phone or relay-compatible contact: `<number>`
- Accessible form: `<path>`
- Postal address: `<address, when relevant>`

Helpful details include:

- The page, feature, document, or application.
- What you were trying to accomplish.
- The browser, device, or assistive technology, when comfortable sharing it.
- A preferred contact method.

We aim to acknowledge reports within `<time>` and provide a status, workaround, or remediation plan within `<time>`.

Do not require a person to disclose a diagnosis or unnecessary medical information to report a barrier.

## Formal approval record

```yaml
statement:
  status: target | evaluated-nonconformant | conformant | partial-statement-third-party | partial-statement-language
  claim_date: <date-or-none>
  guidelines_title: "Web Content Accessibility Guidelines 2.2"
  guidelines_uri: "https://www.w3.org/TR/WCAG22/"
  level: AA
  scope: <scope>
  technologies_relied_upon: []
  technologies_used_not_relied_upon: []
  evaluation_date: <date>
  evidence: <path>
  browser_at_matrix: <path>
  known_limitations: <path-or-section>
  approved_by: <role>
  next_review: <date-or-condition>
```
