# Build Tooling Contract

TCBasic supports multiple Tailwind CSS v4 build adapters without making every adapter a package dependency.

Official references:

- CLI: https://tailwindcss.com/docs/installation/tailwind-cli
- PostCSS: https://tailwindcss.com/docs/installation/using-postcss
- Vite: https://tailwindcss.com/docs/installation/using-vite
- Compatibility: https://tailwindcss.com/docs/compatibility

## 1. Tailwind CLI

The CLI is the canonical TCBasic development and distribution build path.

```bash
npm install tailwindcss @tailwindcss/cli
npx @tailwindcss/cli -i ./src/index.css -o ./dist/semantic-layer.css
```

TCBasic scripts use the installed `tailwindcss` binary exposed by `@tailwindcss/cli`.

Use CLI when:

- The project has a simple static or server-rendered asset pipeline.
- A framework-specific bundler is unnecessary.
- Reproducible input and output paths are preferred.

## 2. PostCSS

Use `@tailwindcss/postcss` with PostCSS 8:

```js
export default {
  plugins: {
    "@tailwindcss/postcss": {},
  },
};
```

Do not configure the `tailwindcss` package itself as a PostCSS plugin in v4. Tailwind handles imports and vendor prefixing; `postcss-import` and Autoprefixer are not required solely for Tailwind.

Use PostCSS when:

- The consuming framework already owns a PostCSS pipeline.
- Tailwind must compose with other reviewed PostCSS plugins.
- The framework's official Tailwind guide recommends it.

## 3. Vite

For a project that already uses Vite, Tailwind recommends the first-party `@tailwindcss/vite` plugin for performance and developer experience.

```js
import { defineConfig } from "vite";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [tailwindcss()],
});
```

TCBasic does not require Vite. Do not add Vite to this package merely to demonstrate the adapter.

## 4. Standalone CLI

Consumers without Node.js may use the official standalone Tailwind CLI executable. TCBasic release validation still uses the npm toolchain so dependency versions and package tests remain reproducible.

## 5. Play CDN

The Play CDN is permitted only for experiments, documentation prototypes, and isolated demonstrations. It is not a production build path.

## 6. CSS preprocessors

Tailwind CSS v4 is not designed to run with Sass, Less, or Stylus. TCBasic uses Tailwind and modern CSS directly.

Do not add a preprocessor to solve:

- Imports already handled by Tailwind.
- Token access already available through CSS variables.
- Color adjustment available through defined palettes or modern CSS.
- Nesting that can be expressed in supported CSS.

## 7. Adapter equivalence

Every supported adapter must preserve:

- The same `src/index.css` entry point.
- The same source-detection contract.
- The same token and component API.
- Equivalent production minification expectations.
- Equivalent generated selector checks.

An adapter-specific example may differ in setup but not redefine TCBasic architecture.

## 8. Version policy

- Tailwind, CLI, PostCSS plugin, and optional Vite plugin must remain on compatible v4 versions.
- Do not mix Tailwind v3 plugins or directives into the v4 build.
- Update the standards registry when minimum Node.js, browser, or adapter versions change.

## 9. Adapter decision record

```yaml
build_adapter:
  type: cli | postcss | vite | standalone
  tailwind_version: <version>
  adapter_version: <version>
  entrypoint: <path>
  output: <path>
  source_contract: <path>
  production_command: <command>
  watch_command: <command>
```
