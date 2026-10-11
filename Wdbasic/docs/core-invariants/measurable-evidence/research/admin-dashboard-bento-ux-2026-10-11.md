# Modern Dashboard and Administration UI/UX — Evidence Review (2026-10-11)

> **Status:** Research and visual-reference synthesis; informative, not a binding WDBASIC contract.  
> **Reviewed:** 2026-10-11  
> **Scope:** Role-based web application dashboards, administration surfaces, bento-style layouts, and responsive data-heavy interfaces.  
> **Companion evaluation guide:** [Administration and Dashboard UX](../../../experience-evaluation/admin-dashboard-ux.md)  
> **Existing authority:** [WDBASIC core invariants](../../README.md), [usability evaluation](../../../experience-evaluation/usability.md), and [WCAG 2.2 AA matrix](../../accessibility/compliance/wcag-2.2-aa-matrix.md).

## Provenance and evidence boundaries

This record is an **independently assembled research snapshot** based on seven screenshot references supplied by the user on 2026-10-11 and the linked external guidance below. The separate Deep Research app report was not retrieved for direct ingestion when this record was written. Do not call this document a copy, verified export, or complete substitute for that pending report. Reconcile any later report against this snapshot before promoting further conclusions.

Evidence labels used here:

- **[Visual observation]** — directly recognizable styling/composition in the supplied screenshots, not proof of real application behavior or accessibility.
- **[External guidance]** — interpretation of a named source in the source register.
- **[Practitioner recommendation]** — proposed starting point for an implementation; tune and test for its users, data, technology, and brand.
- **[External requirement]** — requirements from an applicable formal standard, preserving its exact scope.

No usability study, task completion experiment, contrast audit, browser test, or accessibility conformance test was performed on the screenshot designs. Screenshot crops and design-gallery images cannot prove responsive behavior or working interactions. The source links and descriptions are retained in lieu of copying third-party artwork into the repository.

## Executive findings

1. **Use bento as a presentation layout, not an information architecture.** Variable-size cards are effective for mixed-priority summaries when each card has a deliberate informational or operational function. An arbitrary mosaic is not a replacement for a consistent admin shell, resource views, or detail pages. [Visual observation; Practitioner recommendation]
2. **Separate overview, monitoring, analysis, and administration.** A dashboard should answer a small number of time-relevant questions; detailed records, permissions, forms, search, and bulk actions belong in dedicated workspaces. Nielsen Norman Group explicitly distinguishes glanceable dashboards from broader portals and operational from analytical dashboards. [External guidance: S1]
3. **Design around the user's next decision or task, not around metrics available from APIs.** A KPI without a time window, definition, comparison, or action context is decoration. Charts should reveal a meaningful relationship and support drilldown. [External guidance: S1, S2, S3]
4. **Treat the design system as the shared contract for every screen.** Content surfaces, spacing, typography, icons, form controls, navigation, chart styles, interactive states, and responsive patterns must remain consistent. The visual language may vary between a dark admin console and a camera/capture surface, but the interaction rules should not drift arbitrarily. [External guidance: S4, S5, S7; Practitioner recommendation]
5. **Usability and accessibility outrank visual-fashion fidelity.** Low-contrast annotations, tiny status chips, gradients behind text, hover-only controls, and dense unlabeled iconography are recurring risks in visual showcases. The screenshots cannot establish compliance. [Visual observation; External requirement: S8; External guidance: S5]

## Visual-reference analysis — the supplied seven screenshots

