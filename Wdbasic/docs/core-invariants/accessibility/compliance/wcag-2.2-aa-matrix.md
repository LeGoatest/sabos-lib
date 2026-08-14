# WCAG 2.2 Level AA Coverage Matrix

> **Purpose:** Required criterion, conformance, and evidence index  
> **Core entry point:** [`../README.md`](../README.md)  
> **Accessibility contract:** [`../tokens/accessibility.md`](../tokens/accessibility.md)  
> **Testing methodology:** [`testing-methodology.md`](testing-methodology.md)  
> **Reusable rule format:** [`act-rule-template.md`](act-rule-template.md)

This matrix covers every WCAG 2.2 Level A and AA success criterion and the five WCAG conformance requirements.

An adopting project must copy or extend this matrix with project-specific applicability, routes, components, procedures, results, evidence, owners, and dates.

A criterion row marked applicable must pass across the declared full-page scope and complete processes before a WCAG 2.2 Level AA conformance claim is made.

## 1. Result vocabulary

```text
not-reviewed
applicable
not-applicable-with-rationale
passed
failed
inapplicable
cantTell
untested
blocked
automated-pass-manual-pending
assistive-technology-pending
retest-required
```

Rules:

- `cantTell`, `untested`, `blocked`, pending, and `retest-required` are unresolved outcomes.
- An automated pass is not a criterion pass when manual or assistive-technology review is required.
- Not-applicable status requires a criterion-specific rationale.
- An exception does not convert a failed WCAG criterion into a pass.

## 2. Principle 1 — Perceivable

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 1.1.1 Non-text Content | A | Accessibility, media, output, and component contracts | Image and graphic inventory; alt and decorative review; functional control names; CAPTCHA or human-verification alternatives; chart or diagram equivalent |
| 1.2.1 Audio-only and Video-only (Prerecorded) | A | Media contract | Transcript, description, or equivalent record by media type |
| 1.2.2 Captions (Prerecorded) | A | Media contract | Caption file, synchronization, speaker and non-speech content, quality review |
| 1.2.3 Audio Description or Media Alternative (Prerecorded) | A | Media contract | Audio description or media-alternative record |
| 1.2.4 Captions (Live) | AA | Media contract | Live-caption method, provider, delay and accuracy review |
| 1.2.5 Audio Description (Prerecorded) | AA | Media contract | Audio-description record and quality review |
| 1.3.1 Info and Relationships | A | Accessibility, component, and output contracts | Semantic structure; headings; labels; groups; tables; custom-element and shadow-DOM relationships; generated-output inspection |
| 1.3.2 Meaningful Sequence | A | Accessibility, responsive, internationalization, and component contracts | DOM, slot, source, reading, responsive, and bidirectional order review |
| 1.3.3 Sensory Characteristics | A | Cognitive, content, and component contracts | Instructions reviewed for shape, color, location, sound, or orientation dependence |
| 1.3.4 Orientation | AA | Accessibility contract | Portrait and landscape test or documented essential rationale |
| 1.3.5 Identify Input Purpose | AA | Form and output contracts | Appropriate autocomplete tokens and supported input-purpose mapping |
| 1.4.1 Use of Color | A | Semantic-color and accessibility contracts | State and instruction review without color; forced-colors review where supported |
| 1.4.2 Audio Control | A | Media contract | Autoplay inventory and independent stop or volume control test |
| 1.4.3 Contrast (Minimum) | AA | Semantic-color contract | Measured foreground/background pairs across themes and states |
| 1.4.4 Resize Text | AA | Typography and accessibility contracts | 200% text-resize test without loss of content or operation |
| 1.4.5 Images of Text | AA | Content, output, and media contracts | Image-of-text inventory, exception rationale, and alternative representation |
| 1.4.10 Reflow | AA | Responsive and accessibility contracts | 320 CSS px equivalent and 400% zoom reflow test; essential two-dimensional exceptions recorded |
| 1.4.11 Non-text Contrast | AA | Semantic-color and component contracts | Controls, focus, boundaries, graphics, custom controls, and state contrast |
| 1.4.12 Text Spacing | AA | Typography and accessibility contracts | Required increased-spacing test without clipping, overlap, or loss |
| 1.4.13 Content on Hover or Focus | AA | Accessibility and component contracts | Dismissible, hoverable, persistent, keyboard-equivalent behavior test |

