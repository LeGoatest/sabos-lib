# DevOpsbasic Templates

Templates are reusable subject artifacts. They are intentionally not active SABOS Lib workflows.

Before copying a workflow into an adopting repository:

1. confirm the repository's actual branch names and environment names;
2. inspect project manifests and scripts;
3. confirm runtime versions;
4. confirm required GitHub permissions;
5. create environment-scoped secrets/variables;
6. confirm the exact cPanel-managed repository root and deployment branch;
7. validate on `dev` before enabling production deployment.

## GitHub workflow templates

- `github/workflows/branch-policy.yml` — enforces `dev → prod` as the production-promotion source.
- `github/workflows/laravel-ci.yml` — Laravel validation/build starting point.
- `github/workflows/deploy-cpanel.yml` — baseline manually dispatched cPanel Git deployment using `VersionControl/retrieve` followed by `VersionControl/update` for an explicit `DEPLOY_BRANCH`.

The baseline cPanel template intentionally does not require a project-owned shell adapter. Add an adapter only when the adopting project uses an artifact/release deployment strategy or requires project-specific server-side actions beyond cPanel Git update.

Post-deployment Playwright validation, request-file triggers, screenshots/reports, and workflow heartbeat diagnostics are documented as optional enhanced patterns rather than embedded into the baseline deployment template.
