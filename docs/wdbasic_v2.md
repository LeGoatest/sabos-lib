# WDBASIC v2 Governance, Design, and Framework Contract

This document defines **WDBASIC v2**. It is a binding implementation contract, not optional guidance.

WDBASIC v2 preserves the original WDBASIC architecture while extending it with measurable accessibility requirements, semantic design tokens, brand-governance rules, conversion standards, and an evidence-informed field-service design profile.

---

## 1. Framework Role

WDBASIC is the authoritative framework for:

- Public marketing surfaces, including websites, landing pages, service pages, location pages, conversion funnels, and campaign destinations.
- Product surfaces, including layouts, navigation, sidebars, administrative screens, portals, and dashboards.
- Reusable server-rendered UI components, including heroes, proof sections, service cards, case studies, FAQs, forms, alerts, and calls to action.
- Shared visual and interaction standards across products built within the platform.

WDBASIC prioritizes:

1. Declarative HTML.
2. Server-rendered pages and fragments.
3. Progressive enhancement.
4. Search visibility.
5. Accessibility.
6. Performance.
7. Conversion clarity.
8. Reusable components.

---

## 2. Authority and Relationship to Other Rules

This document is subordinate to `ARCHITECTURE_RULES.md`.

When rules conflict:

1. `ARCHITECTURE_RULES.md` wins.
2. WDBASIC v2 governs presentation, conversion structure, accessibility, and component behavior.
3. An approved product-specific design profile may customize appearance but may not override architecture, accessibility, security, or semantic requirements.

---

## 3. Non-Negotiable Architecture Rules

### 3.1 SEO-first rendering

Every public page MUST:

- Render its primary content as complete server-generated HTML.
- Remain readable and indexable without JavaScript execution.
- Use crawlable anchor links for primary navigation.
- Expose meaningful service, category, article, project, and location links in the HTML response.
- Use one clear primary heading unless a documented exception is required.

JavaScript-generated primary content is prohibited.

### 3.2 HTMX-first interaction

Interactivity MUST use HTMX when the server can reasonably own the interaction.

Appropriate HTMX uses include:

- Form submission.
- Validation feedback.
- Pagination.
- Filtering.
- Search results.
- Sort controls.
- Tab or panel content.
- Inline editing.
- Load-more behavior.
- Server-confirmed status changes.
- Modal contents retrieved from the server.

Every HTMX interaction MUST have a usable server-rendered fallback where practical.

### 3.3 Minimal JavaScript

JavaScript is permitted only when the behavior is local, stateless, and unsuitable for a server round trip.

Permitted examples include:

- Opening and closing a mobile menu.
- Toggling a local dropdown.
- Managing a modal focus trap.
- Enhancing an accessible image lightbox.
- Integrating an external service that cannot operate through HTMX alone.

JavaScript MUST NOT become the owner of page content, routing, authentication state, business state, or persistent application state.

### 3.4 Component modularity

All major interface elements MUST be reusable server-side components or fragments.

A component MUST:

- Have a clear responsibility.
- Accept explicit input data.
- Avoid hidden global dependencies.
- Preserve semantic HTML.
- Work independently where practical.
- Support loading, empty, error, success, disabled, hover, focus, and active states when relevant.

### 3.5 Progressive enhancement

The baseline experience MUST work with:

- HTML.
- Normal links.
- Normal form submission.
- Server responses.

HTMX and JavaScript may improve the experience but MUST NOT be required to understand or complete primary public workflows.

---

## 4. WDBASIC Layering Model

WDBASIC separates universal rules from industry-specific visual decisions.

```text
WDBASIC Core
├── Architecture contract
├── Accessibility contract
├── Semantic design-token contract
├── Component contract
├── Conversion contract
├── Content and trust contract
└── Design profiles
    ├── Field Service
    ├── Professional Services
    ├── Healthcare
    ├── Retail
    └── Custom Brand
```

The WDBASIC core MUST NOT require one universal color palette, font family, logo style, or photography treatment for every product.

