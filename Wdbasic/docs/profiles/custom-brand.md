# WDBASIC Custom-Brand Profile

> **Profile type:** Controlled exceptional-brand profile  
> **Core entry point:** [`../README.md`](../README.md)  
> **Token contracts:** [`../tokens/`](../tokens/)  
> **Component contract:** [`../components/component-contracts.md`](../components/component-contracts.md)

Use this profile when an established brand system, audience, or market position does not fit another approved profile.

A custom profile changes visual expression; it does not replace WDBASIC core, architecture, accessibility, security, truthful-content, or component contracts.

## 1. Activation criteria

Use this profile only when at least one of the following is documented:

- An existing governed brand system must be preserved.
- The organization serves a market not covered by another approved profile.
- A product family requires a distinct but interoperable visual identity.
- A documented audience need conflicts with the assumptions of an existing profile.

Do not select `custom-brand` merely to avoid semantic tokens, accessibility requirements, or component reuse.

## 2. Required activation record

```yaml
profile:
  name: custom-brand
  reason: <why-an-existing-profile-is-insufficient>
  audience: <primary-audience>
  brand_source: <path-or-reference>
  token_mapping: <path>
  component_variants: <path-or-none>
  proof_sources: <path-or-record>
  accessibility_validation: <path-or-command>
  approver: <owner-or-role>
  review_condition: <date-release-or-condition>
  profile_exceptions: []
```

An incomplete activation record means the profile is not approved.

## 3. Required profile record

Document:

- Brand purpose and audience.
- Desired attributes and attributes to avoid.
- Existing identity assets and ownership.
- Semantic color mapping.
- Typography and fallbacks.
- Spacing and density decisions.
- Radius, border, shadow, and layer character.
- Iconography system.
- Photography or illustration rules.
- Motion rules.
- Component variations.
- Accessibility validation.
- Proof and content sources.
- Alternate-theme behavior when supported.
- Exceptions and review conditions.

## 4. Token mapping

Map brand values to semantic roles. Do not rename universal roles around a campaign, trade, department, or literal color.

Correct:

```text
brand-primary: #4B2E83
action-primary: #B45309
surface-muted: #F8F7FC
```

Incorrect:

```text
purple-company-color
fall-campaign-orange
homepage-gray
```

Components continue consuming semantic roles so the profile can change without rewriting component contracts.

A mapping record should identify:

- Raw brand value.
- Semantic role.
- Intended foreground or surface pairing.
- State variants.
- Contrast result.
- Where the role is permitted.

## 5. Typography

A custom type system defines:

- Display, body, UI, and mono roles.
- System fallbacks.
- Size and line-height mapping.
- Weight availability.
- Font-loading behavior.
- Long-form line length.
- Mobile form-control sizing.
- Language and character coverage.
- Licensing and distribution constraints.

Fashion alone is not justification for a font choice.

A distinctive display face must not become the body or control face when it weakens clarity.

## 6. Color and contrast

Every real foreground/background pair is tested.

Brand colors that fail contrast may be retained for decoration but must not carry required text, control, status, selection, or focus meaning.

The profile defines:

- Light and alternate surfaces.
- Text hierarchy.
- Link and action states.
- Focus and selection colors.
- Status colors and surfaces.
- Disabled state.
- Media overlays.
- Forced-colors behavior where relevant.

Do not mechanically invert a light palette to create a dark theme.

## 7. Shape, density, and elevation

Document:

- Base spacing rhythm.
- Section spacing.
- Content widths.
- Control sizing.
- Radius character.
- Border treatment.
- Shadow and elevation use.
- Layer ordering.
- Compact or comfortable density modes.

A custom profile may be visually distinctive without introducing arbitrary spacing, radius, or z-index values.

## 8. Components

Profile-specific variants may alter presentation but preserve:

- Semantic HTML.
- Accessible names and states.
- Keyboard behavior.
- Server-rendered fallbacks.
- Loading, empty, error, success, disabled, and read-only states.
- Consistent action meaning.
- Token-driven styling.
- HTMX fragment reconstructability.

A variant record identifies:

- Base component.
- Reason for variation.
- Changed tokens or layout.
- Unchanged semantics and behavior.
- Responsive impact.
- Accessibility validation.

Do not fork a universal component solely to create a cosmetic difference that tokens can express.

## 9. Logo and identity assets

Document:

- Primary and alternate logos.
- One-color variants.
- Minimum size.
- Clear space.
- Light and dark usage.
- Favicon or app-icon treatment.
- Asset source and permission.
- Reproduction constraints.

The logo must remain usable in navigation, documents, social profiles, and other required media.

Do not depend on gradients, animation, or fine detail for recognition unless a simpler approved fallback exists.

## 10. Iconography

Choose one documented system or a controlled combination.

Define:

- Outline, solid, or hybrid usage.
- Stroke weight and corner treatment.
- Size and alignment.
- Filled or selected state.
- Decorative versus meaningful icons.
- Accessible labels for icon-only actions.
- Brand-specific custom-icon criteria.

Do not mix unrelated icon families without a documented reason.

## 11. Photography and illustration

Document:

- Preferred subjects.
- Composition and crop behavior.
- Editing limits.
- Color treatment.
- Illustration style.
- Permissions and attribution.
- Prohibited misleading or irrelevant imagery.
- Accessibility and alternative-text expectations.

Media supports evidence, understanding, or brand position. It must not replace necessary HTML content.

## 12. Motion

Motion must have a functional purpose, remain restrained, and respect reduced-motion preferences.

Document:

- Permitted transitions.
- Duration and easing ranges.
- Loading or progress motion.
- Disclosure and modal motion.
- Reduced-motion fallback.
- Prohibited decorative animation.

Do not make primary comprehension, navigation, or action completion depend on animation.

## 13. Content and proof

A custom visual identity does not permit custom truth standards.

- Claims remain specific and supportable.
- Reviews, logos, awards, credentials, and statistics require sources and permission.
- Placeholder proof is clearly editable and hidden by default when unsupported.
- Content tone is documented without encouraging fake urgency, prestige, or scarcity.
- Case studies and before-and-after evidence remain accurate.

## 14. Compatibility

A custom profile should remain compatible with shared WDBASIC components and product shells.

Document any difference affecting:

- Component dimensions.
- Navigation structure.
- Density.
- Media ratios.
- Theme switching.
- Print or document output.
- White-label or multi-brand use.
- Backward compatibility.

A profile that requires rewriting universal component semantics is a framework change, not merely a custom profile.

## 15. Approval checklist

- Is the reason for custom profile activation documented?
- Does the profile preserve all core token roles?
- Do real contrast and focus combinations pass?
- Does the design remain usable at narrow widths and zoom?
- Do component semantics and behavior remain unchanged?
- Are logo, icon, media, and motion rules documented?
- Are font licensing and language coverage acceptable?
- Are unsupported claims absent?
- Are exceptions explicit, owned, and narrowly scoped?
- Is the profile source revision pinned?
- Is there an approver and review condition?

A custom profile without a complete mapping and approval record is non-conformant.
