# WDBASIC Field-Service Profile

> **Profile type:** Market-specific visual and conversion profile  
> **Core entry point:** [`../README.md`](../README.md)  
> **Token contracts:** [`../tokens/`](../tokens/)  
> **Component contract:** [`../components/component-contracts.md`](../components/component-contracts.md)

This profile applies to appointment-, estimate-, dispatch-, and project-based local service businesses such as exterior cleaning, flooring, restoration, HVAC, plumbing, electrical, landscaping, roofing, pest control, concrete, masonry, general contracting, and property maintenance.

This profile specializes WDBASIC core. It does not replace architecture, accessibility, security, truthful-content, or component requirements.

## 1. Activation record

An adopting project documents:

```yaml
profile:
  name: field-service
  audience: <residential-commercial-or-both>
  service_model: <appointment-estimate-dispatch-project>
  primary_conversion: <estimate-book-call-or-other>
  service_area_model: <radius-cities-counties-or-other>
  emergency_service: <verified-true-or-false>
  proof_sources: <path-or-record>
  profile_exceptions: []
```

Do not infer emergency availability, licensing, insurance, financing, warranty, or same-day service from the profile.

## 2. Brand position

The design should communicate:

- Competence.
- Reliability.
- Safety.
- Clear communication.
- Local availability.
- Practical expertise.
- Respect for property.
- Straightforward next steps.

Avoid appearing:

- Juvenile or novelty-driven.
- Excessively luxurious without market justification.
- Like a generic SaaS dashboard.
- Aggressively industrial when that tone does not fit the work.
- Trade-specific when the brand supports several service categories.
- Urgent or emergency-oriented when the business does not provide emergency service.

## 3. Suggested semantic mapping

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

These values are starting points only. Every foreground/background combination must satisfy [`../tokens/accessibility.md`](../tokens/accessibility.md) and [`../tokens/semantic-colors.md`](../tokens/semantic-colors.md).

## 4. Color use

- Dark navy or charcoal anchors headers, footers, major headings, and trust-oriented areas.
- White and light-neutral surfaces carry most content.
- A warm orange, amber, or gold may serve as the main action accent.
- Action color remains scarce enough to preserve hierarchy.
- Red is reserved for destructive actions, errors, or legitimate urgency.
- Green is reserved for confirmed success, availability, savings, or environmental meaning where accurate.
- Trade cues may adjust the palette but may not create inaccessible or trade-locked component names.

Controlled examples:

- HVAC may use restrained warm and cool cues.
- Landscaping may use deep green and earth accents.
- Electrical may use amber carefully for visibility.
- Premium flooring may use charcoal and restrained bronze.

Universal components continue to consume semantic roles.

## 5. Typography

Default recommendation:

```text
font-display: Inter
font-body: Inter
font-mono: approved system monospace stack
```

Public Sans, Roboto, Source Sans 3, and suitable system stacks are approved alternatives. A restrained serif display face may be used for a justified premium position.

Headings should be direct, substantial, easy to scan, and large enough to establish hierarchy without consuming the full mobile viewport.

Avoid:

- Decorative display faces that weaken legibility.
- Condensed all-capital body copy.
- Oversized hero text that hides contact and estimate actions.
- Technical jargon without plain-language explanation.

## 6. Logo and identity

A reusable field-service logo should be wordmark-first and must:

- Remain legible in a mobile header.
- Work as a favicon or app icon.
- Work in one color.
- Work on light and dark backgrounds.
- Reproduce on vehicles, uniforms, invoices, yard signs, and social profiles.
- Avoid fine details and gradient-dependent recognition.

Avoid generic multi-tool collages, detailed house illustrations, and undifferentiated shield-and-wrench marks.

A multi-service company should not use an identity that implies only one trade unless that is the deliberate primary market position.

## 7. Photography and media

Prioritize authentic operational imagery:

- Actual technicians and vehicles.
- Completed work.
- Before-and-after documentation.
- Equipment in realistic conditions.
- Clean work areas.
- Materials and process details.
- Team members with permission.

Avoid:

- Misleading stock imagery.
- Artificially exaggerated results.
- Geographic or climate mismatches.
- Services the business does not provide.
- Text-heavy graphics replacing indexable content.
- Unsafe work practices shown as promotional evidence.

Media records should identify source, permission, project, service, location when appropriate, and whether edits affect interpretation.

## 8. Trust architecture

Make it easy to verify:

- Services offered.
- Residential, commercial, or mixed scope.
- Service area.
- Phone and contact path.
- What happens after a request.
- Scheduling and communication process.
- Real project results.
- Real customer experience.
- Responsible company or operator.
- Verified licensing, insurance, warranty, guarantee, financing, or certification claims when applicable.

Unknown claims are hidden or represented as editable placeholders.

## 9. Public-site shell

Recommended shell:

- Optional compact utility bar for service area, hours, phone, or verified emergency availability.
- Main header with logo, primary navigation, phone access, and estimate or booking action.
- Mobile navigation with visible call or estimate access.
- Main content region with a clear page topic.
- Footer with company identity, services, service areas, contact information, hours, legal links, and maintained social links.
- Optional mobile sticky action bar when it does not obscure content or focus.

License, insurance, warranty, guarantee, financing, and emergency statements appear only when verified.

## 10. Homepage sequence

1. Outcome-focused hero with estimate and phone actions.
2. Compact verified trust strip.
3. Services organized around customer intent.
4. Benefits and differentiators.
5. Reviews, testimonials, or project proof.
6. Simple process explanation.
7. Featured case study or before-and-after proof.
8. Gallery preview when visual proof matters.
9. Service-area confirmation.
10. FAQ and objection handling.
11. Final contact or estimate section.

The hero should feel substantial but should not consume the complete initial viewport on common mobile devices.

The page should answer quickly:

- What does the company do?
- Does it serve this property and location?
- Why should the visitor trust it?
- What is the next step?
- What happens after contact?

## 11. Service navigation

Services should be organized around recognizable customer needs rather than internal departments.

Each service path should provide:

- Specific service name.
- Scope and exclusions.
- Suitable property or project types.
- Process.
- Benefits and limitations.
- Relevant proof.
- Service-area links.
- Clear estimate or contact action.

Avoid generic `Learn more` labels when a specific destination label is available.

## 12. Recommended components

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

All components follow [`../components/component-contracts.md`](../components/component-contracts.md).

## 13. Forms and conversion

Estimate and contact forms should:

- Ask only for information required to respond or qualify the request.
- Explain what happens next.
- Preserve user input after validation errors.
- Provide phone and non-form contact alternatives where appropriate.
- Distinguish estimate requests from confirmed bookings.
- Avoid fake countdowns, scarcity, or forced urgency.
- Provide clear attachment requirements when photos are accepted.
- Use proportionate spam and abuse prevention.

A form success message should identify whether the request was received, whether an email was sent, and the expected next step without promising an unverified response time.

## 14. Page templates

Support:

- Homepage.
- Services index.
- Service detail.
- Case-studies index and detail.
- About.
- Service-area index.
- Unique location pages.
- Gallery.
- Contact.
- Estimate request.
- Confirmation.
- Privacy policy.
- Terms.

Location pages must contain meaningful unique content and must not be thin doorway pages.

A location page should include real service relevance, operational context, internal links, contact options, and content that differs meaningfully from other locations.

## 15. Multi-service brands

A multi-service brand must:

- Use a navigation and service taxonomy that scales across categories.
- Avoid one-trade colors, icons, and terminology becoming universal component semantics.
- Clarify which services are primary, secondary, seasonal, or limited.
- Avoid presenting unsupported disaster restoration, regulated, or licensed work through broad wording.
- Keep conversion paths understandable when several service categories share one form.

## 16. Content rules

Prefer:

- Outcome-focused headings.
- Clear scope and exclusions.
- Practical process details.
- Property and service-area specificity.
- Plain-language next steps.
- Verified proof with context.

Avoid:

- “Best,” “number one,” or “world-class” without defensible evidence.
- Fake urgency or same-day promises.
- Unsupported eco-friendly, licensed, insured, guaranteed, or financing claims.
- Generic filler repeated across service and location pages.
- Wording that implies regulated or disaster-response services not actually offered.

## 17. Profile compliance checklist

- Is the audience and service model documented?
- Is the primary conversion action clear?
- Are phone and estimate actions easy to reach on mobile?
- Are service areas understandable and factual?
- Are trust claims verified?
- Is operational imagery authentic and permitted?
- Does the logo work at small size and in one color?
- Does the site support multi-service growth without trade-specific component names?
- Are location pages unique and useful?
- Does the hero preserve useful initial-viewport content?
- Are forms low-friction and explicit about next steps?
- Are accessibility, architecture, and component contracts still satisfied?
