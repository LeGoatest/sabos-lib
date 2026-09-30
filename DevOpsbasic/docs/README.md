# DevOpsbasic Knowledge Index

DevOpsbasic documentation separates provider-independent operational contracts from provider/framework adapters.

## Domains

- [`branching/branch-model.md`](branching/branch-model.md) — branch roles, promotion, control-plane projection, and drift rules.
- [`ci-cd/github-actions.md`](ci-cd/github-actions.md) — GitHub Actions triggers, permissions, artifacts, validation, and environment gating.
- [`deployment/cpanel-api.md`](deployment/cpanel-api.md) — cPanel API authentication and deployment-adapter contract.
- [`frameworks/laravel-ci.md`](frameworks/laravel-ci.md) — Laravel validation/build sequence for projects deployed to cPanel/shared hosting.

Reusable workflow artifacts live under [`../templates/`](../templates/README.md).

## Authority distinction

Provider documentation is authoritative for provider mechanics. DevOpsbasic contracts are authoritative for the branch/deployment semantics explicitly adopted by a project. Templates demonstrate an implementation path but do not independently redefine the contract.
