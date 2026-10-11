# Administration and Dashboard UX — Evaluation Guide

> **Status:** Informative diagnostic guidance, not a new binding contract.  
> **Evidence basis:** [2026-10-11 dashboard/bento research snapshot](../core-invariants/measurable-evidence/research/admin-dashboard-bento-ux-2026-10-11.md)  
> **Companion dimensions:** [Usability](usability.md), [Intent alignment](intent-alignment.md), [Trust](trust.md), [Performance](performance.md)  
> **Gates:** [WDBASIC core invariants](../core-invariants/README.md).

## Purpose

Apply modern modular/bento visual design to actual administrative work without confusing a design-gallery composition for an effective production workflow. Inspect user roles and tasks before prescribing a palette, card layout, or framework.

## Page-type diagnostic

| Surface | Preferred default | Check |
|---|---|---|
| Overview | Brief KPI/alert/action area, optionally bento cards | Does the page reveal what needs attention and where to act? |
| Operations | Filterable queue or table with visible status and details | Can the user find and process the next item? |
| Analytics | Comparisons, definitions, charts, filters, drilldown | Can the user explain a change and inspect its source? |
| Resource listing | Search/sort/filter, count, selection only where useful | Does it remain usable with realistic record volume? |
| Detail/edit | Object identity, context, related data, controlled actions | Are edits, authorization, and history unambiguous? |
| Settings | Labeled and grouped forms with clear save/error behavior | Is every state and consequence understandable? |
| Field/mobile task | Focused task-specific interaction | Does an admin shell interfere with the primary task? |

## Before designing a screen

Record:

1. **Audience:** exact role, permissions, environment, device, and frequency of use.
2. **Jobs:** the top three user decisions/tasks and their typical urgency.
3. **Content:** source of truth, KPI definitions, record count, sensitivity, refresh/freshness.
4. **Flow:** what precedes the screen, where actions lead, how interruption/retry works.
5. **Priority:** first task, first exception, secondary context, tertiary information.
6. **Success evidence:** representative task-completion scenario, usability test, accessibility test, and production performance targets.

## Default visual and interaction direction

- Maintain **one coherent visual system**: neutral canvas/surfaces, semantic text/status/action colors, typography scale, border/radius/spacing tokens, and one icon family. Dark charcoal is a legitimate theme direction if contrast and interaction states are validated.
- Use **bento sizing for meaningful priority**: compact stat, double-width trend, prominent attention/action, full-width searchable queue. Do not make every page a tiled dashboard.
- Keep **global shell and page content separate**: primary nav, page title, contextual actions, then work content. Do not duplicate permanent navigation surfaces unnecessarily.
- Make **actions predictable**: labeled creation/edit/confirmation, obvious status feedback, clear return path, search/filter persistence when appropriate.
- On **narrow screens**, prioritize a single column and task order, use a dismissible menu, preserve controls and data access, and avoid clipping/illegible microcharts.

Suggested starting dimensions from the evidence snapshot (not mandated WDBASIC tokens): 4–8 px spacing rhythm; 12–24 px card gaps depending on width; 16–24 px padding; moderate 8–20 px radii; a limited surface and accent palette. Reconcile with actual project's existing canonical tokens before adopting.

## Component inventory to evaluate

- Shell: sidebar/drawer, topbar, breadcrumbs when warranted, page header, global search, user/role switch if real.
- Summary: KPI card, comparison/trend badge, freshness label, attention/alert list, activity feed, actionable shortcut.
- Resources: data table, resource list, toolbar, search, filters/chips, saved view, sort, selection, pagination, row detail, bulk action.
- Analytics: chart panel, time range, metric definition, data table/accessible equivalent, chart fallback/empty state.
- Editing: form groups, input help, validation summary, modal, drawer, confirmation, toast/notification, unsaved state.
- Lifecycle: skeleton, background refresh, empty, filtered-empty, offline, unauthorized, forbidden, stale, partial failure, retry, success, optimistic conflict.

## The bento decision

**Use bento** when the information is modular, glanceable, heterogeneous, and deliberately prioritizable. **Use conventional workbench** when the user compares or edits many records. **Use hybrid** when a small dashboard is a route into record-heavy administration. Decorative color/image blocks must justify the attention they consume.

A dashboard is not automatically the correct landing screen for every authenticated role.

## Review checklist and acceptance criteria

- [ ] Role and top task are explicit, with a credible first action.
- [ ] All KPI cards have a clear label, period, definition/comparison where relevant, and honest data freshness.
- [ ] Navigation and icons have stable, understandable meanings on every route.
- [ ] Table/search/filter/action workflows work with realistic datasets and preserve context.
- [ ] Empty/filtered-empty/loading/error/offline/pending/success/permission states have distinct behavior.
- [ ] Responsive order reflects task priority and matches semantic/focus order.
- [ ] WCAG 2.2 AA applicability and evidence are recorded via the existing matrix; keyboard, screen reader, zoom/reflow, color contrast, and touch are actually tested.
- [ ] Server-side authorization matches role visibility and every action's permissions.
- [ ] Performance is measured rather than inferred from static screenshots.
- [ ] User-task testing validates choices that began as visual inspiration.

## Authority boundary

This document is an evaluation aid. It **does not** change WDBASIC core invariants, create mandatory dashboard tokens or components, amend TCBasic source CSS, or update the machine-readable WDBASIC rules. Any promotion requires a separate governed change with identified owner, applicability, and verification evidence.
