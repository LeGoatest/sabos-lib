# DevOpsbasic Templates

Templates are reusable subject artifacts. They are intentionally not active SABOS Lib workflows.

Before copying a workflow into an adopting repository:

1. confirm the repository's actual branch names and environment names;
2. inspect project manifests and scripts;
3. confirm runtime versions;
4. confirm required GitHub permissions;
5. create environment-scoped secrets;
6. replace or implement project-owned deployment adapter paths;
7. validate on `dev` before enabling production deployment.

## GitHub workflow templates

- `github/workflows/branch-policy.yml` — enforces `dev → prod` as the production-promotion source.
- `github/workflows/laravel-ci.yml` — Laravel validation/build starting point.
- `github/workflows/deploy-cpanel.yml` — branch/environment gated cPanel deployment starting point using a project-owned deployment adapter.
