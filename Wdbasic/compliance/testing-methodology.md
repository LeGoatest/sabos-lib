# WDBASIC Accessibility Evaluation Methodology

> **Purpose:** Repeatable accessibility and conformance evaluation process  
> **Core entry point:** [`../README.md`](../README.md)  
> **Coverage matrix:** [`wcag-2.2-aa-matrix.md`](wcag-2.2-aa-matrix.md)  
> **Reusable rule format:** [`act-rule-template.md`](act-rule-template.md)

This methodology governs WDBASIC evaluations for websites, portals, administrative applications, authoring tools, hybrid applications, and generated output.

It adapts WCAG evaluation principles and uses ACT Rules Format 1.1 for reusable test procedures. It does not replace the normative WCAG conformance requirements.

## 1. Define the evaluation type

Select one:

- **Exploratory review:** Finds likely barriers without producing a complete conformance determination.
- **Regression review:** Re-tests affected components, rules, and workflows after a change.
- **Evaluated status review:** Evaluates a declared scope and reports passes and failures.
- **Formal conformance evaluation:** Determines whether the declared web-page scope satisfies every applicable WCAG conformance requirement.
- **Non-web evaluation:** Applies the selected native-software or document baseline, using WCAG2ICT only as informative guidance.

Do not publish an exploratory or partial regression review as a complete conformance evaluation.

## 2. Define scope

Record:

- Product and release.
- Production or test environment.
- Included domains, routes, applications, and embedded content.
- Authenticated states and user roles.
- Included responsive variations.
- Complete processes.
- Excluded content and reason.
- WCAG version and level where applicable.
- Non-web, platform, or document baselines where applicable.
- WDBASIC source revision.
- Active design profile.
- Technologies relied upon.
- Technologies used but not relied upon.
- Evaluation dates.
- Evaluators and independent review where applicable.
- ACT ruleset and version.

A scope must be specific enough that another evaluator can reproduce it.

## 3. Explore the implementation

Inventory:

- Page templates and layouts.
- Primary navigation, search, and help.
- Public and authenticated states.
- User roles and permission boundaries.
- Complete processes.
- Forms and validation paths.
- Dialogs and composite widgets.
- Custom elements and shadow-DOM components.
- Data tables, grids, and virtualized content.
- Media and animations.
- Third-party embeds.
- HTMX fragments and live updates.
- Error, empty, loading, success, expired, forbidden, conflict, and offline states.
- Authoring interfaces and generated output.
- Native shell, installation, permission, and update flows when applicable.
- Exported document formats.

## 4. Select a representative sample

Include:

- Every unique page and component type.
- Every critical business workflow.
- Pages with distinct layout or content structure.
- Pages with media, forms, tables, maps, or third-party content.
- Long, translated, and right-to-left content where supported.
- At least one instance of every shared interactive component.
- Every state that changes semantics or operation.
- Randomly selected ordinary pages in addition to deliberately selected pages.

Do not select only polished, public, or convenient pages.

A sample may support evaluation efficiency, but every page and process included in a formal WCAG claim remains subject to the full-page and complete-process conformance requirements.

## 5. Test complete processes

Critical processes include, where applicable:

- Contact or estimate request.
- Registration and sign-in.
- Password, account, or identity recovery.
- Client portal actions.
- Checkout or payment.
- File, photo, or document upload.
- Invitation and user management.
- Content creation, editing, preview, and publishing.
- Export or document generation.
- Destructive, legal, financial, or safety-related actions.
- Installation, first-run setup, permission denial, update, and offline recovery.

Test each process through:

- Entry and navigation.
- Normal success.
- Validation failure.
- Cancellation.
- Duplicate submission.
- Recoverable interruption.
- Session expiration and reauthentication.
- Permission denial where relevant.
- Final confirmation and recovery.

A complete process fails conformance when any required step fails.

## 6. Test environments

Record combinations of:

- Browser or embedded web view.
- Operating system.
- Screen reader.
- Keyboard only or hardware-key navigation.
- Mobile screen reader.
- Browser zoom, platform scaling, and magnification.
- Forced colors or high contrast.
- Speech input where relevant.
- Touch and coarse pointer.
- Reduced motion and other supported preferences.
- Native platform accessibility services.
- Declared document readers or media players.

Use [`browser-at-matrix.md`](browser-at-matrix.md) or a linked platform matrix.

## 7. Reusable ACT rules

A reusable automated or manual test procedure must follow [`act-rule-template.md`](act-rule-template.md).

Pin:

- Rule identifier and version.
- ACT Rules Format version.
- Implementation and version.
- Test subject.
- Test environment.
- Outcome.
- Evidence.

Use these outcomes without substitution:

```text
passed
failed
inapplicable
cantTell
untested
```

`cantTell` and `untested` are unresolved outcomes. They must not be treated as passes.

A passing rule does not establish that an entire WCAG criterion passes unless the rule explicitly tests every required condition.

## 8. Automated testing

Automated tools may evaluate:

- Selected semantic and ARIA errors.
- Machine-detectable contrast pairs.
- Missing labels or alternative-text decisions.
- Duplicate IDs and broken relationships.
- Selected HTML validity and structure issues.
- Some focus, keyboard, and responsive conditions when instrumented.
- Generated-output regressions.

