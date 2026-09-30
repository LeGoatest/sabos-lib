# DevOpsbasic Knowledge Index

DevOpsbasic documentation separates provider-independent operational contracts from provider/framework adapters.

## Domains

- [`branching/branch-model.md`](branching/branch-model.md) — branch roles, promotion, workflow-trigger versus deployment-source semantics, control-plane projection, and drift rules.
- [`ci-cd/github-actions.md`](ci-cd/github-actions.md) — GitHub Actions triggers, permissions, artifacts, validation, and environment gating.
- [`deployment/cpanel-api.md`](deployment/cpanel-api.md) — baseline cPanel UAPI/Git deployment contract using `VersionControl/retrieve` and `VersionControl/update`.
- [`deployment/post-deploy-validation.md`](deployment/post-deploy-validation.md) — optional enhanced pattern for request-file authorization, deployed-site validation, reports/screenshots, and workflow diagnostics.
- [`frameworks/laravel-ci.md`](frameworks/laravel-ci.md) — Laravel validation/build sequence for projects deployed to cPanel/shared hosting.

Reusable workflow artifacts live under [`../templates/`](../templates/README.md).

## Authority distinction

Provider documentation is authoritative for provider mechanics. DevOpsbasic contracts are authoritative for the branch/deployment semantics explicitly adopted by a project. Templates demonstrate an implementation path but do not independently redefine the contract.
