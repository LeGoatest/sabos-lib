# TCBasic: Tailwind CSS Semantic Architecture

> **Status:** Evolving knowledge framework with canonical reference source  
> **Tailwind baseline:** v4.x  
> **Framework root:** `TCbasic/`

TCBasic is SABOS Lib's Tailwind CSS semantic-architecture knowledge system. It documents a CSS-first approach where Tailwind utilities remain the implementation vocabulary while stable semantic classes keep templates readable and intent-oriented.

TCBasic is **not an npm package and SABOS Lib does not build or publish it**. The repository preserves the architecture, contracts, practitioner positions, upstream guidance, reference CSS, and adoption examples so those ideas can be reused consistently in real projects.

## Core model

```text
raw semantic variables
        ↓
Tailwind theme variables
        ↓
Tailwind utilities
        ↓
semantic classes and variants
        ↓
readable templates
```

Example template:

```html
<a class="button button-primary" href="/estimate">Request an estimate</a>
```

Example semantic CSS:

```css
@layer components {
  .button-primary {
    @apply bg-primary text-on-primary hover:bg-primary-hover;
  }
}
```

## Repository roles

```text
TCbasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE
├── .editorconfig
├── .gitignore
│
├── docs/       accumulated knowledge, contracts, positions and references
├── src/        canonical reference CSS implementation
└── examples/   illustrative adoption examples
```

The distinction is intentional:

- **`docs/` defines and explains** TCBasic.
- **`src/` demonstrates** the documented architecture as canonical reference source.
- **`examples/` show adoption** in concrete environments without becoming authority over the framework.

There is no repository `dist/`, package manifest, build pipeline, or release artifact contract.

## Authority and reading order

For TCBasic work, read in this order:

1. This README.
2. [`docs/architecture/rules.md`](docs/architecture/rules.md).
3. [`docs/standards.md`](docs/standards.md).
4. [`AGENTS.md`](AGENTS.md) when automated tooling is involved.
5. [`docs/AGENTS.md`](docs/AGENTS.md) and the nearest nested `AGENTS.md`.
6. Applicable contracts and practitioner positions.
7. Active adoption profile when relevant.
8. `src/` and examples as reference evidence.
9. Explicit reviewed exceptions.

A reference implementation or example may demonstrate a contract; it does not silently redefine one.

## Documentation map

Start with [`docs/README.md`](docs/README.md).

| Subject | Canonical location |
| --- | --- |
| Architecture overview and rules | [`docs/architecture/`](docs/architecture/README.md) |
| Naming conventions | [`docs/architecture/naming-conventions.md`](docs/architecture/naming-conventions.md) |
| Tailwind source detection | [`docs/architecture/source-detection.md`](docs/architecture/source-detection.md) |
| Tailwind tooling guidance for adopters | [`docs/architecture/tooling.md`](docs/architecture/tooling.md) |
| Standards/upstream baseline | [`docs/standards.md`](docs/standards.md) |
| Component contracts and catalog | [`docs/components/`](docs/components/README.md) |
| Token architecture | [`docs/tokens/`](docs/tokens/README.md) |
| Integration guidance | [`docs/integrations/`](docs/integrations/README.md) |
| Compatibility and migration evidence | [`docs/compliance/`](docs/compliance/README.md) |
| Adoption profiles | [`docs/profiles/`](docs/profiles/README.md) |
| Practitioner positions | [`docs/positions/`](docs/positions/README.md) |
| Historical/project-specific references | [`docs/references/`](docs/references/README.md) |
| Glossary | [`docs/glossaries/`](docs/glossaries/README.md) |
| Customization guidance | [`docs/customization.md`](docs/customization.md) |
| Migration guidance | [`docs/migration-guide.md`](docs/migration-guide.md) |

## Reference source architecture

The canonical reference CSS remains under `src/`:

```text
src/
├── foundation/  tokens, theme mapping, reset, typography, accessibility
├── elements/    semantic element treatments
├── layout/      reusable spatial primitives
├── components/  interface objects and variants
├── patterns/    larger component compositions
├── states/      loading, empty, error, success, disabled
└── utilities/   intentionally limited escape hatches
```

`src/index.css` is the reference import graph. It exists to make the architecture concrete; SABOS Lib does not compile it into a checked-in distribution.

## Core positions

TCBasic favors:

- Tailwind CSS v4 CSS-first configuration.
- Semantic, reusable class names over repeated utility-heavy template markup.
- Stable token roles rather than literal brand/page names.
- `@apply` where it improves maintainable semantic classes.
- Native HTML semantics and attributes before invented state hooks.
- Static, complete Tailwind class candidates.
- Framework-independent core architecture.
- Progressive enhancement and explicit accessibility responsibilities.
- Consumer-specific tooling rather than imposing Vite, PostCSS, npm packaging, or another build system on SABOS Lib itself.

See [`docs/positions/`](docs/positions/README.md) for explicit practitioner positions and [`docs/architecture/rules.md`](docs/architecture/rules.md) for binding architectural rules.

## Applying TCBasic

TCBasic is intended to be adapted into a real project rather than installed from this repository as a package.

A typical adoption sequence is:

```text
read applicable TCBasic contracts
        ↓
select an adoption profile
        ↓
inspect/reference src/
        ↓
adapt tokens and semantic classes into the consumer project
        ↓
use that project's Tailwind/tooling pipeline
        ↓
validate the consumer implementation
```

Tooling examples for CLI, PostCSS, Vite, and source detection are documented for adopters under [`docs/architecture/`](docs/architecture/README.md). Their presence does not make those tools dependencies of SABOS Lib.

## Examples

Illustrative integrations remain under:

- [`examples/basic-html/`](examples/basic-html/)
- [`examples/laravel-blade/`](examples/laravel-blade/)
- [`examples/htmx/`](examples/htmx/)

Examples must remain clearly distinguishable from production claims and framework contracts.

## Relationship to WDBASIC

[`../Wdbasic/`](../Wdbasic/) is a separate framework-independent web architecture and implementation-contract knowledge system. TCBasic supplies Tailwind-specific semantic styling architecture and reference CSS; using TCBasic alone does not establish WDBASIC, WCAG, security, privacy, or application conformance.

## License

GPL-3.0-only. See [`LICENSE`](LICENSE).