Record:

- Tool and version.
- Configuration.
- Rules enabled and disabled.
- Pages and states reached.
- Browser or renderer.
- Known false-positive and false-negative conditions.
- Manual review required.

Automated results do not establish conformance.

## 9. Manual testing

At minimum, manually test:

- Keyboard navigation and operation.
- Focus visibility, order, restoration, and obscuration.
- Accessible names and visible-label alignment.
- Accessibility-tree exposure for custom controls.
- Dialogs, menus, tabs, disclosures, comboboxes, trees, grids, and listboxes.
- Error identification, correction, summaries, and redundant entry.
- Status announcements.
- Zoom, text resize, reflow, and text spacing.
- Pointer cancellation, dragging alternatives, gestures, and target size.
- Timing, interruption, automatic movement, and flashes.
- Captions, transcripts, descriptions, and media controls.
- Language and bidirectional behavior.
- Authentication and recovery.
- CAPTCHA or human-verification alternatives.
- Baseline behavior without enhancement scripts.
- Cognitive clarity for high-impact workflows.

## 10. Assistive-technology testing

Test primary workflows using the declared supported assistive technologies rather than inspecting markup alone.

Record:

- Name, role, state, value, and description.
- Reading and navigation order.
- Landmark and heading navigation.
- Form mode and validation behavior.
- Dynamic announcements.
- Focus movement.
- Table and grid navigation.
- Media operation.
- Custom-element and shadow-DOM exposure.
- Native/web-view focus transfer where applicable.

## 11. Cognitive and disabled-user evaluation

WDBASIC requires representative disabled-user evaluation for selected high-impact workflows when feasible and proportionate. This is a WDBASIC best-practice requirement, not a WCAG conformance requirement by itself.

Document:

- Participant access needs without collecting unnecessary medical information.
- Tasks performed.
- Environment.
- Barriers observed.
- Severity.
- Remediation decision.
- Retest result.

For cognitive evaluation, include purpose comprehension, memory burden, error recovery, predictability, help, pause/resume, and consequential-action understanding.

User evaluation complements but does not replace standards conformance testing.

## 12. Non-web software and document testing

When [`../non-web-accessibility.md`](../non-web-accessibility.md) applies:

- Identify the actual platform, procurement, regulatory, or format baseline.
- Use WCAG2ICT only as informative interpretation guidance.
- Test platform accessibility APIs and conventions.
- Test installation, permissions, offline behavior, and updates.
- Test exported documents in declared readers.
- Record web-content and native-shell findings separately.

Do not merge native-software results into a web WCAG claim without a valid, documented claim model.

## 13. Defect severity and conformance impact

Suggested operational severity:

- **Critical:** Prevents a primary process or creates material harm.
- **High:** Major barrier with no reasonable alternative.
- **Medium:** Significant friction or partial loss of information.
- **Low:** Limited barrier with a usable alternative.
- **Advisory:** Enhancement beyond the declared baseline.

A failed applicable WCAG criterion remains a conformance failure regardless of business severity.

Severity controls remediation priority; it does not change the standards outcome.

## 14. Evidence requirements

Retain:

- Scope and sampling rationale.
- WCAG matrix status.
- ACT ruleset and rule versions.
- Tool reports and configurations.
- Manual test notes.
- Browser, operating-system, web-view, and assistive-technology versions.
- Screenshots, recordings, accessibility-tree snapshots, or logs when useful.
- Reproduction steps.
- Issue links.
- Exceptions.
- Retest evidence.
- Evaluator and execution date.

Evidence must be reproducible and must not expose secrets or unnecessary personal data.

## 15. Conformance determination

Before a WCAG conformance result is `conformant`, verify:

- Every applicable A and AA matrix row passes.
- Full pages pass, including responsive variations.
- Complete processes pass.
- Relied-upon technologies are accessibility-supported.
- Non-conforming technologies do not interfere.
- `cantTell`, `untested`, `blocked`, and manual-pending results are resolved.
- The claim contains every required claim component.

Use `evaluated-nonconformant` when ordinary first-party failures remain.

Use a Statement of Partial Conformance only under the narrow third-party-content or language conditions defined in [`../STANDARDS.md`](../STANDARDS.md).

## 16. Final report

The final report states:

- Evaluation type.
- Scope.
- Standard and level.
- Non-web standards where applicable.
- Evaluation method.
- Technologies relied upon.
- Ruleset and versions.
- Environments tested.
- Conformance or evaluated status.
- Failures and affected workflows.
- Known limitations and workarounds.
- Partial-conformance statement, only when valid.
- Remediation owners.
- Evaluation date.
- Evidence location.

## 17. Retest triggers

Retest when:

- A shared component changes.
- Navigation or page shell changes.
- Authentication changes.
- A new profile, locale, theme, or platform is introduced.
- A custom element or web-view version changes.
- A major dependency changes.
- A third-party embed changes.
- An ACT rule or standards baseline changes.
- A user reports a barrier.
- A release affects a critical process.
- Export generation or document templates change.
