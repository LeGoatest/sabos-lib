# WDBASIC Component Contracts

> **Authority:** Binding reusable-component and fragment contract  
> **Core entry point:** [`../README.md`](../README.md)  
> **Architecture dependency:** [`../architecture_rules.md`](../architecture_rules.md)  
> **Accessibility dependency:** [`../tokens/accessibility.md`](../tokens/accessibility.md)  
> **Cognitive dependency:** [`../cognitive-accessibility.md`](../cognitive-accessibility.md)

This document governs reusable server-rendered components, form controls, actions, custom elements, composite widgets, and HTMX fragments.

## 1. Component definition

A component is a reusable unit of content or interaction with:

- A clear responsibility.
- Explicit input data.
- Semantic markup.
- Defined state variants.
- Predictable styling hooks.
- No hidden global dependency.
- A stable accessibility contract.
- A documented fallback when enhanced.
- A defined rendering boundary.

A fragment is a server-rendered component response intended for replacement inside an existing shell.

A page section may compose multiple components but must not become a hidden client-side application boundary.

## 2. Required component record

Document or make evident:

- Component name and purpose.
- Owning domain or package.
- Input contract.
- Required and optional fields.
- Output and event behavior.
- Semantic root element.
- Child and slot structure.
- Token dependencies.
- State variants.
- Rendering mode: server HTML, custom element, shadow DOM, native wrapper, or mixed.
- HTMX target and swap behavior when applicable.
- Focus behavior.
- Accessible name, description, role, value, and state requirements.
- Accessibility-tree expectations.
- Empty, loading, error, success, conflict, and unavailable behavior.
- Baseline fallback behavior.
- Version or deprecation status when shared across products.

Recommended record:

```yaml
component:
  name: service-card
  purpose: Link a user to one service detail page
  owner: content
  rendering: server-html
  root: article
  inputs:
    required: [title, url]
    optional: [summary, image, proof]
  states: [default, hover, focus-visible, unavailable]
  tokens: [surface, text-primary, border, radius-card, shadow-card]
  fallback: normal-anchor-navigation
  accessibility:
    name_source: visible-link-text
    relationships: []
    tree_expectation: link-nested-in-article
  cognitive:
    primary_task: choose-a-service
    memory_dependency: none
  htmx: null
  version: 1.0.0
```

## 3. Required states

Implement when relevant:

```text
default
hover
focus-visible
active
selected
expanded
collapsed
disabled
loading
empty
error
success
read-only
unavailable
pending
conflict
expired
offline
```

Do not implement only the visually ideal state.

A state must have consistent semantic, visual, keyboard, cognitive, and server behavior. A visual state class must not contradict native, ARIA, platform, or server state.

## 4. Markup and naming

Use semantic HTML first. Styling classes describe component or structural intent.

Recommended convention:

```text
component
component__element
component--variant
.is-state
.has-condition
```

Rules:

- Universal components use stable semantic names.
- Product wrappers may add a namespace without renaming the underlying contract.
- State classes represent state, not appearance.
- Data attributes expose behavior hooks or data identity, not authorization.
- IDs are unique and generated predictably when a component can repeat.
- Visible labels remain available to speech input and sighted users.
- DOM order remains meaningful without styling.

JavaScript may toggle state classes and attributes; it may not own component appearance through generated utility strings.

## 5. Tailwind ownership

- Repeated component styling belongs in the canonical input stylesheet.
- Universal primitives precede component contracts.
- Feature-specific variants follow universal components.
- Markup contains short semantic class lists.
- Raw CSS is reserved for token definitions, pseudo-elements, complex effects, browser behavior, and documented exceptions.
- Responsive behavior for repeated components belongs in the stylesheet.
- Component variants consume semantic tokens rather than raw palette values.

The repository-specific organization pattern is defined in [`../../docs/TAILWIND_PATTERN.md`](../../docs/TAILWIND_PATTERN.md).

## 6. Server rendering

A component renders a complete valid state from server data. The server can reconstruct any fragment state without hidden browser-only information.

