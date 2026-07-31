# WCAG 2.2 Level AA Coverage Matrix

> **Purpose:** Required coverage and evidence index  
> **Core entry point:** [`../README.md`](../README.md)  
> **Accessibility contract:** [`../tokens/accessibility.md`](../tokens/accessibility.md)

This matrix covers every WCAG 2.2 Level A and AA success criterion. An adopting project must replace generic ownership and evidence references with project-specific records.

A row marked **Applicable** must pass across the declared scope and complete processes before a WCAG 2.2 Level AA conformance claim is made.

## Status values

```text
not-reviewed
applicable
not-applicable-with-rationale
pass
automated-pass-manual-pending
fail
blocked
```

## Principle 1 — Perceivable

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 1.1.1 Non-text Content | A | Accessibility and media contracts | Image inventory, alt review, decorative treatment, control names |
| 1.2.1 Audio-only and Video-only (Prerecorded) | A | Media contract | Transcript or equivalent record |
| 1.2.2 Captions (Prerecorded) | A | Media contract | Caption file and quality review |
| 1.2.3 Audio Description or Media Alternative (Prerecorded) | A | Media contract | Description or media-alternative record |
| 1.2.4 Captions (Live) | AA | Media contract | Live-caption method and test |
| 1.2.5 Audio Description (Prerecorded) | AA | Media contract | Audio-description record |
| 1.3.1 Info and Relationships | A | Accessibility and component contracts | Semantic structure, labels, tables, groups, regions |
| 1.3.2 Meaningful Sequence | A | Accessibility and responsive contracts | DOM/source-order review |
| 1.3.3 Sensory Characteristics | A | Content and component contracts | Instruction review |
| 1.3.4 Orientation | AA | Accessibility contract | Portrait and landscape test or essential rationale |
| 1.3.5 Identify Input Purpose | AA | Form contract | Appropriate autocomplete tokens |
| 1.4.1 Use of Color | A | Semantic-color and accessibility contracts | State review without color |
| 1.4.2 Audio Control | A | Media contract | Autoplay and audio-control test |
| 1.4.3 Contrast (Minimum) | AA | Semantic-color contract | Measured foreground/background pairs |
| 1.4.4 Resize Text | AA | Typography and accessibility contracts | 200% text-resize test |
| 1.4.5 Images of Text | AA | Content and media contracts | Image-of-text inventory and exceptions |
| 1.4.10 Reflow | AA | Responsive and accessibility contracts | Narrow viewport and 400% zoom equivalent test |
| 1.4.11 Non-text Contrast | AA | Semantic-color and component contracts | Controls, focus, boundaries, graphic contrast |
| 1.4.12 Text Spacing | AA | Typography and accessibility contracts | Increased-spacing test |
| 1.4.13 Content on Hover or Focus | AA | Accessibility and component contracts | Dismissible, hoverable, persistent behavior test |

## Principle 2 — Operable

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 2.1.1 Keyboard | A | Accessibility and component contracts | Keyboard workflow test |
| 2.1.2 No Keyboard Trap | A | Accessibility contract | Focus-entry and exit test |
| 2.1.4 Character Key Shortcuts | A | Accessibility contract | Shortcut inventory and disable/remap/focus behavior |
| 2.2.1 Timing Adjustable | A | Accessibility and architecture contracts | Session and task timeout review |
| 2.2.2 Pause, Stop, Hide | A | Media and component contracts | Moving/updating content controls |
| 2.3.1 Three Flashes or Below Threshold | A | Media contract | Flash review |
| 2.4.1 Bypass Blocks | A | Accessibility contract | Skip link and landmark test |
| 2.4.2 Page Titled | A | Accessibility and search contracts | Unique title inventory |
| 2.4.3 Focus Order | A | Accessibility contract | Keyboard focus-order test |
| 2.4.4 Link Purpose (In Context) | A | Component and content contracts | Link-name review |
| 2.4.5 Multiple Ways | AA | Navigation and search contracts | Navigation/search/site-map or equivalent evidence |
| 2.4.6 Headings and Labels | AA | Accessibility and content contracts | Heading and label quality review |
| 2.4.7 Focus Visible | AA | Accessibility and token contracts | Visible focus test |
| 2.4.11 Focus Not Obscured (Minimum) | AA | Accessibility and spacing contracts | Sticky/overlay focus test |
| 2.5.1 Pointer Gestures | A | Accessibility and component contracts | Single-pointer alternative test |
| 2.5.2 Pointer Cancellation | A | Accessibility and action contracts | Up-event, cancel, undo, or exception evidence |
| 2.5.3 Label in Name | A | Accessibility contract | Visible-label/accessibility-name comparison |
| 2.5.4 Motion Actuation | A | Accessibility and media contracts | Conventional control and disable option |
| 2.5.7 Dragging Movements | AA | Accessibility and component contracts | Non-drag alternative test |
| 2.5.8 Target Size (Minimum) | AA | Accessibility and spacing contracts | 24 CSS px minimum/spacing or exception evidence |

## Principle 3 — Understandable

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 3.1.1 Language of Page | A | Internationalization and accessibility contracts | Document `lang` test |
| 3.1.2 Language of Parts | AA | Internationalization contract | Passage-language test |
| 3.2.1 On Focus | A | Accessibility and component contracts | No unexpected context change test |
| 3.2.2 On Input | A | Form and component contracts | Input-triggered change review |
| 3.2.3 Consistent Navigation | AA | Component contract | Repeated-navigation comparison |
| 3.2.4 Consistent Identification | AA | Component and content contracts | Same-purpose label/icon comparison |
| 3.2.6 Consistent Help | A | Core and component contracts | Repeated help placement/order review |
| 3.3.1 Error Identification | A | Form and accessibility contracts | Error identification test |
| 3.3.2 Labels or Instructions | A | Form and accessibility contracts | Label/instruction review |
| 3.3.3 Error Suggestion | AA | Form contract | Corrective suggestion review |
| 3.3.4 Error Prevention (Legal, Financial, Data) | AA | Architecture, security, and action contracts | Reversible/check/confirm evidence |
| 3.3.7 Redundant Entry | A | Form and workflow contracts | Previously-entered data reuse test |
| 3.3.8 Accessible Authentication (Minimum) | AA | Accessibility and security contracts | Authentication cognitive-function test |

## Principle 4 — Robust

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 4.1.2 Name, Role, Value | A | Accessibility and component contracts | Accessibility-tree and interaction test |
| 4.1.3 Status Messages | AA | Accessibility and HTMX contracts | Live-region/status announcement test |

## Project evidence columns

Copy or extend the tables with:

```text
applicability
status
routes-and-components
automated-test
manual-test
assistive-technology-test
evidence-location
exception-id
owner
last-reviewed
notes
```

## Complete-process rule

Evaluate every step in a process, including:

- Entry and navigation.
- Authentication or identity verification.
- Data entry.
- Validation failure.
- Review and confirmation.
- Success and recovery.
- Session expiration.
- Cancellation.

A process fails when any required step fails, even when other pages pass.

## Claim rule

Do not label a project WCAG 2.2 Level AA conformant while any applicable row is `fail`, `blocked`, `not-reviewed`, or manual testing remains incomplete.
