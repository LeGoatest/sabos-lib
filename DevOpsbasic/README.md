# DevOpsbasic

A governed knowledge system for repository workflow, branch semantics, CI/CD, deployment, environment separation, production promotion, and hosting-provider adapters.

DevOpsbasic does **not** make SABOS Lib itself an application or deployment repository. It defines reusable operational contracts and templates for adopting projects.

## Core branch model

| Branch | Role | Deployment meaning |
| --- | --- | --- |
| `main` | Canonical project governance/control plane: documentation, `AGENTS.md`, changelogs, workflow policy, operational contracts, workflow definitions, and project metadata. | Never implied to be production; may host manually dispatched deployment workflows. |
| `dev` | Current application-development integration line. | Standard development/staging deployment source. |
| `prod` | Exact production-candidate/production line. | Standard production deployment source. |

The branch names are semantic contracts, not cosmetic conventions.

A workflow's location is not automatically its deployment source. A manual deployment workflow may live on `main` while explicitly directing cPanel to update `dev` or `prod`.

## Promotion model

```text
feature/fix work
      ↓
     dev
      ↓
 CI + review + explicit promotion
      ↓
     prod
      ↓
 production deployment

main = governance/control authority
```

Production promotion is `dev → prod`. Production deployment resolves its runtime source from `prod`. `main` may orchestrate that deployment but is not inserted into the runtime promotion chain.

## cPanel baseline

The baseline cPanel Git deployment pattern is based on a proven manual workflow:

```text
workflow_dispatch
      ↓
verify CPANEL_API_TOKEN
      ↓
VersionControl/retrieve
      ↓
confirm expected cPanel Git repository
      ↓
VersionControl/update
      ↓
cPanel pulls explicit DEPLOY_BRANCH
```

Post-deployment Playwright checks, request-file authorization, screenshots, and workflow-heartbeat diagnostics are optional enhanced validation patterns rather than requirements for the baseline deployment mechanism.

## What lives here

- [`docs/branching/branch-model.md`](docs/branching/branch-model.md) — binding branch semantics, trigger-vs-source distinction, and promotion contract.
- [`docs/ci-cd/github-actions.md`](docs/ci-cd/github-actions.md) — GitHub Actions design and validation boundaries.
- [`docs/deployment/cpanel-api.md`](docs/deployment/cpanel-api.md) — baseline cPanel UAPI/Git deployment contract using `VersionControl/retrieve` and `VersionControl/update`.
- [`docs/deployment/post-deploy-validation.md`](docs/deployment/post-deploy-validation.md) — optional enhanced deployed-result validation pattern.
- [`docs/frameworks/laravel-ci.md`](docs/frameworks/laravel-ci.md) — Laravel CI/build guidance for shared-hosting deployments.
- [`templates/github/workflows/`](templates/github/workflows/) — reusable workflow starting artifacts.

## Authority

DevOpsbasic owns operational workflow semantics for adopting projects. It does not override repository-wide SABOS governance, application architecture owned by WDBASIC or another project contract, or provider behavior documented by GitHub/cPanel.

Templates are starting artifacts. A consuming project must reconcile them with its actual commands, versions, paths, environment names, and hosting configuration before adoption.

## Governing doctrine

> **Branch names must have one meaning, deployments must have one explicit source, and production must never depend on conversational memory.**
