# DevOpsbasic

A governed knowledge system for repository workflow, branch semantics, CI/CD, deployment, environment separation, production promotion, and hosting-provider adapters.

DevOpsbasic does **not** make SABOS Lib itself an application or deployment repository. It defines reusable operational contracts and templates for adopting projects.

## Core branch model

| Branch | Role | Deployment meaning |
| --- | --- | --- |
| `main` | Canonical project governance/control plane: documentation, `AGENTS.md`, changelogs, workflow policy, operational contracts, and project metadata. | Never implied to be production. |
| `dev` | Current application-development integration line. | May deploy only to a development/staging environment. |
| `prod` | Exact production-candidate/production line. | Only branch authorized to trigger production deployment. |

The branch names are semantic contracts, not cosmetic conventions.

`main` remains the canonical home for project governance. Operational files that GitHub or repository agents must read while operating on `dev` or `prod`—notably required `.github/workflows/**` and scoped agent instructions—may need synchronized copies on those branches. Such copies are control-plane projections; they do not make `dev` or `prod` the authority for governance.

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

Production promotion is `dev → prod`. Production deployment is `prod → production environment`. `main` is not inserted into that runtime promotion chain.

## What lives here

- [`docs/branching/branch-model.md`](docs/branching/branch-model.md) — binding branch semantics and promotion contract.
- [`docs/ci-cd/github-actions.md`](docs/ci-cd/github-actions.md) — GitHub Actions design and validation boundaries.
- [`docs/deployment/cpanel-api.md`](docs/deployment/cpanel-api.md) — cPanel API authentication, environment mapping, and deployment-adapter rules.
- [`docs/frameworks/laravel-ci.md`](docs/frameworks/laravel-ci.md) — Laravel CI/build guidance for shared-hosting deployments.
- [`templates/github/workflows/`](templates/github/workflows/) — reusable workflow starting artifacts.

## Authority

DevOpsbasic owns operational workflow semantics for adopting projects. It does not override repository-wide SABOS governance, application architecture owned by WDBASIC or another project contract, or provider behavior documented by GitHub/cPanel.

Templates are starting artifacts. A consuming project must reconcile them with its actual commands, versions, paths, environment names, and hosting configuration before adoption.

## Governing doctrine

> **Branch names must have one meaning, deployments must have one source, and production must never depend on conversational memory.**
