# Proposed Structure Review Contract

> **Status:** PROPOSED — not binding on SCAFbasic adopters until explicitly adopted.
> **Purpose:** Candidate verification criteria for a project choosing to formalize setup and structure.

An adopting project may define these checks in its own architecture contract:

1. **Traceability:** README and architecture notes identify the selected models by axis, not as one false alternative list.
2. **Source ownership:** Each important business capability, public contract, route group, and durable data owner is discoverable.
3. **Dependency direction:** Module-level dependencies and permitted cross-module calls are written down; automated checks are preferred if the codebase supports them.
4. **Framework integrity:** Framework-defined bootstrap, route, autoload, build, asset and storage paths work unchanged or are deliberately migrated.
5. **Public/private separation:** Secrets, logs, runtime private uploads and database state cannot be directly served by the public web root.
6. **Generated-output integrity:** A documented canonical source maps to each generated file; source artifacts are not hand-maintained as outputs.
7. **Change-control:** File moves, class namespace changes, asset renames, route changes and storage migration require regression checks.
8. **Non-regression:** Preserve equivalent functionality unless the new behavior is explicitly approved.
9. **Evidence:** Claims like "modular", "tested", "deployment-ready" and "migration-safe" are backed by concrete source, checks and operational observations.
10. **Proportionality:** Only directories, interfaces, packages and test gates that represent real responsibilities are created, except deliberately authorized, explicitly labeled empty scaffold directories.
11. **State fidelity:** Distinguish design/placeholder/source-present/validated/deployed states and identify the evidence for each without calling a template or manifest an implemented runtime.
12. **Asset release readiness:** Verify that editable source, installed dependencies/lockfile, compiled output, runtime references and deployed release artifacts form a tested chain; a command or placeholder output folder alone is insufficient.

13. **Capability contract fidelity:** When a project adopts an operation registry or published capability interface, distinguish semantic operation names from routes, permissions and implementation. Verify owner, stable request/result/error semantics, resource/tenant policies, restricted disclosures and side-effect contracts.

**Illustrative acceptance checklist** (adapt to project's commands and sources):

- [ ] Determine current architecture from source, not screenshots alone.
- [ ] Record selected architecture axes and their composition.
- [ ] Confirm routes, namespaces, imports and public asset paths.
- [ ] Inspect private/public boundaries and permissions.
- [ ] Identify direct cross-module coupling.
- [ ] Run applicable unit/integration/browser checks at the owning project's authoritative commands.
- [ ] Record new/old baseline differences, failures and rollback guidance.
- [ ] Mark approved placeholders as unimplemented; name the evidence required to promote them to code-present or validated.
- [ ] Check the real build tool, lockfile, compiled asset, runtime integration and deployment evidence separately.
- [ ] Where capability abstractions apply, verify operation-to-implementation mapping, forbidden paths, policy checks and sanitized result/event shapes.

This proposal does not supersede WDBASIC security contracts, DBbasic SQL integrity or DevOpsbasic release policy. Adoption requires an explicit decision.
