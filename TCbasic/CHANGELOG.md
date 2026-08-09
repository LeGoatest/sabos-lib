# Changelog

All notable changes to TCBasic will be documented in this file.

The historical entries below preserve the framework's earlier package-oriented development history. Current TCBasic is maintained as a SABOS Lib knowledge framework rather than an npm package.

## [Unreleased]

### Added

- `docs/` as the canonical home for TCBasic architecture, contracts, standards, positions, profiles, integrations, compliance guidance, references, and glossaries.
- `docs/references/` for historical and project-specific source material that informs TCBasic without automatically becoming a universal contract.
- `docs/compliance/browser-and-reference-matrix.md` separating upstream compatibility assumptions from actual adopter validation.
- Binding `AGENTS.md`, `STANDARDS.md`, and `architecture_rules.md` governance contracts during the earlier package-oriented phase.
- Local `AGENTS.md` files for build, tokens, components, integrations, compliance, profiles, glossaries, examples, canonical source (`src/`), generated distribution (`dist/`), and regression evidence (`tests/`) during the earlier package-oriented phase.
- `positions/` with local agent governance as the explicit home for deliberate TCBasic preferences such as semantic classes, `@apply`, readable templates, CSS-first architecture, and framework-independent boundaries.
- Build contracts for source detection, CLI/PostCSS/Vite boundaries, packaging, exports, and releases during the earlier package-oriented phase.
- Token contracts for Tailwind theme variables, semantic token roles, breakpoints, and container queries.
- Component governance for anatomy, variants, states, accessibility responsibilities, and public API versioning.
- Integration contracts for server-rendered systems and component frameworks.
- Validation documents for browser/build evidence, controlled migration, and release sign-off during the earlier package-oriented phase.
- Semantic-application and legacy-migration adoption profiles.
- Tailwind CSS v4 glossary and glossary governance.
- Automated tests for required governance documents, relative Markdown links, and recorded browser baselines during the earlier package-oriented phase.
- Complete GitHub issue-template, build-workflow, and release-workflow scaffolding during the earlier package-oriented phase.
- Customization, migration, and component-contract documentation.
- Laravel Blade and HTMX integration examples.
- Element, layout, component, pattern, state, and limited-utility source modules matching the documented architecture.
- Node-based structural and package-export tests with fixture markup during the earlier package-oriented phase.
- PostCSS configuration and checked-in readable and minified distribution files during the earlier package-oriented phase.
- Tailwind CSS v4 semantic token architecture.
- Basic HTML example and initial documentation.

### Changed

- Reframed TCBasic from a self-contained npm package into a Tailwind CSS semantic-architecture knowledge framework within SABOS Lib.
- Kept `src/` as the canonical reference CSS implementation while removing the implication that SABOS Lib compiles it into a product.
- Moved architecture, component, token, integration, compliance, profile, position, glossary, customization, migration, and standards knowledge under `docs/`.
- Moved the project-specific Tailwind hard-pattern document under `docs/references/` so its historical/project assumptions remain visible without becoming universal TCBasic law.
- Reframed CLI, PostCSS, Vite, source-detection, and compatibility material as adopter guidance rather than SABOS Lib build dependencies.
- Updated root README, agent instructions, contribution guidance, source authority, and example authority around the `docs/` → `src/` → `examples/` responsibility model.
- Expanded the canonical README into a governed package entry point with authority order, subsystem map, browser baseline, and adoption profiles during the earlier package-oriented phase.
- Expanded the canonical README map/reading order to expose `positions/`, local domain `AGENTS.md` files, and the distinct `src/` canonical-source, `dist/` generated-output, and `tests/` regression-evidence boundaries during the earlier package-oriented phase.
- Expanded published package contents to include build, token, component, integration, compliance, profile, and glossary contracts during the earlier package-oriented phase.
- Clarified local source-of-truth boundaries during the earlier package-oriented phase: `src/` was canonical source, `dist/` generated output, and `tests/` regression evidence.
- Separated TCBasic practitioner preferences from upstream Tailwind requirements and binding contracts so deliberate divergence is preserved without misrepresenting upstream behavior.
- Clarified TCBasic's application accessibility boundary and its separation from WDBASIC conformance.
- Moved the complete Tailwind package implementation and configuration into `TCbasic/`, making it the package root during the earlier package-oriented phase.
- Moved Tailwind-specific documentation into `TCbasic/` and replaced the repository root README with a neutral repository index.
- Expanded `src/index.css` from the initial reduced scaffold to the complete ordered layer graph.
- Updated package exports, scripts, development dependencies, and prepack validation for source and distribution consumers during the earlier package-oriented phase.
- Expanded the TCBasic README with source, distribution, examples, testing, and release guidance during the earlier package-oriented phase.

### Removed

- `TCbasic/package.json` and npm package/export/publication assumptions.
- `TCbasic/postcss.config.mjs` as repository tooling; PostCSS remains documented only as an adopter option.
- Checked-in `dist/` generated CSS and distribution-specific agent governance.
- Repository package/build/export tests under `tests/`.
- Package/release-oriented `build/` contracts; reusable source-detection and tooling knowledge was preserved under `docs/architecture/`.
- Package release checklist and generated-distribution requirements that no longer apply to SABOS Lib.
