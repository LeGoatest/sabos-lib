# Browser and Assistive-Technology Support Matrix

> **Purpose:** Project template for accessibility-supported technology claims  
> **Core entry point:** [`../README.md`](../README.md)

WCAG conformance may rely only on ways of using web technologies that are supported by the declared user-agent and assistive-technology environment.

## 1. Project baseline

```yaml
support_matrix:
  product: <name>
  release: <version>
  wdbasic_ref: <tag-or-commit>
  tested_from: <ISO-8601-date>
  tested_to: <ISO-8601-date>
  owner: <team-or-role>
  browser_policy: <current-current-minus-one-or-other>
  mobile_policy: <policy>
```

## 2. Desktop combinations

| Operating system | Browser and version | Assistive technology | Primary workflows tested | Result | Known defects | Date |
|---|---|---|---|---|---|---|
| `<OS>` | `<browser>` | `<screen reader or none>` | `<workflows>` | pass/fail | `<issues>` | `<date>` |

## 3. Mobile combinations

| Device/OS | Browser or web view | Assistive technology | Touch/gesture workflows | Result | Known defects | Date |
|---|---|---|---|---|---|---|
| `<platform>` | `<browser>` | `<screen reader>` | `<workflows>` | pass/fail | `<issues>` | `<date>` |

## 4. Additional access modes

| Mode | Environment | Components/workflows | Result | Evidence |
|---|---|---|---|---|
| Keyboard only | `<environment>` | `<scope>` | pass/fail | `<path>` |
| Browser zoom | `<levels>` | `<scope>` | pass/fail | `<path>` |
| Screen magnification | `<tool>` | `<scope>` | pass/fail | `<path>` |
| Forced colors/high contrast | `<environment>` | `<scope>` | pass/fail | `<path>` |
| Speech input | `<tool>` | `<scope>` | pass/fail | `<path>` |
| Reduced motion | `<environment>` | `<scope>` | pass/fail | `<path>` |
| Coarse pointer/touch | `<device>` | `<scope>` | pass/fail | `<path>` |

## 5. Required workflow coverage

At minimum record support for applicable:

- Primary navigation.
- Search.
- Contact or estimate form.
- Authentication and recovery.
- Client or administrative portal.
- Dialogs and composite widgets.
- Tables and bulk actions.
- Upload and camera flows.
- Payments or consequential submissions.
- Authoring and publishing.

## 6. Defect handling

A known interoperability defect must identify:

- Environment.
- Affected component or workflow.
- User impact.
- Workaround.
- Whether the defect prevents conformance.
- Owner.
- Review date.

Do not describe an unsupported environment as supported merely because the page renders visually.