| Reference | Visible visual language | Patterns worth exploring | Risks / cautions |
|---|---|---|---|
| **BrandPacks: light bento infographic** (image 1) | White/off-white canvas, gentle pastel lavender/mint gradients, floating rounded tiles and soft shadows, varied tile spans, prominent KPI figures, narrow smart-device rows. | Small-to-large modular tile hierarchy; generous separation; dashboard cards combining a metric, context, and supporting detail; restrained color families. | Several labels and secondary figures are very small; overlapping cards and gradients can reduce contrast; editorial composition is not necessarily a viable responsive app. |
| **Dribbble: purple health dashboard** (image 2) | Strong purple background, alternate saturated and pale tiles, very dark chart surfaces, oversized numerals, green trend chips, editorial motivational image card. | Clearly differentiated key metrics; aligned columns; metric+trend pairs; visual grouping of charts and summary cards. | Background saturation competes with data; green-only success states and labels may be inaccessible; editorial cards should not displace urgent tasks. |
| **Bento Grids: dark workflow/automation stats** (image 3) | Charcoal surfaces, thin borders, subtle grids, large white figures, subdued labels, nonuniform rectangular modules, restrained blue/purple accents. | Cohesive dark data-monitoring direction; metric-centric hierarchy; dense content without every panel shouting. | Very muted small text and ornamental line work may be difficult to read; showcase metrics do not demonstrate discoverable workflows. |
| **Bento Grids: dark financial analytics** (image 4) | Near-black chart panels, discrete purple/blue series, consistent card boundaries, compact legends and comparative figures. | Stable cards for data visualization, shared data palette, separation of adjacent analytical blocks. | Dense axes and small legends, difficult series distinction, and potentially misleading dual-axis chart comparisons need explicit review. |
| **Figma: tenant/home components** (images 5–7) | Dark gray exhibition canvas with separate white, black, and pastel-accent cards; utility charts, property summaries, bills, service tiles, filters, high-contrast CTAs. | Transaction/action cards; consistent internal card padding; compact form filters; distinct list/detail/utility modules; mobile-portrait composition. | These are component-board crops, not proof that all cards form one coherent app screen; changing card theme randomly can undermine hierarchy; filters and CTAs need task-state behavior. |

**Cross-reference visual grammar [Visual observation]:** 8-point-ish rhythm, simple sans-serif hierarchy, large numeric KPIs, card subdivisions, selective high-chroma accents, radius-based grouping, mixed card spans, clear negative space, lightweight iconography. Exact design-token measurements are not recoverable from compressed screenshots; suggested measurements below are *new proposals*, not extracted specifications.

## 1. Information architecture and task flow

### Distinguish page purposes

| Surface | Primary question | Appropriate layout |
|---|---|---|
| **Overview dashboard** | What changed, what needs attention, and where do I go next? | A limited set of KPI tiles, exceptions, activity, and shortcuts; optional bento spans. |
| **Operations queue** | Which item needs action now? | Searchable/filterable list or table, status, priority, ownership, batch actions, details. |
| **Analytical report** | What pattern or cause explains performance? | Charts with filters, definitions, comparisons, drilldowns, export when needed. |
| **Resource directory** | Which customer, user, location, device, or record do I need? | Search, saved filters, sortable list/table, predictable detail navigation. |
| **Resource detail** | What is true of this item and what can I change? | Header summary, related sections, history, permissions, visible actions. |
| **Settings / administration** | What configuration or permission can I safely change? | Forms and structured sections with clear save/unsaved/validation states. |
| **Primary field task** | What do I do now? | Task-first focused view, not the admin dashboard by default. |

[External guidance: S1, S6, S7; Practitioner recommendation]

**Role-based IA.** Field users, managers, owners, and platform administrators may share components but need different default routes, actions, and navigation visibility. Authorization must be server-enforced, not inferred from hiding menus. A camera-first workflow should remain camera-/location-first for permitted roles rather than being displaced by an administrative overview. This is an illustrative cross-project example, not a PhotoSync implementation claim.

**Consistent shell.** A typical authenticated admin shell has a product identity, primary navigation, a single page title, breadcrumbs only when depth warrants them, a contextual action area, main content, and global account/help controls. Primary and contextual actions must not compete. Side navigation may be persistent on desktop and a dismissible drawer on compact screens. Do not create a second permanent bottom navigation merely for visual symmetry if it repeats the sidebar.

## 2. Composition, hierarchy, and bento-card sizing

