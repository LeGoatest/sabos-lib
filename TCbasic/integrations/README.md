# TCBasic Integration Contracts

Integrations adapt TCBasic to a host environment without redefining the package architecture.

## Documents

- [`server-rendered.md`](server-rendered.md) — HTML, PHP, Laravel Blade, HTMX, Twig, and similar systems.
- [`component-frameworks.md`](component-frameworks.md) — Vue, Svelte, React, CSS modules, and single-file component boundaries.
- [`../build/tooling.md`](../build/tooling.md) — CLI, PostCSS, and Vite adapters.

## Integration invariants

Every integration must preserve:

- `TCbasic/src/index.css` as the source entry point or the installed package export equivalent.
- Static, complete class candidates.
- The public token and component API.
- Semantic HTML and native attributes.
- Server or application ownership of business state.
- Equivalent focus, error, disabled, loading, and responsive behavior.
- The upstream Tailwind v4 browser baseline.

## Dependency boundary

An integration example may require a host framework. That dependency belongs to the consuming project unless TCBasic explicitly adds an adapter package.

## Example policy

Examples must:

- Be small and focused.
- Identify which behavior belongs to TCBasic and which belongs to the host.
- Avoid fake production security or accessibility claims.
- Use complete class strings.
- Include baseline behavior where progressive enhancement applies.
- Link to the governing contract.
