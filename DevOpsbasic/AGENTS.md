# DevOpsbasic Agent Instructions

> **Status:** Binding within `DevOpsbasic/`

Read repository `AGENTS.md`, repository governance, this file, and the nearest local documentation before changing DevOpsbasic.

## Scope

DevOpsbasic governs reusable knowledge and artifacts for:

- `main` / `dev` / `prod` branch semantics;
- CI and GitHub Actions;
- environment separation;
- promotion and deployment gates;
- cPanel UAPI/Git deployment patterns and other deployment adapters;
- framework-specific CI guidance such as Laravel;
- rollback, validation, and deployment evidence.

## Non-negotiable rules

Agents MUST:

- treat `main`, `dev`, and `prod` as distinct roles defined by the branch contract;
- treat `prod` as the only standard production-deployment **source** unless an adopting project explicitly defines another contract;
- distinguish the workflow/control branch from the runtime branch or artifact being deployed;
- keep cPanel credentials in secrets/environments, never repository files or generated logs;
- distinguish the cPanel host from a browser session URL containing `/cpsess.../`;
- for cPanel Git deployments, verify the expected managed repository before calling `VersionControl/update`;
- inspect the adopting project's real manifests/scripts before choosing PHP, Node, Composer, npm, build, test, migration, or deployment commands;
- compile/build in CI when the adopting project contract requires CI-produced assets rather than assuming cPanel can build them;
- fail closed when branch, environment, credentials, artifact, or deployment target is ambiguous;
- update `DevOpsbasic/CHANGELOG.md` for notable subsystem changes.

Agents MUST NOT:

- infer production from the default GitHub branch;
- deploy `main` merely because GitHub marks it default or because a deployment workflow lives there;
- promote directly from an arbitrary feature branch to `prod` under the standard branch model;
- paste API tokens, passwords, private keys, or cPanel session URLs into workflow source;
- silently change an application's deployment root, public document root, PHP version, Node version, build command, or database migration policy;
- require a project-owned shell deployment adapter when cPanel Git `VersionControl/update` is itself the adopted deployment mechanism;
- treat workflow templates as proof that an adopting repository actually implements them.

## Workflow-template rule

Files under `templates/` are reusable subject artifacts, not SABOS Lib's own CI/CD implementation. Keep provider- and framework-specific assumptions explicit.

For the baseline cPanel Git pattern, the workflow itself may call cPanel `VersionControl/retrieve` and `VersionControl/update` directly. Use a project-owned deployment adapter only when the actual deployment strategy requires project-specific server operations such as artifact extraction, release directories, symlink activation, migrations, cache operations, or rollback mechanics.

## Branch-control projection

When a workflow must execute on `dev` or `prod`, GitHub may require the workflow file to exist on that branch. When agents need branch-local instructions, a scoped `AGENTS.md` may also need to exist there.

A manually dispatched deployment workflow may instead live on `main` and explicitly direct cPanel to update `dev` or `prod`. In that model, do not confuse the workflow's location with the deployment source.

Treat branch-local control files as synchronized projections of the canonical governance maintained on `main`; do not independently evolve competing copies.
