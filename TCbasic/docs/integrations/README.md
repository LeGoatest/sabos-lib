# TCBasic Integration Contracts

Integrations adapt TCBasic concepts and reference CSS to a host environment without redefining the core architecture.

## Documents

- [`server-rendered.md`](server-rendered.md) — HTML, PHP, Laravel Blade, HTMX, Twig, and similar systems.
- [`component-frameworks.md`](component-frameworks.md) — Vue, Svelte, React, Astro, CSS modules, and single-file component boundaries.
- [`../architecture/tooling.md`](../architecture/tooling.md) — CLI, PostCSS, Vite, and other adopter tooling guidance.
- [`../architecture/source-detection.md`](../architecture/source-detection.md) — static candidate and source-discovery rules.

## Integration invariants

Every integration should preserve:

- the semantic responsibilities documented by TCBasic;
- static, complete Tailwind candidates;
- token and component contracts;
- semantic HTML and native attributes;
- server/application ownership of business state;
- focus, error, disabled, loading, responsive, reduced-motion, and forced-colors responsibilities where applicable;
- honest separation between upstream browser/tool support and actual adopter validation.

## Reference-source boundary

[`../../src/`](../../src/) is a canonical reference implementation, not an installable package contract. Adopters may copy, adapt, or re-express the architecture in their own project while preserving the documented responsibilities.

## Dependency boundary

An integration example may require a host framework or build tool. That dependency belongs to the adopting project. Its presence in documentation does not make it a SABOS Lib dependency.

## Example policy

Examples must:

- be small and focused;
- identify which behavior belongs to TCBasic and which belongs to the host;
- avoid fabricated production security, accessibility, performance, or compatibility claims;
- use complete class strings;
- include baseline behavior where progressive enhancement applies;
- link to the governing contract when the relationship is material.