- Start with information priority and scan order. Put urgent exception/failed-sync/action-required information before ornamental trends. Group closely related KPIs and operations. [S1]
- Use card sizes to reflect relative attention, not arbitrary visual variety: e.g., 1× compact stat, 2× trend, 2× queue, full-width table/issue list. Do not allow one prominent promotional illustration to overwhelm work-critical information. [Practitioner recommendation]
- A card should answer: **What is this? What is its value/state? Compared with what/time period? What action or drilldown is available?** Not all cards require an action; every actionable card needs a discernible label.
- Reuse a small family of card treatments: standard surface, subtle-emphasis surface, warning/error surface, and one intentional promotional/editorial treatment *only when appropriate*. Avoid a new gradient, radius, and shadow on every tile.
- Prefer whitespace and border contrast to deep stacked shadows in professional consoles. Hover elevation is not a substitute for focus visibility.
- Keep page-level actions outside card chrome unless they genuinely act on that card. Menu buttons are accessible controls with names, not ornamental ellipses.
- Use empty cells intentionally; do not fill a grid simply to mimic a Dribbble composition.

## 3. Data visualization and KPI integrity

- **Metric contract [Practitioner recommendation]:** label, definition, unit, period/time zone, source/last-updated, comparison basis, direction-of-goodness, freshness, permission sensitivity, and optional detail destination. For operational metrics include threshold and current attention state.
- Show counts as integers with understandable separators. Show rates/percentages with denominator or a readily accessible definition; avoid false precision and misleading month-on-month percentages.
- Use **line** charts for change over ordered time; **bars** for discrete comparison/ranking; **stacked** charts only when composition and total matter; **tables** when exact comparison or inspection is essential. Gauge/donut charts are selective, not interchangeable decorations. [S2, S3]
- Avoid inconsistent baseline, truncated axes without clear indication, gratuitous 3D, excessive category colors, and unlabeled dual axes. Tie legends or direct labels to the marks users must understand. [S2, S3]
- Provide a readable summary and/or underlying accessible data table for charts. Do not rely on color alone for semantic differences; pair color with text, shape, line styles, direct labels, or position. [S5, S8]
- Show trend context (“vs previous 30 days”, “target 95%”) and a relevant interval selector; synchronize intervals across related cards or label differences clearly.
- Show missing/stale data honestly; do not default missing values to zero or render a success chip for an unknown state.

## 4. Administration interaction patterns

**Tables / collections.** Match component to task: a resource list helps identify an object and navigate to its details; a data table supports structured cross-row comparison. Provide column headings, stable sorting, usable text search, relevant filters, total/result counts, paging or bounded virtualization, row details, selection feedback, and bulk actions when justified. Preserve search/filter context across detail roundtrips when feasible. [S6]

**Filters.** Promote only the few common filters, keep the full set discoverable, show applied filters and a clear reset, announce result changes accessibly, and distinguish “no results for these filters” from “no records exist.” Saved views should expose their persistence scope and current filter state. [S6]

**Forms / editing.** Persistent labels, inline help, precise validation, unsaved-change feedback, explicit save/cancel behavior, and safe destructive-action confirmation. For multi-step work, give progress, review, and recovery. Do not hide required fields behind arbitrary hover states.

**Feedback.** Design and separately test: initial loading, background refreshing, zero-data empty, filtered empty, disconnected/offline, unauthorized, forbidden, expired session, partial failure, field validation error, optimistic update conflict, successful action, queued/pending work, retry, and destructive-action undo/confirmation. Indicate whether displayed data are current or cached.

**Popover/dialog/drawer.** Choose by task: popover for small contextual choices; modal dialog for focused confirmation/critical input; drawer for brief multi-field or detail workflows; dedicated page for complex editing. Respect keyboard focus management, Escape/cancel where appropriate, scroll locking, return focus, and reduced-motion settings. Do not create modal stacks as a default navigation strategy.

**Trust and security.** The interface must not suggest an action succeeded before server acknowledgement; destructive operations need appropriate confirmation or reversibility. Server-side authorization and object-level checks control access; UI visibility is a usability aid, not a security barrier.

## 5. Responsive and adaptive behavior

