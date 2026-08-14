# Browser, Platform, and Assistive-Technology Support Matrix

> **Purpose:** Project template for accessibility-supported technology, native-platform, and document-reader evidence  
> **Core entry point:** [`../README.md`](../README.md)  
> **Testing methodology:** [`testing-methodology.md`](testing-methodology.md)

WCAG conformance may rely only on ways of using web technologies that are accessibility-supported in the declared user-agent and assistive-technology environment.

Native software, hybrid shells, and non-web documents require separate platform or format support evidence under [`../non-web-accessibility.md`](../non-web-accessibility.md).

## 1. Project baseline

```yaml
support_matrix:
  product: <name>
  release: <version>
  wdbasic_ref: <tag-or-commit>
  standards_record: <path>
  tested_from: <ISO-8601-date>
  tested_to: <ISO-8601-date>
  owner: <team-or-role>
  browser_policy: <policy>
  mobile_policy: <policy>
  embedded_webview_policy: <policy-or-none>
  native_platform_policy: <policy-or-none>
  document_reader_policy: <policy-or-none>
  act_ruleset: <path-or-none>
```

A policy defines what the project intends to support. Test rows provide evidence of what was actually evaluated.

## 2. Desktop web combinations

| Operating system and version | Browser and version | Assistive technology and version | Primary workflows tested | Result | Known defects | Evidence | Date |
|---|---|---|---|---|---|---|---|
| `<OS>` | `<browser>` | `<screen reader or none>` | `<workflows>` | passed/failed/pending | `<issues>` | `<path>` | `<date>` |

## 3. Mobile web combinations

| Device and OS | Browser | Assistive technology and version | Touch and gesture workflows | Result | Known defects | Evidence | Date |
|---|---|---|---|---|---|---|---|
| `<platform>` | `<browser>` | `<screen reader>` | `<workflows>` | passed/failed/pending | `<issues>` | `<path>` | `<date>` |

## 4. Embedded web-view and hybrid combinations

| Native platform | Application shell and version | Embedded web view and engine | Assistive technology | Native/web focus and workflows | Result | Evidence | Date |
|---|---|---|---|---|---|---|---|
| `<platform>` | `<shell>` | `<webview>` | `<AT>` | `<scope>` | passed/failed/pending | `<path>` | `<date>` |

Record separately:

- Native title bars, menus, tray controls, file dialogs, and permission prompts.
- Accessibility-tree exposure inside the embedded web view.
- Focus transfer between native and web content.
- Platform text scaling, high contrast, and reduced motion.
- Install, first-run, update, offline, and recovery flows.

Do not infer web-view support from standalone browser results.

## 5. Native application combinations

| Platform and version | Application version | Accessibility technology | Input mode | Workflows | Result | Evidence | Date |
|---|---|---|---|---|---|---|---|
| `<platform>` | `<version>` | `<screen reader or platform service>` | `<keyboard-touch-switch-voice>` | `<scope>` | passed/failed/pending | `<path>` | `<date>` |

Identify the selected platform, procurement, contractual, or regulatory baseline separately from WCAG2ICT guidance.

## 6. Document and reader combinations

| Format and standard | Document or export version | Reader or viewer and version | Platform | Assistive technology | Workflows | Result | Evidence |
|---|---|---|---|---|---|---|---|
| `<PDF-EPUB-office-other>` | `<document>` | `<reader>` | `<OS>` | `<AT>` | `<navigation-forms-media>` | passed/failed/pending | `<path>` |

A format checker result does not replace testing in declared readers when user-agent interoperability is material.

## 7. Additional access modes

| Mode | Environment and version | Components or workflows | Result | Evidence |
|---|---|---|---|---|
| Keyboard only | `<environment>` | `<scope>` | passed/failed/pending | `<path>` |
| Browser zoom | `<levels>` | `<scope>` | passed/failed/pending | `<path>` |
| Platform text scaling | `<levels>` | `<scope>` | passed/failed/pending | `<path>` |
| Screen magnification | `<tool>` | `<scope>` | passed/failed/pending | `<path>` |
| Forced colors or high contrast | `<environment>` | `<scope>` | passed/failed/pending | `<path>` |
| Speech input | `<tool>` | `<scope>` | passed/failed/pending | `<path>` |
| Switch or alternative input | `<tool>` | `<scope>` | passed/failed/pending | `<path>` |
| Reduced motion | `<environment>` | `<scope>` | passed/failed/pending | `<path>` |
| Coarse pointer and touch | `<device>` | `<scope>` | passed/failed/pending | `<path>` |
| Right-to-left and mixed direction | `<locale>` | `<scope>` | passed/failed/pending | `<path>` |
| Offline or degraded network | `<environment>` | `<scope>` | passed/failed/pending | `<path>` |

## 8. Custom element and accessibility-tree combinations

| Component | Browser or web view | Assistive technology | Rendering mode | Expected tree | Actual result | Defect or evidence | Date |
|---|---|---|---|---|---|---|---|
| `<component>` | `<environment>` | `<AT>` | native/custom-element/shadow-DOM/canvas | `<contract>` | passed/failed/pending | `<path>` | `<date>` |

Test pre-upgrade, upgraded, failed-upgrade, validation, disabled, error, and duplicate-rendering states where applicable.

## 9. Required workflow coverage

At minimum record applicable support for:

- Primary navigation, search, and consistent help.
- Contact or estimate forms.
- Authentication, CAPTCHA or human verification, and recovery.
- Client or administrative portals.
- Dialogs and composite widgets.
- Custom elements and shadow-DOM controls.
- Tables, grids, and bulk actions.
- Upload, camera, permission, and media flows.
- Payments or consequential submissions.
- Authoring, preview, publishing, and generated output.
- Installation, first-run setup, update, and offline recovery.
- Exported document navigation and operation.

## 10. Accessibility-supported technology determination

For each technology relied upon, record:

- Technology and version.
- Feature relied upon.
- Supported browser, web-view, platform, reader, and assistive-technology combinations.
- Evidence source.
- Known unsupported combinations.
- Fallback or alternate path.
- Owner and review date.

A technology is not accessibility-supported merely because one implementation exposes it correctly in one environment.

## 11. Defect handling

A known interoperability defect must identify:

- Environment.
- Affected technology, component, or workflow.
- User impact.
- Workaround or alternate path.
- Whether the defect prevents a WCAG, native, document-format, or WDBASIC claim.
- Owner.
- Review date.
- Evidence and retest status.

Do not describe an unsupported environment as supported merely because the interface renders visually.

## 12. Matrix status

```yaml
matrix_status:
  web_claim_supported: true | false | pending
  native_claim_supported: true | false | not-applicable | pending
  document_claims_supported: []
  unresolved_cantTell: <count>
  unresolved_untested: <count>
  blocking_defects: []
  approved_by: <role>
  last_reviewed: <ISO-8601-date>
```