A design profile maps the semantic system to an appropriate market, brand position, and audience.

---

## 5. Semantic Design Tokens

WDBASIC implementations MUST use semantic roles rather than embedding unexplained visual values throughout components.

Required color roles:

```text
brand-primary
brand-secondary
action-primary
action-primary-hover
action-secondary
surface
surface-muted
surface-strong
text-primary
text-secondary
text-inverse
border
border-strong
focus
success
warning
danger
info
```

Required typography roles:

```text
font-display
font-body
font-mono
text-xs
text-sm
text-base
text-lg
text-xl
text-heading-sm
text-heading-md
text-heading-lg
text-display
```

Required spacing and shape roles:

```text
space-section-sm
space-section-md
space-section-lg
content-narrow
content-default
content-wide
radius-control
radius-card
radius-panel
shadow-card
shadow-elevated
```

### Token rules

- Components MUST reference semantic roles rather than trade-specific names such as `plumber-blue` or `roofing-orange`.
- Token values MUST be centrally configurable.
- Color roles MUST be evaluated in their actual foreground/background combinations.
- A design profile may alter token values without changing component semantics.
- State tokens MUST include hover, focus, active, disabled, error, and success behavior where applicable.
- No information may be communicated by color alone.

---

## 6. Styling Standards

- Tailwind CSS, or an explicitly approved utility-first system, is the primary styling mechanism.
- Components MUST remain understandable without tracing a large inheritance chain.
- Repeated values MUST be promoted into approved tokens, utilities, or component abstractions.
- Unbounded one-off values SHOULD be avoided.
- Custom CSS is allowed only when required for:
  - Design-token definitions.
  - Third-party integrations.
  - Browser behavior that is not reasonably expressible through approved utilities.
  - Carefully documented shared primitives.
- Product components MUST NOT depend on decorative effects that require complex client-side animation.

Avoid by default:

- Glassmorphism.
- Neon effects.
- Excessive gradients.
- Heavy parallax.
- Decorative animation dependencies.
- Low-contrast text.
- Extremely large empty sections.
- Unnecessary dashboard-style card grids on marketing pages.
- Visual novelty that weakens comprehension or conversion.

---

## 7. Typography Contract

Typography MUST prioritize readability, hierarchy, and reliable rendering.

### 7.1 Baseline requirements

- Default body text SHOULD be `16px` to `18px`.
- Form controls and primary buttons MUST use text of at least `16px` on mobile.
- Body line height SHOULD remain between `1.5` and `1.65`.
- Long-form text SHOULD target approximately `50` to `75` characters per line.
- Ultra-light body weights are prohibited.
- Extended all-capital text is prohibited.
- Headings MUST use a clear, consistent scale.
- Font loading MUST not hide essential content.
- System fallbacks MUST be defined.

### 7.2 Font-family guidance

A robust sans-serif family is the default for interfaces and service-business websites.

Recommended broadly applicable options include:

- Inter.
- Public Sans.
- Roboto.
- Source Sans 3.
- A carefully defined system-font stack.

A serif display face may be introduced only when it supports the brand position and does not reduce clarity. A common controlled pairing is a sans-serif body family with a restrained serif display family.

Typography MUST NOT depend on a font solely because it is fashionable.

---

## 8. Accessibility Contract

WDBASIC implementations MUST target WCAG 2.2 AA where practical.

### 8.1 Contrast

- Normal text MUST meet at least `4.5:1` contrast.
- Large text MUST meet at least `3:1` contrast.
- Important controls, focus indicators, and meaningful graphical objects MUST meet at least `3:1` contrast against adjacent colors.
- Placeholder text MUST NOT be the sole visible label.

### 8.2 Interaction

- Interactive targets SHOULD be at least `44px` by `44px`.
- All controls MUST be keyboard operable.
- Focus states MUST be clearly visible.
- Focus MUST not be hidden behind sticky headers, banners, or bottom bars.
- Hover-only disclosure is prohibited for essential information.
- Disabled controls MUST remain understandable.