**[Practitioner recommendation — starting heuristic, not a standard or exact screenshot extraction]**

| Available container / viewport | Working strategy |
|---|---|
| Narrow (roughly below 640 CSS px) | Single-column content, compact heading and prioritized first task, navigation drawer, stacked KPI tiles, charts with readable labels or alternate table/list, filters in a deliberate panel. |
| Medium (roughly 640–1023 CSS px) | Two-column card layout where content permits, optional supporting pane, abridged navigation; longer forms and tables remain readable. |
| Wide (roughly 1024 CSS px and above) | 12-column planning grid, three or four logical card widths, persistent sidebar when content area is ample, optional list/detail split. |

**Prefer component/container fit to rigid viewport breakpoints.** These ranges are design starting points only; the content must determine actual breakpoints. A chart or editable grid may legitimately need a two-dimensional layout, but provide an accessible alternative/appropriate scrolling region and preserve overall page reflow. W3C WCAG 2.2 SC 1.4.10 states the reflow outcome and allows exceptions where two-dimensional presentation is essential. [S8]

- Reorder columns according to task priority, not screenshot row order; the DOM reading/focus order must remain meaningful.
- Compact layouts should reduce simultaneous surfaces rather than hide essential capabilities or force horizontal card overflow.
- Reserve 44×44 CSS px or similar comfortable targets for major touch actions as a **design preference**, not as the WCAG AA minimum; SC 2.5.8 AA has a 24×24 CSS px threshold with defined exceptions. [S8]
- Verify on real devices and browser zoom (including 320 CSS px equivalent at 400% zoom), landscape, text enlargement, and virtual keyboard states. [S8]

### Example conceptual wireframes

**Wide overview:**

    [App / search / account bar                                      ]
    [Side nav] [Page heading                       Primary action      ]
    [Side nav] [Critical attention queue — full width                ]
    [Side nav] [KPI 1] [KPI 2] [KPI 3] [KPI 4]                      ]
    [Side nav] [Trend / activity — 8 cols] [Quick actions — 4 cols]   ]
    [Side nav] [Recent records / operations — full width             ]

**Compact overview:**

    [Menu] [Page title] [Account]
    [Attention queue / first task]
    [Primary action]
    [KPI 1] [KPI 2]
    [Trend with readable alternative]
    [Recent records]
    [Other details disclosed progressively]

**Resource administration:**

    [Heading + Create action]
    [Search / filter / saved view]
    [Result count, selection, sort]
    [List or table with status + owner + last update]
    [Detail or edit view with primary action and audit context]

These structures illustrate *content priority* rather than mandatory breakpoints or layouts.

## 6. Proposed design-token starting ranges

The following are **illustrative starting recommendations only**. They are not derived pixel measurements from the screenshots and do not update WDBASIC or TCBasic canonical token contracts.

| Token family | Candidate tokens / values | Rationale |
|---|---|---|
| Spacing | 4, 8, 12, 16, 24, 32, 48 CSS px | Consistent cadence across cards, charts, forms, and layouts; optional 20/40 steps only when needed. |
| Card padding | 16 px compact; 20–24 px desktop | Preserve legibility; smaller on narrow layouts without crushing controls. |
| Card gap | 12–16 px compact; 16–24 px wide | Equal relationship spacing between modules. |
| Radius | 8/12/16/20 px scale | Moderate radius for utility/control, larger for hero card; avoid inconsistent pills. |
| Typography | Body 14–16 px where appropriate; supporting text ~13–14 px only if tested; section title ~18–24 px; KPI ~28–40 px | Hierarchy and legibility outrank exact reference proportions. |
| Surfaces | Canvas, raised card, nested/secondary, overlay | Semantic layers rather than random opacity levels. |
| Colors | Neutral text/surface scale, one primary interaction accent, separate success/warning/danger/info roles, dedicated chart sequence | Theme-independent semantic intent with accessible contrast. |
| Borders/shadows | 1 px low-noise boundary; restrained shadow/elevation only where useful | Distinguish card grouping without unnecessary decoration. |
| Icons | One coherent family with consistent stroke/size and accessible name on actionable icon buttons | Avoid mixing glyph metaphors and mismatched visual weights. |
| Motion | Short, purposeful transitions with reduced-motion alternative | Motion should explain state/continuity rather than slow routine work. |

