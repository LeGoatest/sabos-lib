# Changelog

All notable changes to the Tailwind CSS semantic layer will be documented in this file.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the project intends to use semantic versioning.

## [Unreleased]

### Added

- Binding `AGENTS.md`, `STANDARDS.md`, and `architecture_rules.md` governance contracts.
- Local `AGENTS.md` files for build, tokens, components, integrations, compliance, profiles, glossaries, examples, canonical source (`src/`), generated distribution (`dist/`), and regression evidence (`tests/`).
- `positions/` with local agent governance as the explicit home for deliberate TCBasic preferences such as semantic classes, `@apply`, readable templates, CSS-first architecture, and framework-independent package boundaries.
- Build contracts for source detection, CLI/PostCSS/Vite boundaries, packaging, exports, and releases.
- Token contracts for Tailwind theme variables, semantic token roles, breakpoints, and container queries.
- Component governance for anatomy, variants, states, accessibility responsibilities, and public API versioning.
- Integration contracts for server-rendered systems and component frameworks.
- Validation documents for browser/build evidence, controlled migration, and release sign-off.
- Semantic-application and legacy-migration adoption profiles.
- Tailwind CSS v4 glossary and glossary governance.
- Automated tests for required governance documents, relative Markdown links, and recorded browser baselines.
- Complete GitHub issue-template, build-workflow, and release-workflow scaffolding.
- Customization, migration, and component-contract documentation.
- Laravel Blade and HTMX integration examples.
- Element, layout, component, pattern, state, and limited-utility source modules matching the documented architecture.
- Node-based structural and package-export tests with fixture markup.
- PostCSS configuration and checked-in readable and minified distribution files.
- Tailwind CSS v4 semantic token architecture.
- Basic HTML example and initial documentation.

### Changed

- Expanded the canonical README into a governed package entry point with authority order, subsystem map, browser baseline, and adoption profiles.
- Expanded published package contents to include build, token, component, integration, compliance, profile, and glossary contracts.
- Clarified local source-of-truth boundaries: `src/` is canonical source, `dist/` is generated output, and `tests/` are regression evidence governed by their nearest instructions.
- Separated TCBasic practitioner preferences from upstream Tailwind requirements and binding package contracts so deliberate divergence is preserved without misrepresenting upstream behavior.
- Clarified TCBasic's application accessibility boundary and its separation from WDBASIC conformance.
- Moved the complete Tailwind package implementation and configuration into `TCbasic/`, making it the package root.
- Moved Tailwind-specific documentation into `TCbasic/` and replaced the root README with a neutral repository index.
- Expanded `src/index.css` from the initial reduced scaffold to the complete ordered layer graph.
- Updated package exports, scripts, development dependencies, and prepack validation for source and distribution consumers.
- Expanded the TCBasic README with source, distribution, examples, testing, and release guidance.
