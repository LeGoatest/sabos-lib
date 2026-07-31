# WDBASIC Non-Web and Native Accessibility Contract

> **Authority:** Binding when WDBASIC governs native software, hybrid shells, or non-web documents  
> **Core entry point:** [`README.md`](README.md)  
> **Web accessibility dependency:** [`tokens/accessibility.md`](tokens/accessibility.md)  
> **Standards registry:** [`STANDARDS.md`](STANDARDS.md)

This contract governs native desktop and mobile applications, hybrid applications using embedded web views, exported documents, and custom viewers or media players.

W3C's WCAG2ICT guidance explains how WCAG 2.2 concepts can be applied to non-web software and documents. WCAG2ICT is informative guidance, not an independent conformance standard. An adopting project must select any applicable legal, contractual, platform, procurement, or format-specific accessibility baseline in addition to WDBASIC.

## 1. Applicability

This contract applies to:

- Native desktop applications.
- Native mobile applications.
- Wails or similar web-view application shells.
- Installed software with web-rendered interfaces.
- Generated PDF, office-document, or EPUB output.
- Custom document readers, browsers, media players, or embedded viewers.
- Offline packages and locally installed help systems.

A website merely installed as a PWA remains web content unless platform-specific software behavior materially changes the interface.

## 2. Conformance boundaries

Record separately:

- Web-content conformance.
- Native shell and platform-interface accessibility.
- Native mobile accessibility.
- Non-web document accessibility.
- Closed-functionality limitations.
- Third-party platform or viewer limitations.

Do not claim WCAG web-page conformance for native software as though WCAG directly defines a native-software conformance model.

Use WCAG2ICT to interpret applicable WCAG intent, then identify the actual standard, regulation, procurement requirement, or product contract used for the non-web claim.

WCAG2Mobile may inform mobile evaluation while it remains a Draft Note. It is not a stable W3C standard or an independent conformance baseline.

## 3. Platform accessibility services

Native and hybrid interfaces must expose information through the accessibility services provided by the operating system.

Every interactive object must expose, as applicable:

- Name.
- Role or control type.
- State.
- Value.
- Description.
- Relationships.
- Action availability.
- Selection and focus.
- Validation or error state.

Custom-drawn controls, canvas content, and embedded rendering surfaces must provide an equivalent accessible object model or an accessible alternative.

## 4. Platform conventions

Follow platform conventions for:

- Keyboard and hardware-key navigation.
- Focus indication.
- Screen-reader gestures.
- Back, close, escape, and cancellation behavior.
- Context menus and standard commands.
- Text selection, copy, and paste.
- Window and dialog behavior.
- Notifications.
- Permission requests.
- File selection and sharing.
- Platform navigation bars and system gestures.

A custom interaction must not remove an accessible platform behavior without an equivalent.

## 5. Hybrid and web-view applications

For Wails and similar shells:

- Web-rendered content remains subject to the WDBASIC web accessibility contract.
- Native title bars, menus, tray controls, permission prompts, and file dialogs are part of the application accessibility scope.
- Focus transfer between native chrome and web content is predictable.
- Keyboard shortcuts do not conflict with screen readers or platform commands.
- Browser zoom restrictions do not prevent platform text scaling or application-level magnification.
- Deep links, refresh, offline, and restart behavior preserve task context where practical.
- The embedded web view exposes the accessibility tree correctly on each supported platform.
- Platform-specific defects are recorded in the browser and assistive-technology matrix.
- Updating the embedded engine triggers regression review of custom elements, dialogs, focus, input, and live regions.

Do not assume that accessible browser behavior automatically remains accessible inside every embedded web view.

## 6. Native mobile applications

Native mobile applications must evaluate:

- Platform screen-reader gestures and focus order.
- Hardware keyboard and switch access where supported.
- Touch target size and spacing.
- Orientation and device rotation.
- Dynamic type, font scaling, display zoom, and magnification.
- Reduced motion, contrast, color, and transparency preferences.
- Accessible labels, hints, traits, states, actions, and values.
- System back navigation and predictable dismissal.
- On-screen keyboard effects on focus and viewport.
- Notifications and deep-link destinations.
- Camera, location, media, file, contact, and biometric permission flows.
- Alternatives to complex gestures, dragging, shaking, or device motion.
- Authentication, one-time-code, password-manager, and recovery behavior.
- Offline and interrupted-network recovery.

WCAG2Mobile Draft Note guidance may be mapped to these tests, but the project must record the exact draft date and must not present that mapping as formal conformance.

## 7. Text, scaling, contrast, and user preferences

Software supports applicable platform settings for:

- Text scaling and magnification.
- High contrast or forced colors.
- Reduced motion.
- Reduced transparency.
- Dark or light appearance when supported.
- Screen orientation.
- Keyboard access.
- Touch target size.
- Bold text and other platform readability settings where available.

Content must not clip, overlap, or lose functionality at supported text and display scaling levels.

## 8. Navigation and focus

- Focus order follows task and reading order.
- Every operable control can receive and visibly indicate focus where the platform exposes focus.
- Focus is not trapped except in a correctly implemented modal surface.
- Opening and closing temporary surfaces moves and restores focus predictably.
- Virtualized lists and data grids preserve accessible position, count, selection, and scrolling context.
- Background updates do not steal focus.
- Window or view restoration returns users to a meaningful location where practical.
- Screen-reader focus and visual focus do not diverge without a documented platform reason.

## 9. Device features and permissions

Camera, microphone, location, contacts, storage, notifications, motion, and biometric features require:

- A clear task-related explanation before the system prompt.
- An accessible conventional control.
- Understandable denial and recovery behavior.
- A non-motion alternative where applicable.
- No dependence on color, gesture precision, or transient instructions alone.
- Privacy handling under [`security-and-privacy.md`](security-and-privacy.md).

A platform permission prompt must not be triggered before the user understands why access is requested.

A denied permission must not leave the user in an unlabeled, empty, or unrecoverable state.

## 10. Offline, installation, and updates

Installation, first-run setup, updates, migration, offline states, and recovery are part of the product experience.

They must provide:

- Accessible progress and status.
- Clear errors and recovery actions.
- Keyboard, screen-reader, and platform-control operation.
- Preservation of user data where promised.
- Understandable restart or update requirements.
- No inaccessible blocking splash screen.
- A method to obtain accessibility help when setup fails.
- A rollback or recovery path when an update prevents access.

## 11. Non-web documents

Every exported non-web document selects and documents a format-specific accessibility baseline.

At minimum preserve:

- Document title and language.
- Reading order.
- Headings and lists.
- Table headers and relationships.
- Link purpose.
- Alternative text.
- Form labels and instructions when forms are supported.
- Color and contrast.
- Reflow or text scaling supported by the format and viewer.
- Metadata required by the selected format standard.

An image-only PDF or flattened visual export is prohibited when an accessible structured document is expected.

## 12. EPUB output

EPUB output follows the applicable W3C EPUB specification and EPUB Accessibility standard selected by the project.

The export record identifies:

- EPUB version.
- EPUB Accessibility version.
- WCAG version and level used by the publication.
- Accessibility metadata.
- Navigation and reading-order validation.
- Media-overlay and alternative-content handling.
- Reading-system combinations tested.

## 13. PDF and office-document output

For PDF or office formats, select the applicable format-specific accessibility standard or procurement requirement.

The generation process must not silently discard semantic source information. When a target format cannot preserve a required feature, the tool warns the author and provides an accessible alternative or another export format.

## 14. Custom viewers and user agents

A product that renders web content or documents as a browser, reader, media player, or custom viewer should apply UAAG 2.0 as informative guidance.

Evaluate:

- Accessibility of the viewer's own interface.
- Exposure of rendered content to assistive technology.
- Text, color, zoom, media, and motion controls.
- Navigation and search.
- User style and preference support.
- Control over autoplay, time, and focus.
- Compatibility with platform accessibility services.
- Recovery when rendered content is inaccessible or malformed.

UAAG 2.0 is a W3C Working Group Note, not a W3C Recommendation, and must be represented accordingly.

## 15. Testing

Test each supported platform and output format with:

- Keyboard or hardware-key operation.
- Platform screen reader.
- Platform text scaling and magnification.
- High-contrast settings.
- Reduced motion.
- Touch, gestures, and orientation changes.
- Permission denial and recovery.
- Authentication and CAPTCHA alternatives.
- Offline and restart behavior.
- Installation and update flows.
- Exported documents in declared readers or viewers.
- Native/web-view focus transfer.
- Custom elements inside the embedded engine.

Record results in [`compliance/browser-at-matrix.md`](compliance/browser-at-matrix.md) or a linked platform matrix.

## 16. Adoption record

```yaml
non_web_accessibility:
  applicable: true | false
  product_types: []
  wcag2ict_guidance_used: true | false
  wcag2mobile_guidance_used: true | false
  wcag2mobile_draft_date: <date-or-none>
  platform_baselines: []
  document_formats: []
  format_standards: []
  embedded_webviews: []
  custom_viewer: true | false
  uaag_guidance_used: true | false
  test_matrix: <path>
  known_limitations: []
  owner: <role>
  last_reviewed: <ISO-8601-date>
```