**Theme discipline:** A dark charcoal console can use near-black canvas, a slightly lifted graphite panel, readable near-white text, and restrained high-contrast accents. A light console can use off-white canvas, white cards, dark ink, and muted pastel accents. Switching between light and dark is a system/theme choice; mixing arbitrary black and white cards on one screen needs a semantic reason and contrast testing. Check all text and interaction combinations—including gradient extremes—rather than inferring contrast from palette names. [S5, S8]

## 7. Accessibility and performance gates

[**External requirement:** WCAG 2.2 AA as applicable; see S8 and the WDBASIC coverage matrix.]

- Text contrast: ordinarily at least **4.5:1** for normal text and **3:1** for qualifying large text; meaningful UI graphics/component boundaries commonly require **3:1** contrast under SC 1.4.11.
- Keyboard access, visible focus, meaningful labels, correct native semantics/ARIA where needed, logical order, error identification, and non-color status distinctions.
- Reflow and resized text, focus not obscured by sticky toolbars, pointer/drag alternatives, meaningful orientation behavior, minimum target-size outcome with stated exceptions.
- Accessible chart summaries, data equivalents, and assistive-technology verification; charts made with canvas/SVG need appropriate semantic accompaniment.
- Respect user preferences (reduced motion, color scheme where supported), and avoid automatic chart/carousel movement that users cannot pause.
- Performance: prioritize immediate skeleton/structure, avoid chart animation on every refresh, constrain image/font/icon weight, batch requests sensibly, render sensible partial failures, and avoid expensive large-table DOM updates. Performance budgets are project decisions, not externally validated universal numbers.

A visually consistent mockup is **not** an accessibility or performance pass. Audit the actual components, screen-reader output, keyboard flow, responsiveness, state transitions, and measured loading behavior.

## 8. Design-system comparison and adoption guidance

| System | Best source of learning | Adoption boundary |
|---|---|---|
| **IBM Carbon** [S3–S5] | Enterprise surfaces, layered themes, neutral-first palette, chart anatomy, and accessibility | Its visual identity and tokens belong to IBM; adapt principles rather than copy brand wholesale. |
| **Shopify Polaris** [S6] | Actionable resource collections, navigation from list to detail, admin filtering/state patterns | Merchant-centric workflows may not match other products; historical Polaris React examples may not equal current App Home component APIs. |
| **Ant Design** [S7] | Repeatable enterprise patterns, scale, layout consistency, and predictable component behavior | React implementation/design decisions are not automatically requirements for Laravel/HTMX/Tailwind stacks. |
| **Material Design 3 / adaptive paradigms** | Window-dependent navigation choice, hierarchy, responsive pane transitions | Evaluate against actual application needs and existing framework; do not add a new dependency solely to copy appearance. |
| **TCBasic / WDBASIC (this repository)** | Semantic CSS tokens/components and governing accessibility, usability, source-truth, and technology-neutral invariants | Preserve established authority; this research does not automatically amend tokens, components, or machine-readable agent rules. |

## 9. Decision criteria: bento vs conventional and dark vs light

Choose **bento cards** when content is genuinely heterogeneous, prioritizable, glanceable, and composed of self-contained modules. Prefer a **table/list/workbench** when the dominant task is search, comparison, reconciliation, CRUD, bulk action, data entry, or audit. Use a **hybrid** when a small overview leads into a capable table below.

Choose **dark** when the surrounding application has a coherent dark theme and the data remains legible under likely conditions; choose **light** where documents, long-form text, printing, or familiar administrative forms predominate. Provide both themes only when there is demand and a maintainable token/contrast strategy; neither is inherently more accessible.

Do not treat aesthetic popularity, screenshots, gallery likes, or vendor examples as measured evidence of superior task performance.

## 10. Practical evaluation checklist