### 8.3 Structure

- Heading order MUST be logical.
- Form controls MUST have programmatically associated labels.
- Field errors MUST be associated with the relevant fields.
- Error summaries SHOULD link to invalid fields.
- Meaningful images MUST include appropriate alternative text.
- Decorative images MUST not create screen-reader noise.
- Components MUST preserve logical source order across responsive breakpoints.

### 8.4 Resilience

Interfaces MUST be tested for:

- Browser zoom.
- Increased text spacing.
- Reduced motion.
- Keyboard-only use.
- Screen-reader navigation.
- High-contrast conditions where supported.
- Narrow layouts near `320px` CSS width.

---

## 9. Conversion-First Architecture

Where conversion is an appropriate page objective, layouts MUST follow this sequence or a documented equivalent:

1. **Outcome-focused hero** — clear value proposition, immediate next action, and direct contact option where relevant.
2. **Immediate trust signal** — concise proof strip, credentials, availability, service area, or other verified reassurance.
3. **Services or solutions** — recognizable paths based on user intent.
4. **Benefits and differentiation** — customer problems, implications, solution, and expected outcome.
5. **Project proof** — reviews, testimonials, case studies, documented work, or other substantiated evidence.
6. **Process** — what happens next and what the customer must do.
7. **Service-area or eligibility confirmation** — geographic, operational, or audience fit.
8. **FAQ and objection handling** — practical answers to decision-blocking questions.
9. **Final conversion section** — contact details, estimate request, booking action, or another explicit next step.

Calls to action SHOULD recur at natural decision points without becoming aggressive or repetitive.

The exact color of a button is secondary to:

- Clear wording.
- Strong contrast.
- Appropriate placement.
- Consistent meaning.
- Low-friction completion.
- Credible surrounding content.

---

## 10. Trust and Proof Contract

Trust architecture generally has greater impact than decorative branding alone.

Public service-business pages SHOULD make the following easy to verify:

- What services are offered.
- Where the company operates.
- How to contact the company.
- What happens after a request.
- Whether licensing, insurance, certifications, warranties, or guarantees apply.
- What completed work looks like.
- What real customers experienced.
- Who is responsible for the work.
- How scheduling and communication operate.

### 10.1 Proof rules

- Do not fabricate review counts, ratings, credentials, awards, customer logos, licenses, guarantees, or statistics.
- Unverified proof MUST be represented as an editable placeholder in templates.
- Testimonials SHOULD include enough context to be credible when consent permits.
- Case studies SHOULD describe the initial condition, work performed, and result.
- Before-and-after media MUST not misrepresent the project.
- Trust badges MUST have a defined source and meaning.

---

## 11. Content Contract

Content MUST be concise, credible, specific, and oriented toward user decisions.

Avoid unsupported language such as:

- “Best in the industry.”
- “World-class.”
- “Revolutionary.”
- “Number one” without defensible evidence.
- Fake scarcity.
- Fake urgency.
- Unsupported guarantees.

Preferred content characteristics:

- Outcome-focused headings.
- Clear service definitions.
- Direct descriptions of process and scope.
- Honest qualification language.
- Plain-language next steps.
- Local and operational specificity where relevant.
- Explicit placeholders when evidence is not yet available.

---

## 12. Fragment Strategy

WDBASIC uses the Universal View Theory:

- The shell is the persistent container.
- Components are units of content and interaction.
- The server owns application state.
- HTMX swaps server-rendered fragments in response to user intent or server events.

### 12.1 Fragment requirements

Each swappable fragment SHOULD define:

- Its rendering responsibility.
- Its input contract.
- Its target container.
- Loading behavior.
- Empty behavior.
- Error behavior.
- Success behavior.
- Focus behavior after replacement.
- Browser-history behavior where relevant.

Fragments MUST NOT silently depend on client-side state that the server cannot reconstruct.

---

## 13. Forms and Conversion Controls

Forms MUST:

