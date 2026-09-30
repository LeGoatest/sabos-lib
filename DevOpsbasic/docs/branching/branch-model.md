# Branch and Promotion Contract

> **Status:** Binding DevOpsbasic contract when adopted

## Branch roles

### `main` — governance/control plane

`main` is the canonical project-control branch. It is the preferred home for:

- project documentation;
- governance and architecture records;
- `AGENTS.md` and related agent instructions;
- changelogs;
- reusable workflow policy/templates;
- project metadata and other non-runtime control material.

`main` MUST NOT be interpreted as production merely because it is the GitHub default branch.

### `dev` — current development

`dev` is the integration branch for current application work.

Normal code flow is:

```text
feature/* or fix/* → dev
```

A push/merge to `dev` MAY trigger CI and a development/staging deployment. It MUST NOT trigger production deployment under this model.

### `prod` — production line

`prod` represents the exact code state approved for production.

Normal promotion is:

```text
dev → prod
```

A production deployment MUST resolve its source commit from `prod`. A deployment system MUST NOT silently substitute `main`, `dev`, the default branch, or the caller's local checkout.

## Production gate

A standard production promotion SHOULD require:

1. CI success on the candidate `dev` commit;
2. a pull request or otherwise auditable promotion from `dev` to `prod`;
3. required review/approval when configured;
4. production environment authorization where supported;
5. deployment evidence tied to the exact `prod` commit SHA.

## Control-plane projections

GitHub Actions and repository agents operate from files available in the branch/ref they evaluate. Therefore, an adopting project MAY maintain synchronized copies of required control-plane files on `dev` and `prod`, including:

- `.github/workflows/**` required on those refs;
- scoped `AGENTS.md` files required for branch-local automated work;
- small machine-readable deployment metadata required by CI.

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