Primary content must not depend on a client template to become meaningful.

Server rendering determines:

- Visibility and permission.
- Current, selected, checked, pressed, expanded, and invalid state.
- Canonical URLs.
- User-safe error and empty outcomes.
- Verified proof and claims.
- Whether an action is available.
- Language and direction.
- IDs and relationships.

Client code may improve continuity but may not invent authoritative state.

## 7. Composition rules

Components may compose other components when:

- Responsibilities remain identifiable.
- Inputs remain explicit.
- Nested interactive controls are valid.
- Focus and announcement behavior remain predictable.
- Token and profile dependencies remain semantic.
- Cognitive purpose and task sequence remain clear.
- The composition does not duplicate an existing universal contract.

Avoid deeply nested wrappers that exist only to reproduce a visual mockup.

Do not place interactive controls inside other interactive controls.

A composite must not hide the name, error, state, or permission contract of its child components.

## 8. Custom elements and shadow DOM

Use a custom element only when native HTML and an ordinary server-rendered component cannot reasonably provide the required reusable behavior.

A custom-element record must define:

- Host element name.
- Upgrade behavior.
- Pre-upgrade and failed-upgrade fallback.
- Light-DOM and shadow-DOM responsibilities.
- Slot contract.
- Accessible name and description source.
- Role, state, value, and relationship exposure.
- Keyboard and focus behavior.
- Form participation when applicable.
- Browser and assistive-technology support evidence.
- Server-rendered fallback.

### Pre-upgrade behavior

Before JavaScript upgrades the element:

- Primary content remains understandable.
- Links and forms remain usable where required.
- The element does not expose a misleading incomplete control.
- Layout shift is controlled.
- The user is not required to act before the upgrade completes.

### Shadow DOM rules

Shadow DOM must not conceal required semantics or relationships.

- Slotted content preserves logical reading order.
- Focus delegation and tab order are deliberate and tested.
- IDs referenced across boundaries are valid for the selected implementation and support baseline.
- Labels and descriptions reach the actual exposed control.
- Host and internal semantics do not create duplicate or conflicting roles.
- Hidden internal controls are not reachable.
- Error, help, and status content remains exposed.
- Forced-colors, text scaling, zoom, and user styles remain effective where applicable.

Do not assume source markup determines the computed accessibility tree.

### ElementInternals and form-associated elements

When `ElementInternals` or form-associated custom elements are used:

- Role, state, value, validity, name, and form value remain synchronized.
- Label association is tested.
- Required, disabled, read-only, invalid, reset, restore, and submission behavior is documented.
- Server validation remains authoritative.
- Browser and assistive-technology support is recorded.
- A native or ordinary form-control fallback exists when the supported baseline cannot expose the control reliably.

A custom form control is prohibited when it cannot match the complete behavior of the appropriate native control.

## 9. Accessibility-tree contract

For every interactive or semantically complex shared component, define the expected accessibility-tree output:

- Role or control type.
- Name source.
- Description source.
- State and value.
- Parent and child relationships.
- Position and count when relevant.
- Focused and selected object.
- Live-region or status exposure.

Validate the computed result in supported browsers and assistive technologies. DOM inspection alone is insufficient for custom elements, shadow DOM, canvas, SVG, native wrappers, or browser-specific semantics.

Draft accessibility-API mapping documents may inform debugging but must be represented according to [`../STANDARDS.md`](../STANDARDS.md).

## 10. HTMX fragment contract

Each fragment defines:

- Trigger.
- Request method.
- Request inputs.
- Authorization and CSRF requirements.
- Target.
- Swap strategy.
- Loading indicator.
- Busy state.
- Empty result.
- Validation, conflict, or request error.
- Success result.
- Focus destination.
- Announcement behavior.
- History behavior.
- Language and direction behavior.
- Correct title or current-navigation behavior when relevant.
- Baseline full-response path.

A normal server response path remains available where practical.

Fragments must:

- Return correct HTTP status and headers.
- Avoid duplicate IDs.
- Preserve or deliberately restore focus.
- Return truthful native and ARIA state.
- Remain reconstructable through a direct server request.
- Avoid replacing the complete document body for ordinary navigation.
- Reinitialize custom elements without duplicating listeners or corrupting state.
- Preserve slotted content and relationships after replacement.

## 11. Accessibility

Components preserve:

- Correct native semantics.
- Accurate accessible names and descriptions.
- Keyboard operation.
- Visible and unobscured focus.
- Correct expanded, selected, pressed, checked, invalid, busy, current, and modal state.
- Valid ID relationships.
- Logical source and focus order.
- Appropriate live announcements.
- Adequate target size.
- Zoom and narrow-screen usability.
- Speech-input compatibility where applicable.
- Platform accessibility exposure in native or hybrid shells.

Icon-only controls require names. Decorative icons are hidden from assistive technology. Partial ARIA widget implementations are prohibited.

See [`../tokens/accessibility.md`](../tokens/accessibility.md).

## 12. Cognitive clarity

Components follow [`../cognitive-accessibility.md`](../cognitive-accessibility.md).

They must:

- Have one identifiable purpose.
- Use consistent labels and placement for the same function.
- Expose consequences before destructive or high-impact actions.
- Preserve context during loading, errors, and multi-step interaction.
- Avoid unnecessary interruption or hidden instructions.
- Provide explicit recovery and next actions.
- Avoid requiring memory of transient content.

## 13. Forms

Reusable form controls define:

- Label.
- Control.
- Name and submitted value.
- Hint.
- Required or optional status.
- Format constraints.
- Error association.
- Disabled and read-only behavior.
- Loading behavior when submission is pending.
- Success confirmation.
- Autocomplete behavior where applicable.
- Redundant-entry behavior in multi-step processes.

Validation remains server-authoritative.

A field component must not hide the actual native control unless the replacement preserves complete keyboard, focus, name, value, form, validation, reset, and error behavior.

Example:

```html
<div class="form-field" data-state="error">
  <label class="form-field__label" for="email">Email address</label>
  <p class="form-field__hint" id="email-hint">We will send the estimate confirmation here.</p>
  <input
    class="form-input"
    id="email"
    name="email"
    type="email"
    autocomplete="email"
    aria-describedby="email-hint email-error"
    aria-invalid="true"
  >
  <p class="form-field__error" id="email-error">Enter a valid email address.</p>
</div>
```

## 14. CAPTCHA and human verification

A CAPTCHA or proof-of-humanity component must define:

- Accessible alternatives for visual, audio, cognitive, and motor access.
- Clear instructions.
- Keyboard operation.
- Error and retry behavior.
- Data preservation after failure.
- Third-party failure fallback.
- Privacy and telemetry behavior.
- Bot-defense behavior that does not rely on disability-hostile interaction as the only path.

A challenge that blocks the only submission path without an accessible alternative is non-conformant.

## 15. Actions

Action variants retain consistent meaning:

```text
primary
secondary
tertiary or ghost
destructive
link
icon-only
toggle
```

Rules:

- Primary action means the preferred next step in the current context.
- Only one action in a local decision group is normally primary.
- Destructive actions use explicit wording and confirmation proportionate to impact.
- Color alone does not communicate destructive meaning.
- Disabled actions explain unavailable state when the reason is not obvious.
- Loading actions prevent duplicate effects without erasing the action label.
- Toggle actions expose pressed or checked state as appropriate.
- Pointer actions occur on release or provide cancellation, abort, or undo where required.

## 16. Navigation components

Navigation components use real links for destinations.

They define:

- Current-page state.
- Keyboard and focus behavior.
- Mobile open and closed states.
- Escape and focus restoration when a disclosure is used.
- Complete link availability without JavaScript.
- Service, category, article, and location links meaningful to users and search engines.
- Consistent help and account-control placement.

Ordinary website navigation must not use ARIA menu roles.

