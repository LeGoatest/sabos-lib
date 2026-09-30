# GitHub Actions Contract and Guidance

## Trigger mapping

Under the standard DevOpsbasic branch model:

| Event | Intended action |
| --- | --- |
| Pull request to `dev` | Validate candidate development change. |
| Push/merge to `dev` | Validate integrated development state; optionally deploy staging/development. |
| Pull request `dev → prod` | Run production-candidate validation. |
| Push/merge to `prod` | Deploy the exact merged `prod` commit to production. |
| Changes to `main` | Validate governance/control material; never implicitly deploy production. |

## Workflow availability

Do not assume a workflow stored only on `main` will govern every event on another branch. The adopting project must ensure required workflow definitions are available in the refs GitHub evaluates for those events, or use a supported reusable-workflow/control-plane design.

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
7. run post-deploy health checks.

Do not silently compile a different revision on the server.

## Project-owned commands

A workflow template MUST NOT invent application commands. Before adoption, inspect the project's actual `composer.json`, `package.json`, framework files, deployment scripts, and hosting constraints.

The templates in DevOpsbasic intentionally expose clear points where a consuming repository must confirm its own commands and paths.
