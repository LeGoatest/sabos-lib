import assert from "node:assert/strict";
import { access, readFile, readdir } from "node:fs/promises";
import path from "node:path";
import test from "node:test";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");

const requiredDocuments = [
  "README.md",
  "AGENTS.md",
  "STANDARDS.md",
  "architecture_rules.md",
  "build/README.md",
  "build/source-detection.md",
  "build/tooling.md",
  "build/package-and-release.md",
  "tokens/README.md",
  "tokens/theme-variables.md",
  "tokens/semantic-tokens.md",
  "tokens/responsive-and-containers.md",
  "components/README.md",
  "components/component-contracts.md",
  "components/variants-and-states.md",
  "components/accessibility.md",
  "integrations/README.md",
  "integrations/server-rendered.md",
  "integrations/component-frameworks.md",
  "compliance/README.md",
  "compliance/browser-and-build-matrix.md",
  "compliance/migration-checklist.md",
  "compliance/release-checklist.md",
  "profiles/README.md",
  "profiles/semantic-application.md",
  "profiles/legacy-migration.md",
  "glossaries/README.md",
  "glossaries/tailwind-css.md",
];

async function markdownFiles(directory) {
  const entries = await readdir(directory, { withFileTypes: true });
  const files = [];

  for (const entry of entries) {
    if (["node_modules", "dist"].includes(entry.name)) continue;

    const absolute = path.join(directory, entry.name);
    if (entry.isDirectory()) {
      files.push(...(await markdownFiles(absolute)));
    } else if (entry.isFile() && entry.name.endsWith(".md")) {
      files.push(absolute);
    }
  }

  return files;
}

test("required governance documents exist", async () => {
  for (const document of requiredDocuments) {
    await access(path.join(root, document));
  }
});

test("relative Markdown links resolve", async () => {
  const files = await markdownFiles(root);
  assert.ok(files.length >= requiredDocuments.length);

  for (const file of files) {
    const source = await readFile(file, "utf8");
    const links = [...source.matchAll(/\[[^\]]*\]\(([^)]+)\)/g)].map((match) => match[1].trim());

    for (const link of links) {
      if (
        !link ||
        link.startsWith("#") ||
        link.startsWith("http://") ||
        link.startsWith("https://") ||
        link.startsWith("mailto:")
      ) {
        continue;
      }

      const target = decodeURIComponent(link.split("#")[0].split("?")[0]);
      if (!target) continue;

      const resolved = path.resolve(path.dirname(file), target);
      await assert.doesNotReject(
        access(resolved),
        `broken link in ${path.relative(root, file)}: ${link}`,
      );
    }
  }
});

test("standards registry records the current Tailwind baseline", async () => {
  const standards = await readFile(path.join(root, "STANDARDS.md"), "utf8");
  assert.match(standards, /Tailwind CSS \| v4\.x/);
  assert.match(standards, /Chrome 111/);
  assert.match(standards, /Safari 16\.4/);
  assert.match(standards, /Firefox 128/);
});
