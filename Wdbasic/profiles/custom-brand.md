# WDBASIC Custom-Brand Profile

Use this profile when an existing brand system or market position does not fit another approved profile.

A custom profile changes visual expression; it does not replace WDBASIC core.

## Required profile record

Document:

- Brand purpose and audience.
- Desired attributes and attributes to avoid.
- Semantic color mapping.
- Typography and fallbacks.
- Spacing and density decisions.
- Radius, border, and shadow character.
- Iconography system.
- Photography or illustration rules.
- Motion rules.
- Component variations.
- Accessibility validation.
- Proof and content sources.

## Token mapping

Map brand values to semantic roles. Do not rename universal roles around a campaign, trade, or color.

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

Components must continue consuming semantic roles so the profile can change without rewriting component contracts.

## Typography

A custom type system must define:

- Display, body, and mono roles.
- System fallbacks.
- Size and line-height mapping.
- Weight availability.
- Font-loading behavior.
- Long-form line length.
- Mobile form-control sizing.

Fashion alone is not justification for a font choice.

## Color and contrast

Every real foreground/background pair must be tested. Brand colors that fail contrast may be retained for decoration but must not carry required text, control, status, or focus meaning.

## Components

Profile-specific variants may alter presentation but must preserve:

- Semantic HTML.
- Accessible names and states.
- Keyboard behavior.
- Server-rendered fallbacks.
- Loading, empty, error, success, and disabled states.
- Consistent action meaning.

## Motion

Motion must have a functional purpose, remain restrained, and respect reduced-motion preferences. Do not make primary comprehension or navigation depend on animation.

## Approval checklist

- Does the profile preserve all core token roles?
- Do contrast and focus requirements pass?
- Does the design remain usable at narrow widths and zoom?
- Do component semantics remain unchanged?
- Are logo and media rules documented?
- Are unsupported claims absent?
- Are exceptions explicit and narrowly scoped?
