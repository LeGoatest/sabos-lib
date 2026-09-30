# Branch and Promotion Contract

> **Status:** Binding DevOpsbasic contract when adopted

## Branch roles

### `main` — governance/control plane

`main` is the canonical project-control branch. It is the preferred home for:

- project documentation;
- governance and architecture records;
- `AGENTS.md` and related agent instructions;
- changelogs;
- workflow definitions and operational policy;
- project metadata and other non-runtime control material.

`main` MUST NOT be interpreted as production merely because it is the GitHub default branch or because a manually dispatched deployment workflow is defined there.

### `dev` — current development

`dev` is the integration branch for current application work.

Normal code flow is:

```text
feature/* or fix/* → dev
```

A development deployment MUST resolve its runtime source from `dev` under the standard model. The GitHub Actions workflow that initiates that deployment MAY live on `main` as part of the control plane.

### `prod` — production line

`prod` represents the exact code state approved for production.

Normal promotion is:

```text
dev → prod
```

A production deployment MUST resolve its runtime source commit from `prod`. A deployment system MUST NOT silently substitute `main`, `dev`, the default branch, or the caller's local checkout.

## Trigger branch versus deployment source

The branch/ref from which GitHub evaluates a workflow is not automatically the branch that should be deployed.

DevOpsbasic distinguishes:

```text
workflow/control source → where the deployment instructions live
deployment/runtime source → the branch or artifact being deployed
```

A valid manual cPanel model is therefore:

```text
main/.github/workflows/deploy-dev.yml
          ↓ workflow_dispatch
explicit DEPLOY_BRANCH=dev
          ↓ cPanel VersionControl/update
dev runtime source → development server
```

Likewise a production workflow MAY live on `main` while explicitly deploying only `prod`.

The deployment source MUST be explicit and auditable. The workflow's location or default branch MUST NOT implicitly select the runtime source.

## Production gate

A standard production promotion SHOULD require:

1. CI success on the candidate `dev` commit;
2. a pull request or otherwise auditable promotion from `dev` to `prod`;
3. required review/approval when configured;
4. production environment authorization where supported;
5. deployment evidence tied to the exact `prod` commit or immutable artifact built from it.

## Control-plane projections

Some GitHub Actions triggers require a workflow to exist on the ref being evaluated. When that applies, an adopting project MAY maintain synchronized copies of required control-plane files on `dev` and `prod`, including:

- `.github/workflows/**` required on those refs;
- scoped `AGENTS.md` files required for branch-local automated work;
- small machine-readable deployment metadata required by CI.

This is not required for a manual control-plane workflow on `main` that explicitly directs cPanel to update another branch.

The canonical policy remains on `main`. Projected files MUST NOT be edited independently in ways that create competing governance.

Where practical, synchronization SHOULD be mechanical and reviewed for drift.

## Drift rules

- Runtime code MAY legitimately differ between `dev` and `prod`.
- Governance on `main` MAY be ahead of projected copies while a synchronization change is pending, but the difference must be deliberate and observable.
- `prod` SHOULD be deployable without reconstructing missing application state from `dev` or `main`.
- A production hotfix made directly against `prod` MUST be reconciled back into `dev`; otherwise the next promotion can reintroduce the defect.

## Rollback semantics

Rollback means selecting a known-good production commit/artifact and redeploying it. It does not mean force-moving branches or deleting history by default.

If a project uses release artifacts, the artifact MUST remain traceable to a specific source SHA.
