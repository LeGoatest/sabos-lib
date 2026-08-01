import assert from "node:assert/strict";
import { readFile, access } from "node:fs/promises";
import path from "node:path";
import test from "node:test";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");

async function text(relativePath) {
  return readFile(path.join(root, relativePath), "utf8");
}

test("every local import in src/index.css exists", async () => {
  const source = await text("src/index.css");
  const imports = [...source.matchAll(/@import\s+["'](\.\/[^"']+)["']/g)].map((match) => match[1]);

  assert.ok(imports.length >= 30, "expected the complete layered import graph");

  for (const imported of imports) {
    await access(path.resolve(root, "src", imported));
  }
});

test("semantic source avoids page-specific class names", async () => {
  const source = await text("src/index.css");
  assert.doesNotMatch(source, /homepage-|about-page-|myrestorepro|wdbasic/i);
});

test("checked-in distributions are browser CSS", async () => {
  for (const file of ["dist/semantic-layer.css", "dist/semantic-layer.min.css"]) {
    const source = await text(file);
    assert.doesNotMatch(source, /@apply\b/);
    assert.match(source, /\.button-primary/);
    assert.match(source, /\.layout-container/);
  }
});
