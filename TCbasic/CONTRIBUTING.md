# Contributing to TCBasic

TCBasic is maintained as a knowledge framework with canonical reference CSS and illustrative adoption examples. Contributions should improve the architecture, contracts, evidence, terminology, reference source, or examples without recreating package/build machinery around the repository.

## Required reading

Before changing TCBasic:

1. [`README.md`](README.md)
2. [`docs/architecture/rules.md`](docs/architecture/rules.md)
3. [`docs/standards.md`](docs/standards.md)
4. [`AGENTS.md`](AGENTS.md) when automated tooling is involved
5. [`docs/AGENTS.md`](docs/AGENTS.md) and the nearest domain instructions
6. Applicable contracts, positions, profiles, references, and examples

## Contribution rules

1. Keep the reusable architecture framework-independent unless a document/example is explicitly integration-specific.
2. Use Tailwind CSS v4 CSS-first concepts in current guidance.
3. Use semantic, reusable class names rather than page-, color-, customer-, or sequence-specific names.
4. Keep raw values in `src/foundation/tokens.css` and Tailwind theme mappings in `src/foundation/theme.css` unless the architecture contract changes.
5. Use `@apply` where it improves stable semantic classes; use `@utility` where a reusable primitive genuinely belongs in Tailwind's utility system.
6. Keep Tailwind candidates complete and statically detectable in reference and example material.
7. Prefer native HTML and attributes before state classes or ARIA added solely for styling.
8. Preserve visible focus, disabled/error/loading states, reduced-motion behavior, forced-colors usability, and progressive enhancement where applicable.
9. Keep `src/` as canonical reference CSS; do not create generated `dist/` output in SABOS Lib.
10. Keep examples illustrative and clearly scoped to their host environment.
11. Update documentation and `CHANGELOG.md` with material architecture/contract/reference changes.

## Knowledge-type review

Before changing a document, identify whether it is:

- a binding contract;
- a practitioner position;
- an upstream/standards record;
- research or reference evidence;
- a glossary definition;
- an adoption profile;
- an illustrative example.

Do not silently change one type into another.

## Reference-source review

When changing `src/`, review:

- the documented architecture layer;
- semantic class/token responsibilities;
- related component/token contracts;
- examples that demonstrate the changed concept;
- migration/adopter impact;
- accessibility implications.

SABOS Lib does not compile the source as part of repository maintenance. Do not report a production build as passed unless validation occurred in a real adopting project and is explicitly scoped to that project.

## Pull requests or direct changes

A material change should explain:

- what changed and why;
- affected contracts/positions;
- reference-source or example impact;
- compatibility/migration impact where relevant;
- evidence actually reviewed;
- unresolved manual review or exceptions.

Use [`docs/compliance/`](docs/compliance/README.md) for applicable evidence and compatibility guidance.