## 17. Dialogs, disclosures, and composite widgets

A custom interactive pattern must implement the complete applicable behavior described in [`../tokens/accessibility.md`](../tokens/accessibility.md).

Required documentation includes:

- Native element or ARIA pattern selected.
- Keyboard commands.
- Focus entry and exit.
- Open, closed, selected, or expanded state.
- Relationship IDs.
- Escape and dismissal behavior.
- Baseline or fallback behavior.
- Accessibility-tree expectation.
- Support matrix.

Do not ship a partially implemented tab, menu, dialog, accordion, combobox, tree, grid, or listbox pattern.

## 18. Feedback and status components

Alerts, notices, toasts, progress, and status regions define:

- Severity and meaning.
- Whether the message interrupts the user.
- Dismissal behavior.
- Persistence.
- Focus behavior.
- Live-region behavior.
- Recovery or next action.

Use assertive announcements only when immediate attention is required. Do not repeatedly announce the same status.

A toast must not be the only location of critical instructions or irreversible-action results.

## 19. Media components

Image, gallery, before-and-after, video, and lightbox components define:

- Alternative text or decorative treatment.
- Dimensions and responsive source behavior.
- Caption and attribution.
- Keyboard controls.
- Focus behavior.
- Reduced-motion behavior.
- Permission and proof source where applicable.

Before-and-after components must not exaggerate or misrepresent results.

## 20. Responsive behavior

Components preserve semantic source order, avoid hiding essential information, maintain touch-friendly controls, and define how layouts stack at narrow widths.

Responsive behavior belongs in the stylesheet for repeated components.

A desktop table or grid must not become mobile cards if doing so destroys header, label, source-order, or comparison relationships.

## 21. Content integrity

Components displaying reviews, credentials, ratings, metrics, guarantees, licenses, badges, prices, availability, accessibility claims, or customer identities require verified source data.

Missing proof is hidden or represented as an editable placeholder, never fabricated.

A component should make the source or context of important proof available when that improves credibility or interpretation.

## 22. Versioning and deprecation

Shared component contract changes document compatibility impact.

A deprecated component defines:

- Replacement component.
- Migration guidance.
- Compatibility period.
- Removal condition.
- Known accessibility or behavior differences.
- Evidence and ACT rules requiring re-execution.

Do not maintain two universal components for the same responsibility without a documented migration or product distinction.

## 23. Validation matrix

Review applicable behavior under:

- Default server-rendered response.
- Pre-upgrade custom-element state.
- Failed JavaScript upgrade.
- No JavaScript.
- HTMX success.
- HTMX validation or conflict failure.
- Network or server failure.
- Empty data.
- Long and translated content.
- Right-to-left layout where supported.
- Keyboard-only use.
- Screen-reader navigation.
- Accessibility-tree inspection.
- Speech input where applicable.
- Zoom and increased text spacing.
- Forced colors and reduced motion.
- Narrow width near `320px`.
- Duplicate rendering on the same page.
- Unauthorized or unavailable action.
- Native web-view embedding where applicable.
- CAPTCHA provider failure where applicable.

Reusable procedures follow [`../compliance/act-rule-template.md`](../compliance/act-rule-template.md).

## 24. Review checklist

- Is the component reusable rather than page-bound without reason?
- Are inputs explicit?
- Is markup semantic?
- Are all relevant states implemented?
- Are tokens semantic?
- Does it work without JavaScript where required?
- Is pre-upgrade and failed-upgrade behavior usable?
- Is HTMX state reconstructable by the server?
- Are names, roles, states, focus, relationships, and announcements correct?
- Does the computed accessibility tree match the contract?
- Do custom elements and shadow DOM preserve labels, slots, focus, and form behavior?
- Does the component remain understandable without unnecessary memory or hidden context?
- Does it remain usable at narrow widths and zoom?
- Are HTTP, validation, and authorization outcomes correct?
- Is displayed proof factual?
- Is any deprecation or compatibility impact documented?
- Were affected rules and evidence re-run?