1. Can each role state the page's purpose and first sensible action in a glance?
2. Is the one urgent condition clearly distinguishable from normal monitoring?
3. Does each KPI identify its unit, date range, freshness, comparator, and actionable meaning?
4. Can users find any record through reliable navigation, search/filter/sort, and a legible list/table?
5. Do actions show pending, success, failure, retry, confirmation/undo, and permission states honestly?
6. Are keyboard, touch, screen reader, zoom, text resize, and narrow-layout paths tested—not just visually inferred?
7. Are chart comparisons and colors interpretable without relying on hue, 3D effects, or unlabeled axes?
8. Are nav/sidebar, cards, form controls, badges, tables, and icons governed by one semantic token system?
9. Is the visual grid rearranged for content priority on compact screens without breaking focus/reading order?
10. Were actual users and representative tasks tested before elevating this visual pattern into a product-wide standard?

## Evidence and source register

Primary external sources and research relevant as of 2026-10-11. Source dates below are publication dates where identifiable; otherwise the pages were consulted on the review date.

- **S1 — Nielsen Norman Group** (Page Laubheimer, 2017-06-18), *Dashboards: Making Charts and Graphs Easier to Understand*. Defines glanceable dashboards and operational vs analytical dashboards: <https://www.nngroup.com/articles/dashboards-preattentive/>.
- **S2 — Nielsen Norman Group** (Kate Moran, 2022-01-30), *Choosing Chart Types: Consider Context*. Goal/context-led chart selection and readable comparison: <https://www.nngroup.com/articles/choosing-chart-types/>.
- **S3 — IBM Design Language** (vendor guidance; accessed 2026-10-11), *Data visualization / design basics*: <https://www.ibm.com/design/language/data-visualization/design/basics/>.
- **S4 — Carbon Design System** (IBM vendor guidance; color page updated 2026-09-25), *Color: overview*. Layering, restrained accent use, thematic consistency: <https://www.carbondesignsystem.com/building-blocks/foundations/color/overview>.
- **S5 — Carbon Design System** (IBM vendor guidance; accessibility color page updated 2026-09-25), *Accessibility: color*. Text, large-text, and UI contrast guidance, non-color differentiation: <https://www.carbondesignsystem.com/building-blocks/foundations/accessibility/color>.
- **S6 — Shopify Polaris / App Home** (vendor guidance; accessed 2026-10-11), *Resource list*. Compact actionable records and drilldown, distinct from analytical tabulation: <https://shopify.dev/docs/api/app-home/latest/patterns/compositions/resource-list>. Historical related guidance for tables and filtering: <https://polaris-react.shopify.com/components/tables/index-table>.
- **S7 — Ant Design** (vendor design guidance; accessed 2026-10-11), *Introduction*, *Design values*, and *Layout*: <https://ant.design/docs/spec/introduce/>, <https://ant.design/docs/spec/values/>, <https://ant.design/docs/spec/layout/>.
- **S8 — W3C** (normative standard, WCAG 2.2 Recommendation with applicable current publication/errata), *Web Content Accessibility Guidelines (WCAG) 2.2*: <https://www.w3.org/TR/WCAG22/>. Informative explanations of newer criteria: <https://www.w3.org/WAI/standards-guidelines/wcag/new-in-22/>.
- **S9 — W3C WAI** (informative implementation guidance), *ARIA Authoring Practices Guide*: <https://www.w3.org/WAI/ARIA/apg/>.

## Open items and later reconciliation

- The Deep Research app's full report was **not** available to compare at the time of this snapshot. When available, reconcile additional citations, examples, contradictions, and findings and record a dated update; do not retroactively claim this snapshot included that report.
- The source screenshots have not been pixel-measured, contrast-tested, or reproduced as interactive views; no exact token extraction or layout dimensions are claimed.
- Source links may change; recheck vendor guidance before translating recommendations into binding platform or implementation contracts.
- Before adopting a reusable dashboard component/profile/machine rule, identify owner, explicit applicability, acceptance criteria, validation, versioning, and effect on existing WDBASIC/TCBasic semantic sources.
