# Contributing

The canonical Tailwind CSS contribution guide is [`../TCbasic/CONTRIBUTING.md`](../TCbasic/CONTRIBUTING.md).

Before opening a pull request:

1. Run Tailwind package commands from `TCbasic/`.
2. Keep additions framework-independent unless they belong under `TCbasic/examples/`.
3. Put raw values in `TCbasic/src/foundation/tokens.css` and semantic Tailwind mappings in `TCbasic/src/foundation/theme.css`.
4. Prefer reusable nouns over page-specific or visual class names.
5. Preserve semantic HTML, keyboard operation, visible focus, reduced motion, and no-JavaScript behavior.
6. Add or update tests, TCBasic documentation, examples, and `TCbasic/CHANGELOG.md`.
7. Run `npm test` and `npm run build` from `TCbasic/`.

Do not commit changes to `TCbasic/dist/` unless they were generated from the same source revision.
