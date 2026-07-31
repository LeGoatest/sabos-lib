# WDBASIC Field-Service Profile

This profile applies to appointment-, estimate-, dispatch-, and project-based local service businesses such as exterior cleaning, flooring, restoration, HVAC, plumbing, electrical, landscaping, roofing, pest control, concrete, masonry, general contracting, and property maintenance.

## Brand position

The design should communicate:

- Competence.
- Reliability.
- Safety.
- Clear communication.
- Local availability.
- Practical expertise.
- Respect for property.
- Straightforward next steps.

Avoid appearing juvenile, excessively luxurious, generically SaaS-like, or aggressively industrial without market justification.

## Suggested semantic mapping

```text
brand-primary:       #0F3D66
brand-secondary:     #1F6FB2
action-primary:      #C2410C
surface:             #FFFFFF
surface-muted:       #F8FAFC
text-primary:        #0F172A
text-secondary:      #334155
border:              #CBD5E1
success:             #166534
warning:             #A16207
danger:              #B91C1C
focus:               #2563EB
```

These values are starting points only. Every foreground/background combination must satisfy the accessibility contract.

## Color use

- Dark navy or charcoal anchors headers, footers, major headings, and trust-oriented areas.
- White and light-neutral surfaces carry most content.
- A warm orange, amber, or gold may serve as the main action accent.
- Action color remains scarce enough to preserve hierarchy.
- Red is reserved for destructive actions, errors, or legitimate urgency.
- Green is reserved for confirmed success, availability, savings, or environmental meaning where accurate.

## Typography

Default recommendation:

```text
font-display: Inter
font-body: Inter
font-mono: approved system monospace stack
```

Public Sans, Roboto, Source Sans 3, and suitable system stacks are approved alternatives. A restrained serif display face may be used for a justified premium position.

Headings should be direct, substantial, easy to scan, and large enough to establish hierarchy without consuming the full mobile viewport.

## Logo

A reusable field-service logo should be wordmark-first and must:

- Remain legible in a mobile header.
- Work as a favicon or app icon.
- Work in one color.
- Work on light and dark backgrounds.
- Reproduce on vehicles, uniforms, invoices, yard signs, and social profiles.
- Avoid fine details and gradient-dependent recognition.

Avoid generic multi-tool collages, detailed house illustrations, and undifferentiated shield-and-wrench marks.

## Photography

Prioritize authentic operational imagery:

- Actual technicians and vehicles.
- Completed work.
- Before-and-after documentation.
- Equipment in realistic conditions.
- Clean work areas.
- Materials and process details.

Avoid misleading stock imagery, artificially exaggerated results, geographic mismatches, and text-heavy graphics replacing indexable content.

## Public-site shell

Recommended shell:

- Optional compact utility bar for service area, hours, phone, or verified emergency availability.
- Main header with logo, primary navigation, phone access, and estimate or booking action.
- Footer with company identity, services, service areas, contact information, hours, legal links, and maintained social links.

License, insurance, warranty, and guarantee statements appear only when verified.

## Homepage sequence

1. Outcome-focused hero with estimate and phone actions.
2. Compact trust strip.
3. Services organized around customer intent.
4. Benefits and differentiators.
5. Reviews, testimonials, or project proof.
6. Simple process explanation.
7. Featured case study or before-and-after proof.
8. Gallery preview when visual proof matters.
9. Service-area confirmation.
10. FAQ.
11. Final contact or estimate section.

The hero should feel substantial but should not consume the complete initial viewport on common mobile devices.

## Recommended components

- Utility bar.
- Main header and mobile navigation.
- Homepage and interior heroes.
- Proof strip and review summary.
- Service, benefit, testimonial, and case-study cards.
- Process steps.
- Before-and-after block.
- Gallery grid.
- Service-area list.
- FAQ disclosure.
- Contact panel and estimate form.
- CTA banner.
- Breadcrumbs and pagination.
- Loading, empty, error, and success states.
- Mobile sticky action bar when it does not obscure content.

## Page templates

Support homepage, services index, service detail, case studies, about, service-area index, unique location pages, gallery, contact, estimate request, confirmation, privacy policy, and terms.

Location pages must contain meaningful unique content and must not be thin doorway pages.