## 3. Principle 2 — Operable

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 2.1.1 Keyboard | A | Accessibility and component contracts | Complete keyboard workflow; custom element; shadow DOM; canvas; native/web-view boundary testing |
| 2.1.2 No Keyboard Trap | A | Accessibility and component contracts | Focus-entry, exit, modal containment, embedded content, and viewer test |
| 2.1.4 Character Key Shortcuts | A | Accessibility contract | Shortcut inventory and disable, remap, or focus-only behavior |
| 2.2.1 Timing Adjustable | A | Accessibility, security, and architecture contracts | Session, task, challenge, and media timeout inventory; warning and extension review |
| 2.2.2 Pause, Stop, Hide | A | Media and component contracts | Moving, blinking, scrolling, auto-updating, carousel, and notification controls |
| 2.3.1 Three Flashes or Below Threshold | A | Media contract | Flash analysis or verified absence |
| 2.4.1 Bypass Blocks | A | Accessibility and output contracts | Skip link, landmarks, repeated-block bypass, embedded-shell navigation test |
| 2.4.2 Page Titled | A | Accessibility, search, and output contracts | Unique meaningful title inventory for pages and applicable document or view equivalents |
| 2.4.3 Focus Order | A | Accessibility and component contracts | Keyboard, custom-element, dialog, HTMX, slot, and responsive focus-order test |
| 2.4.4 Link Purpose (In Context) | A | Component, cognitive, and content contracts | Link-name and destination review including repeated generic actions |
| 2.4.5 Multiple Ways | AA | Navigation and search contracts | Navigation, search, site map, related links, or documented exception evidence |
| 2.4.6 Headings and Labels | AA | Accessibility and cognitive contracts | Heading and label purpose, clarity, consistency, and authoring-output review |
| 2.4.7 Focus Visible | AA | Accessibility and token contracts | Visible focus across themes, forced colors, custom controls, native/web-view boundaries |
| 2.4.11 Focus Not Obscured (Minimum) | AA | Accessibility and spacing contracts | Sticky, fixed, overlay, viewport, on-screen keyboard, and zoom focus test |
| 2.5.1 Pointer Gestures | A | Accessibility and component contracts | Single-pointer alternative for multipoint or path-based gesture |
| 2.5.2 Pointer Cancellation | A | Accessibility and action contracts | Up-event, cancel, abort, undo, or essential exception evidence |
| 2.5.3 Label in Name | A | Accessibility contract | Visible-label and computed-accessible-name comparison, including shadow DOM and speech input |
| 2.5.4 Motion Actuation | A | Accessibility, native, and media contracts | Conventional control, disable option, permission behavior, or essential rationale |
| 2.5.7 Dragging Movements | AA | Accessibility and component contracts | Non-drag method for sortable, upload, map, slider, before-and-after, and canvas interaction |
| 2.5.8 Target Size (Minimum) | AA | Accessibility and spacing contracts | 24 CSS px minimum, spacing calculation, inline exception, or other defined exception evidence |

## 4. Principle 3 — Understandable

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 3.1.1 Language of Page | A | Internationalization, accessibility, and output contracts | Document-language test for full pages and generated documents where applicable |
| 3.1.2 Language of Parts | AA | Internationalization contract | Passage-language and translated-fragment test |
| 3.2.1 On Focus | A | Accessibility and component contracts | No unexpected navigation, submission, permission prompt, media start, or context change on focus |
| 3.2.2 On Input | A | Form and component contracts | Input-triggered navigation, submission, filtering, and context-change review |
| 3.2.3 Consistent Navigation | AA | Component and cognitive contracts | Repeated-navigation comparison across roles, routes, profiles, and responsive states |
| 3.2.4 Consistent Identification | AA | Component and cognitive contracts | Same-purpose label, icon, command, and accessible-name comparison |
| 3.2.6 Consistent Help | A | Cognitive and component contracts | Repeated help, contact, self-service, and automated-help placement and order review |
| 3.3.1 Error Identification | A | Form and accessibility contracts | Field and summary error identification, challenge failure, and custom-control invalid-state test |
| 3.3.2 Labels or Instructions | A | Form, cognitive, and accessibility contracts | Persistent label, instruction, format, challenge, and consequence review |
| 3.3.3 Error Suggestion | AA | Form and cognitive contracts | Corrective suggestion review when known and security-safe |
| 3.3.4 Error Prevention (Legal, Financial, Data) | AA | Architecture, security, form, and action contracts | Reversible, validation/correction, or review/confirmation evidence |
| 3.3.7 Redundant Entry | A | Form, workflow, and cognitive contracts | Previously-entered data population or selection; exception rationale |
| 3.3.8 Accessible Authentication (Minimum) | AA | Accessibility, cognitive, security, and component contracts | Password-manager and paste test; CAPTCHA alternatives; no sole cognitive-function test; recovery and one-time-code test |

