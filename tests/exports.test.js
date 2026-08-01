import assert from "node:assert/strict";
import { access, readFile } from "node:fs/promises";
import path from "node:path";
import test from "node:test";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const packageJson = JSON.parse(await readFile(path.join(root, "package.json"), "utf8"));

function exportTargets(value) {
  if (typeof value === "string") return [value];
  if (value && typeof value === "object") return Object.values(value).flatMap(exportTargets);
  return [];
}

test("package export targets exist", async () => {
  const targets = exportTargets(packageJson.exports);
  assert.ok(targets.length >= 5);

  for (const target of targets) {
    await access(path.resolve(root, target));
  }
});

test("package publishes source and distribution files", () => {
  assert.equal(packageJson.license, "GPL-3.0-only");
  assert.ok(packageJson.files.includes("src"));
  assert.ok(packageJson.files.includes("dist"));
  assert.equal(packageJson.style, "./dist/semantic-layer.css");
});