- Use visible labels.
- Group related fields.
- Preserve submitted values after recoverable validation errors.
- Display inline errors and an error summary for complex forms.
- Explain required formats before submission where practical.
- Provide a clear success state.
- Avoid unnecessary fields.
- Provide normal server submission even when enhanced through HTMX.
- Include appropriate abuse prevention without creating unreasonable user friction.

Primary calls to action MUST:

- Use action-oriented, specific text.
- Visually distinguish themselves from secondary actions.
- Maintain consistent meaning across the site.
- Remain available at relevant mobile decision points.
- Never rely solely on color to communicate priority.

---

## 14. Responsive Contract

WDBASIC layouts MUST be designed for content priority rather than desktop compression.

Required behavior:

- Preserve semantic source order.
- Stack sections logically.
- Avoid compressed multi-column card layouts.
- Keep forms readable and touch-friendly.
- Preserve access to primary calls to action.
- Prevent sticky controls from obscuring page content.
- Avoid hiding important content on mobile.
- Use responsive images with stable dimensions to reduce layout shift.

Recommended evaluation widths include:

- Large desktop around `1440px`.
- Standard desktop around `1280px`.
- Tablet around `768px`.
- Mobile around `390px`.
- Narrow resilience testing around `320px`.

---

## 15. Performance and Search Contract

Public pages MUST support:

- Semantic HTML.
- Crawlable navigation.
- One primary page topic.
- Appropriate breadcrumbs.
- Indexable FAQ content.
- Meaningful internal linking.
- Canonical URL control.
- Page-title and description management.
- Open Graph metadata.
- Structured-data placement where applicable.
- Responsive image sources.
- Explicit image dimensions.
- Lazy loading below the fold.
- Minimal layout shift.
- Minimal render-blocking assets.
- No essential text embedded only inside images.

Performance budgets SHOULD be defined per product rather than assumed.

---

# Part II — Field-Service Design Profile

The Field-Service Design Profile applies to broadly reusable contractor and mobile-service brands, including:

- General contractors.
- HVAC services.
- Plumbing.
- Electrical services.
- Landscaping.
- Exterior cleaning.
- Flooring.
- Restoration.
- Property maintenance.
- Pest control.
- Roofing.
- Concrete and masonry services.
- Other appointment-, estimate-, or dispatch-based local businesses.

This profile is a default starting point, not a universal visual law.

---

## 16. Field-Service Brand Position

The default field-service brand SHOULD communicate:

- Competence.
- Reliability.
- Safety.
- Clear communication.
- Local availability.
- Practical expertise.
- Respect for property.
- Straightforward next steps.

It SHOULD avoid appearing:

- Overly luxurious.
- Playful or juvenile.
- Like a generic SaaS dashboard.
- Aggressively industrial without market justification.
- Trade-specific when the brand must support multiple service categories.

---

## 17. Field-Service Color Profile

Blue, navy, charcoal, white, and restrained warm accents form a broadly applicable default because they create a familiar trust-and-action hierarchy across many service categories.

Suggested semantic mapping:

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

These values are starting points only. Every foreground/background pair MUST be tested for the required contrast.

### 17.1 Color-use rules

- Dark navy or charcoal SHOULD anchor headers, footers, major headings, and trust-oriented areas.
- White and light neutral surfaces SHOULD carry most content.
- Warm orange, amber, or gold MAY be used as the primary action accent.
- The action color SHOULD remain visually scarce enough to preserve hierarchy.
- Red SHOULD generally be reserved for destructive actions, errors, or legitimate urgency.
- Green SHOULD generally be reserved for confirmed success, availability, savings, or environmental meaning where accurate.
- Industry convention MAY modify the palette when the trade has strong user expectations.

### 17.2 Trade-specific adjustments

Possible controlled variations include:

- **HVAC:** navy or blue with restrained red/amber temperature cues.
- **Plumbing:** blue or teal with neutral technical accents.
- **Electrical:** navy, charcoal, and amber or yellow used carefully for visibility.
- **Landscaping:** deep green, slate, and warm earth accents.
- **Restoration:** navy or charcoal with urgent but controlled orange/red accents.
- **Roofing and general contracting:** dark blue, charcoal, steel, and warm action accents.
- **Premium finishing or flooring:** charcoal, navy, muted bronze, or restrained gold.

