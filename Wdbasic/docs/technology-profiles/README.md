# WDBASIC Technology Profiles

> **Status:** Technology-specific adoption layer  
> **Reviewed:** 2026-08-14  
> **Core dependency:** [`../core-invariants/README.md`](../core-invariants/README.md)

WDBASIC core is technology-neutral. Technology profiles define how a particular rendering, interaction, styling, or delivery architecture satisfies WDBASIC invariants.

## Profiles

- [`htmx-hypermedia.md`](htmx-hypermedia.md) — HTMX / hypermedia interaction profile.
- [`ssr.md`](ssr.md) — server-side rendering profile.
- [`static.md`](static.md) — static/pre-rendered profile.
- [`js-application.md`](js-application.md) — JavaScript application profile.
- [`tailwind-tcbasic.md`](tailwind-tcbasic.md) — Tailwind / TCbasic integration profile.
- [`hybrid-native.md`](hybrid-native.md) — hybrid/native shell profile.

## Profile rule

A project selects one or more profiles and records:

- why the profile fits the product;
- which core invariants are affected;
- routing/state authority;
- direct-load behavior;
- search/indexability implications where public content exists;
- accessibility and assistive-technology implications;
- cache/history behavior;
- security/privacy boundaries;
- performance budgets and evidence;
- fallback and failure behavior;
- exceptions.

Profiles may express WDBASIC preferences. They may not turn a project preference into a false external-standard or search-engine requirement.
