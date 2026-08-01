# Component catalog

Every public component has a base class, optional variants, supported states, and an HTML contract.

## Buttons

Classes:

- `.button`
- `.button-primary`
- `.button-secondary`
- `.button-outline`
- `.button-ghost`
- `.button-small`
- `.button-large`
- `.button-block`
- `.button-icon`

Use native `<button>` elements for actions and `<a>` elements for navigation. Preserve `disabled`, `aria-disabled`, focus, and loading semantics.

## Cards

Classes:

- `.card`
- `.card-interactive`
- `.card-media`
- `.card-header`
- `.card-body`
- `.card-footer`
- `.card-title`
- `.card-description`

An interactive card still requires a real link or button. Do not make a generic `<div>` clickable.

## Forms

Classes:

- `.form-group`
- `.form-label`
- `.form-help`
- `.form-input`
- `.form-select`
- `.form-textarea`
- `.form-checkbox`
- `.form-radio`
- `.form-error`
- `.form-actions`

Labels remain visible. Connect help and error text with `aria-describedby`, set `aria-invalid="true"` after validation failure, and preserve server-rendered error summaries.

## Alerts and badges

Alerts use `.alert` plus `.alert-success`, `.alert-warning`, `.alert-error`, or `.alert-info`. Use an appropriate live-region role only when an alert is inserted dynamically and requires announcement.

Badges use `.badge` plus a semantic variant. A badge must not be the only indicator of status.

## Breadcrumbs

Use `.breadcrumb`, `.breadcrumb-list`, `.breadcrumb-item`, `.breadcrumb-link`, and `.breadcrumb-current`. The current page uses `aria-current="page"`.

## Navigation

Use `.navigation`, `.navigation-list`, `.navigation-link`, `.navigation-link-active`, `.navigation-toggle`, and `.navigation-panel`. The mobile panel should remain available as normal links when JavaScript is absent.

## Dropdown

Use `.dropdown`, `.dropdown-trigger`, `.dropdown-menu`, `.dropdown-item`, and `.dropdown-separator`. Prefer native `<details>` for simple disclosure navigation. Application JavaScript is responsible for full menu-button keyboard behavior when a custom menu is necessary.

## Modal

Use `.modal-backdrop`, `.modal`, `.modal-header`, `.modal-title`, `.modal-body`, `.modal-footer`, and `.modal-close`. Prefer the native `<dialog>` element. The application controls focus trapping, initial focus, return focus, and dismissal.

## Pagination

Use `.pagination`, `.pagination-list`, `.pagination-link`, `.pagination-current`, and `.pagination-gap`. Pagination is normal navigation and must work without JavaScript.

## Tables

Use `.table-wrapper`, `.table`, `.table-caption`, `.table-head`, `.table-header`, `.table-cell`, and `.table-row`. Do not replace data-table semantics with grid-only `<div>` layouts.

## Composition patterns

Patterns combine primitives and components:

- `.pattern-hero`
- `.pattern-proof-strip`
- `.pattern-call-to-action`
- `.pattern-feature-grid`
- `.pattern-media-object`
- `.pattern-split-content`

Patterns define a composition, not page ownership. Content order must remain logical in the document source.

## State classes

State classes include `.is-loading`, `.is-disabled`, `.is-empty`, `.has-error`, `.is-error`, and `.is-success`. Prefer native attributes when available; state classes supplement rather than replace `disabled`, `aria-busy`, `aria-invalid`, and semantic status messages.