Trade cues MUST NOT reduce accessibility or make the system difficult to reuse.

---

## 18. Field-Service Typography

Recommended default:

```text
font-display: Inter
font-body: Inter
font-mono: ui-monospace or approved system stack
```

Approved alternatives include Public Sans, Roboto, Source Sans 3, or a system UI stack.

A controlled premium variation may pair a readable serif display face, such as Merriweather, with a sans-serif body family.

Field-service headings SHOULD be:

- Direct.
- Substantial.
- Easy to scan.
- Free from ornamental treatment.
- Large enough to establish hierarchy without consuming the entire viewport.

---

## 19. Field-Service Logo Contract

A broadly reusable field-service logo SHOULD be wordmark-first.

Required properties:

- Legible at mobile-header size.
- Recognizable as a favicon or app icon.
- Functional in one color.
- Functional on light and dark backgrounds.
- Reproducible on vehicles, uniforms, invoices, yard signs, and social profiles.
- Simple enough for embroidery and vinyl production.
- Distinct without relying on gradients or fine detail.

Preferred construction:

- A clear wordmark.
- One restrained symbol or monogram.
- Optional descriptor line when needed for market clarity.

Avoid:

- Collages of multiple tools.
- Highly detailed houses, skylines, or equipment.
- Generic shield-and-wrench combinations without meaningful differentiation.
- Thin details that disappear at small sizes.
- Gradient-dependent recognition.
- Excessive badge text.

---

## 20. Iconography Contract

Field-service iconography SHOULD use one consistent system.

- Choose either outline, solid, or a controlled hybrid with documented rules.
- Keep stroke weight and corner treatment consistent.
- Use familiar symbols for phone, location, schedule, estimate, guarantee, gallery, and service categories.
- Pair icons with text for important actions.
- Do not use icons as decoration when they add no meaning.
- Do not communicate status by icon color alone.

Trade-specific icons MAY clarify services, but they MUST remain understandable at small sizes.

---

## 21. Photography and Media Contract

Authentic operational imagery is preferred over generic stock photography.

Preferred subjects include:

- Actual technicians or operators.
- Branded vehicles.
- Completed projects.
- Before-and-after documentation.
- Equipment in realistic working conditions.
- Clean work areas.
- Materials and process details.
- Customers or occupied properties only with appropriate permission.

Media SHOULD reinforce evidence, service scope, and professionalism.

Avoid:

- Irrelevant stock models.
- Misleading project imagery.
- Artificially extreme before-and-after edits.
- Images that contradict the geographic market or actual services.
- Text-heavy promotional graphics replacing indexable content.

All project imagery SHOULD include:

- Stable dimensions.
- Responsive sizes.
- Appropriate alternative text.
- Captions or contextual labels where useful.
- Documented permission and attribution when required.

---

## 22. Field-Service Layout Profile

The default public-site shell SHOULD include:

### Utility bar

Optional compact information such as:

- Service area.
- Business hours.
- Phone number.
- Legitimate emergency availability.

### Main header

- Logo.
- Primary navigation.
- Phone access where appropriate.
- Prominent estimate or booking action.
- Clear active-page state.
- Mobile menu with a visible call or estimate action.

### Footer

- Company identity.
- Service links.
- Service-area links.
- Contact information.
- Hours.
- Legal links.
- Social links where maintained.
- License or insurance statement only when verified.

---

## 23. Field-Service Homepage Sequence

A broadly applicable homepage SHOULD contain:

1. Hero with an outcome-focused heading, supporting copy, primary estimate action, and direct phone action.
2. Compact trust strip.
3. Services or “What can we help with?” section.
4. Benefits and differentiators.
5. Reviews, testimonials, or project proof.
6. Simple process explanation.
7. Featured case study or before-and-after proof.
8. Gallery preview where visual proof is important.
9. Service-area confirmation.
10. FAQ.
11. Final contact and estimate section.

