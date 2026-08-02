# Contributing

The canonical Tailwind CSS contribution guide is [`../TCbasic/CONTRIBUTING.md`](../TCbasic/CONTRIBUTING.md).

Before opening a pull request:

1. Keep additions framework-independent unless they belong under `examples/`.
2. Put raw values in `src/foundation/tokens.css` and semantic Tailwind mappings in `src/foundation/theme.css`.
3. Prefer reusable nouns over page-specific or visual class names.
4. Preserve semantic HTML, keyboard operation, visible focus, reduced motion, and no-JavaScript behavior.
5. Add or update tests, TCBasic documentation, examples, and [`../TCbasic/CHANGELOG.md`](../TCbasic/CHANGELOG.md).
6. Run `npm test` and `npm run build`.

Do not commit changes to `dist/` unless they were generated from the same source revision.
