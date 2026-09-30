# GitHub Actions Contract and Guidance

## Trigger mapping

Under the standard DevOpsbasic branch model:

| Event | Intended action |
| --- | --- |
| Pull request to `dev` | Validate candidate development change. |
| Push/merge to `dev` | Validate integrated development state. May automatically deploy development only when the project explicitly adopts automatic deployment. |
| Manual development deployment | A control-plane workflow may live on `main` and explicitly deploy/update `dev`. |
| Pull request `dev → prod` | Run production-candidate validation. |
| Push/merge to `prod` | Establish/update the production deployment source. Automatic production deployment is optional policy, not implied by the branch name. |
| Manual production deployment | A control-plane workflow may live on `main` and explicitly deploy/update `prod`, subject to production authorization. |
| Changes to `main` | Validate governance/control material; never implicitly make `main` the runtime deployment source. |

CI success and deployment authorization are separate states.

## Workflow branch versus deployment branch

A GitHub Actions workflow can be evaluated from one ref while acting on another explicitly named deployment source.

For example, the baseline cPanel Git pattern may use:

```text
main/.github/workflows/deploy-dev.yml
      ↓ workflow_dispatch
DEPLOY_BRANCH=dev
      ↓ VersionControl/update
development server
```

The workflow definition's branch is control-plane context. `DEPLOY_BRANCH` is runtime deployment context.

Do not infer one from the other.

## Workflow availability

For push/pull-request events, do not assume a workflow stored only on `main` will govern every event on another branch. The adopting project must ensure required workflow definitions are available in the refs GitHub evaluates for those events, or use a supported reusable-workflow/control-plane design.

This limitation does not require duplicating a manually dispatched `main` deployment controller that explicitly updates another branch through an external API.

## Permissions

Workflows SHOULD default to minimal permissions, normally:

```yaml
permissions:
  contents: read
```

Escalate to `contents: write`, pull-request write, deployments, packages, or other permissions only for jobs that require them.

## Secrets and environments

Use GitHub Environments to separate at least development/staging and production credentials when the project has both.

Production credentials MUST NOT be available to ordinary development jobs unless the platform configuration makes that exposure unavoidable and the risk is explicitly accepted.

Never echo API tokens. Avoid dumping full HTTP request headers or environment variables in failure diagnostics.

## CI-produced builds

For environments such as shared cPanel hosting, build dependencies may not exist or may differ from CI. When the project contract calls for CI compilation:

1. install dependencies in CI from lock files;
2. validate/test before packaging;
3. build frontend assets in CI;
4. package only deployment-required files;
5. tie the artifact to the source SHA;
6. deploy that artifact or exact validated source state;
7. run post-deploy health checks when required by the adopted deployment policy.

Do not silently compile a different revision on the server.

This artifact model is distinct from the baseline cPanel Git `VersionControl/update` model, where cPanel updates a managed checkout from an explicit branch.

## Project-owned commands

A workflow template MUST NOT invent application commands. Before adoption, inspect the project's actual `composer.json`, `package.json`, framework files, deployment scripts, and hosting constraints.

The templates in DevOpsbasic intentionally expose clear points where a consuming repository must confirm its own commands and paths.