The hero SHOULD feel substantial but SHOULD NOT consume the complete initial viewport on common mobile devices.

---

## 24. Field-Service Component Profile

Recommended reusable components include:

- Utility bar.
- Main header.
- Mobile navigation.
- Footer.
- Homepage hero.
- Interior hero.
- Proof strip.
- Review summary.
- Testimonial card.
- Service card.
- Benefit card.
- Process steps.
- Case-study card.
- Before-and-after block.
- Gallery grid.
- Service-area list.
- FAQ disclosure.
- Contact-details panel.
- Estimate form.
- CTA banner.
- Breadcrumbs.
- Pagination.
- Alert.
- Empty state.
- Loading state.
- Error state.
- Success state.
- Mobile sticky action bar.

Every component MUST remain compatible with server rendering and HTMX fragment replacement.

---

## 25. Field-Service Page Templates

The profile SHOULD support reusable templates for:

- Homepage.
- Services index.
- Service detail.
- Case-studies index.
- Case-study detail.
- About.
- Service-area index.
- Individual service-area page.
- Gallery.
- Contact.
- Estimate request.
- Thank-you confirmation.
- Privacy policy.
- Terms of service.

Location pages MUST contain meaningful unique content and MUST NOT be generated as thin doorway pages.

---

## 26. Implementation Governance

Each WDBASIC implementation SHOULD document:

- The active design profile.
- Semantic token values.
- Typography choices and fallbacks.
- Component inventory.
- Conversion objective by page type.
- Accessibility checks.
- Structured-data strategy.
- Image and proof sources.
- Any approved exceptions.

An implementation is not WDBASIC-compliant merely because it uses Tailwind or HTMX. Compliance requires adherence to the architecture, semantic, accessibility, content, conversion, and component contracts defined here.

---

## 27. Recommended Repository Structure

```text
docs/
├── wdbasic_v2.md
├── architecture_rules.md
├── profiles/
│   ├── field-service.md
│   ├── professional-services.md
│   └── custom-brand.md
├── tokens/
│   ├── semantic-colors.md
│   ├── typography.md
│   ├── spacing.md
│   └── accessibility.md
└── components/
    └── component-contracts.md
```

The field-service guidance may remain in this contract initially and later be extracted into `docs/profiles/field-service.md` without changing its authority.

---

## 28. Compliance Checklist

A WDBASIC v2 implementation MUST be able to answer “yes” to the following:

### Architecture

- Is primary public content server-rendered?
- Is the page usable without JavaScript?
- Is server-owned interaction HTMX-first?
- Are components reusable server-side fragments?

### Semantics and accessibility

- Are semantic tokens used consistently?
- Do text and controls meet contrast requirements?
- Are keyboard focus states visible?
- Are form labels and errors programmatically associated?
- Does responsive source order remain logical?

### Conversion and trust

- Is the user’s next action clear?
- Are services and service areas immediately understandable?
- Is proof real, contextual, and non-fabricated?
- Does the page explain what happens next?
- Are calls to action repeated only at relevant decision points?

### Performance and search

- Can search engines reach all primary content and links?
- Are images responsive and dimensioned?
- Is essential text represented as HTML?
- Is layout shift minimized?
- Are metadata, canonical controls, and structured-data locations defined?

### Field-service profile, when applicable

- Does the brand communicate competence, reliability, and clarity?
- Does the logo work at small size and in one color?
- Is authentic project or operational imagery prioritized?
- Are phone and estimate actions easy to reach on mobile?
- Are color and typography choices accessible and reusable across trades?

---

## 29. Final Principle

WDBASIC v2 treats branding as a governed system rather than a collection of decorative choices.

Architecture establishes reliability. Semantic tokens establish consistency. Accessibility establishes usability. Proof establishes credibility. Conversion structure establishes direction. The selected design profile establishes the appropriate visual character for the market without weakening any of the core contracts.