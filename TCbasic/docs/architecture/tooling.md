# Tailwind Tooling Guidance

> **Status:** Adopter/tooling guidance, not a SABOS Lib build contract

TCBasic documents common Tailwind CSS v4 tooling paths because adopters need to understand how the reference architecture can be implemented. SABOS Lib itself does not install, compile, package, or release TCBasic.

Official references:

- CLI: https://tailwindcss.com/docs/installation/tailwind-cli
- PostCSS: https://tailwindcss.com/docs/installation/using-postcss
- Vite: https://tailwindcss.com/docs/installation/using-vite
- Compatibility: https://tailwindcss.com/docs/compatibility

## 1. Tailwind CLI

The CLI is a simple adopter option for static or server-rendered projects:

```bash
npm install tailwindcss @tailwindcss/cli
npx @tailwindcss/cli -i ./input.css -o ./public/app.css
```

Use it when a framework-specific bundler is unnecessary and explicit input/output paths are desirable.

## 2. PostCSS

Use `@tailwindcss/postcss` with PostCSS 8 when the adopting application already owns a PostCSS pipeline:

```js
export default {
  plugins: {
    "@tailwindcss/postcss": {},
  },
};
```

Do not configure the `tailwindcss` package itself as a PostCSS plugin in Tailwind v4.

## 3. Vite

For a project that already uses Vite, the first-party `@tailwindcss/vite` plugin may be appropriate:

```js
import { defineConfig } from "vite";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [tailwindcss()],
});
```

TCBasic does not require Vite. SABOS Lib does not add Vite merely to demonstrate the adapter.

## 4. Standalone CLI

Consumers without a Node-based project may use Tailwind's standalone CLI where appropriate. This is an adopter decision, not a SABOS Lib repository requirement.

## 5. Play CDN

The Play CDN is suitable only for experiments, prototypes, and isolated demonstrations—not as evidence of a production build architecture.

## 6. CSS preprocessors

TCBasic's Tailwind v4 position favors Tailwind and modern CSS directly rather than adding Sass, Less, or Stylus merely to reproduce capabilities already available through Tailwind/CSS.

## 7. Tooling equivalence

Different adopter toolchains should preserve the same TCBasic semantic architecture:

- stable semantic classes;
- the same token responsibilities;
- static/detectable Tailwind candidates;
- equivalent component contracts;
- equivalent accessibility responsibilities.

A tool-specific example may differ in setup without redefining TCBasic itself.

## 8. Tool/version records

When tool behavior materially affects an implementation or example, record:

```yaml
tooling:
  adapter: cli | postcss | vite | standalone | other
  tailwind_version: <version>
  adapter_version: <version-or-none>
  stylesheet_entrypoint: <path>
  output: <path-or-none>
  source_detection: <path-or-note>
```

Do not infer that these tools are dependencies of SABOS Lib from their presence in documentation.