## 5. Principle 4 — Robust

| Criterion | Level | WDBASIC owner | Minimum evidence |
|---|---:|---|---|
| 4.1.2 Name, Role, Value | A | Accessibility and component contracts | Computed accessibility-tree and interaction testing for native controls, ARIA, custom elements, shadow DOM, SVG, canvas, and native wrappers |
| 4.1.3 Status Messages | AA | Accessibility and HTMX contracts | Live-region or status announcement testing across success, error, loading, conflict, upload, and background update states |

## 6. Project evidence columns

Copy or extend the criterion tables with:

```text
applicability
status
routes-components-and-states
act-rule-id
act-rule-version
rule-implementation-and-version
manual-procedure-id
browser-or-platform
automated-result
manual-result
assistive-technology-result
disabled-user-evaluation
evidence-location
exception-id
owner
last-reviewed
retest-trigger
notes
```

A project may use a separate normalized evidence database when every matrix row links to the equivalent fields.

## 7. WCAG conformance requirements

A Level AA claim also requires these five conditions.

| Conformance requirement | Required evidence | Status |
|---|---|---|
| 1. Conformance Level | Every applicable Level A and AA row passed | `<status>` |
| 2. Full Pages | Entire claimed pages, responsive variations, states, and embedded required content evaluated | `<status>` |
| 3. Complete Processes | Every step of each included process passed | `<status>` |
| 4. Accessibility-Supported Technologies | Relied-upon technologies and supported user-agent/assistive-technology environments documented | `<status>` |
| 5. Non-Interference | Non-conforming and non-relied-upon technology does not block keyboard access, timing control, flashing limits, or other content access | `<status>` |

A criterion matrix with all rows passed is still insufficient when one of these conformance requirements fails.

## 8. Complete-process record

Evaluate every required step, including:

- Entry and navigation.
- Authentication or identity verification.
- CAPTCHA or human verification.
- Data entry.
- Validation failure.
- Review and confirmation.
- Success and recovery.
- Session expiration and reauthentication.
- Permission denial where applicable.
- Cancellation.

A process fails when any required step fails, even when every other page passes.

## 9. Claim record

A conformance claim must record:

```yaml
wcag_claim:
  claim_date: <ISO-8601-date>
  guidelines_title: "Web Content Accessibility Guidelines 2.2"
  guidelines_uri: "https://www.w3.org/TR/WCAG22/"
  level: AA
  scope: <concise-page-or-URI-description>
  technologies_relied_upon: []
  technologies_used_not_relied_upon: []
  user_agents_and_assistive_technologies_tested: []
  evaluation_report: <path>
  matrix_revision: <path-or-commit>
  act_ruleset: <path-or-commit>
  approved_by: <role>
```

## 10. Partial-conformance statements

Do not use a generic `partial` matrix or claim status.

A Statement of Partial Conformance is permitted only under the narrowly defined conditions in [`../STANDARDS.md`](../STANDARDS.md):

- Clearly identified uncontrolled third-party or user-contributed content.
- Lack of accessibility support for a human language.

The statement explicitly says the page does not conform but would conform under the defined condition.

Ordinary known failures use `evaluated-nonconformant`.

## 11. Claim rule

Do not label a project WCAG 2.2 Level AA conformant while:

- Any applicable criterion row is failed or unresolved.
- Any full-page variation is untested.
- Any complete-process step fails.
- Relied-upon technology lacks documented accessibility support.
- Non-conforming technology interferes.
- Required manual or assistive-technology testing remains pending.
- The claim lacks a required claim component.
