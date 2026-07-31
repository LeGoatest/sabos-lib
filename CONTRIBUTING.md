# Contributing

## Development setup

```bash
npm install
npm run build
npm run build:example
```

## Contribution rules

1. Keep the package framework-independent.
2. Use semantic, reusable class names rather than page-specific names.
3. Keep raw values in `foundation/tokens.css` and semantic Tailwind mappings in `foundation/theme.css`.
4. Use `@apply` for Tailwind utilities inside semantic classes.
5. Do not make primary content depend on JavaScript.
6. Include accessible focus, disabled, error, and loading states.
7. Update documentation and the changelog when changing the public class API.

## Pull requests

Keep changes focused, explain any public API changes, and include an HTML example when introducing a new component or pattern.
