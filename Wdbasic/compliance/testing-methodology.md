# WDBASIC Accessibility Evaluation Methodology

> **Purpose:** Repeatable conformance evaluation process  
> **Core entry point:** [`../README.md`](../README.md)  
> **Coverage matrix:** [`wcag-2.2-aa-matrix.md`](wcag-2.2-aa-matrix.md)

This methodology adapts WCAG evaluation principles to WDBASIC websites, portals, administrative applications, and authoring tools.

## 1. Define scope

Record:

- Product and version.
- Production or test environment.
- Included domains, routes, applications, and embedded content.
- Excluded content and reason.
- WCAG version and level.
- WDBASIC source revision.
- Active design profile.
- Relied-upon technologies.
- Evaluation dates.
- Evaluators and independent review where applicable.

A scope must be specific enough that another evaluator can reproduce it.

## 2. Explore the implementation

Inventory:

- Page templates.
- Primary navigation and search.
- Public and authenticated states.
- User roles.
- Complete processes.
- Forms and validation paths.
- Dialogs and composite widgets.
- Data tables.
- Media.
- Third-party embeds.
- HTMX fragments and live updates.
- Error, empty, loading, success, expired, forbidden, and offline states.
- Authoring interfaces and generated output.

## 3. Select a representative sample

Include:

- Every unique page and component type.
- Every critical business workflow.
- Pages with distinct layout or content structure.
- Pages with media, forms, tables, maps, or third-party content.
- Long, translated, and narrow-layout content.
- At least one instance of every shared interactive component.
- Randomly selected ordinary pages in addition to deliberately selected pages.

Do not select only polished or convenient pages.

## 4. Test complete processes

Critical processes include, where applicable:

- Contact or estimate request.
- Registration and sign-in.
- Password or account recovery.
- Client portal actions.
- Checkout or payment.
- File or photo upload.
- Invitation and user management.
- Content creation, editing, preview, and publishing.
- Destructive or legally consequential actions.

Every process is tested through success, validation failure, cancellation, and recoverable interruption.

## 5. Test environments

Record combinations of:

- Browser.
- Operating system.
- Screen reader.
- Keyboard only.
- Mobile screen reader.
- Browser zoom and magnification.
- Forced colors or high contrast.
- Speech input where relevant.
- Touch and coarse pointer.

Use [`browser-at-matrix.md`](browser-at-matrix.md).

## 6. Automated testing

Automated tools may evaluate:

- Some semantic and ARIA errors.
- Color contrast for machine-detectable pairs.
- Missing labels or alternative text.
- Duplicate IDs.
- Selected HTML validity and structure issues.

Automated results do not establish conformance. False positives, false negatives, dynamic states, and inaccessible-but-technically-valid patterns require review.

## 7. Manual testing

At minimum, manually test:

- Keyboard navigation and operation.
- Focus visibility, order, restoration, and obscuration.
- Accessible names and visible-label alignment.
- Dialogs, menus, tabs, disclosures, comboboxes, and listboxes.
- Error identification, correction, and summaries.
- Status announcements.
- Zoom, reflow, and text spacing.
- Pointer cancellation, dragging alternatives, and target size.
- Timing and automatic movement.
- Captions, transcripts, and media controls.
- Language and bidirectional behavior.
- Baseline behavior without enhancement scripts.

## 8. Assistive-technology testing

Test primary workflows using supported assistive technology rather than inspecting markup alone.

Record:

- Name, role, state, value, and description.
- Reading order.
- Landmark and heading navigation.
- Form mode and validation behavior.
- Dynamic announcements.
- Focus movement.
- Table navigation.
- Media operation.

## 9. Disabled-user evaluation

Representative testing with disabled users is strongly required for high-impact workflows and authoring tools.

Document:

- Participant access needs without collecting unnecessary medical information.
- Tasks performed.
- Environment.
- Barriers observed.
- Severity.
- Remediation decision.
- Retest result.

User research complements but does not replace standards conformance evaluation.

## 10. Defect severity

Suggested severity:

- **Critical:** Prevents a primary process or creates material harm.
- **High:** Major barrier with no reasonable alternative.
- **Medium:** Significant friction or partial loss of information.
- **Low:** Limited barrier with a usable alternative.
- **Advisory:** Enhancement beyond the declared conformance target.

A WCAG failure remains a conformance failure regardless of business severity.

## 11. Evidence

Retain:

- Test scope.
- Matrix status.
- Tool reports.
- Manual test notes.
- Browser and assistive-technology versions.
- Screenshots or recordings when useful.
- Reproduction steps.
- Issue links.
- Exceptions.
- Retest evidence.

Evidence must not expose secrets or unnecessary personal data.

## 12. Report

The final report states:

- Scope.
- Standard and level.
- Evaluation method.
- Technologies relied upon.
- Environments tested.
- Conformance result.
- Failures and affected workflows.
- Known limitations.
- Exceptions.
- Remediation owners.
- Evaluation date.

## 13. Retest triggers

Retest when:

- A shared component changes.
- Navigation or page shell changes.
- Authentication changes.
- A new profile or theme is introduced.
- A major dependency changes.
- A third-party embed changes.
- A standards baseline changes.
- A user reports a barrier.
- A release affects a critical process.
