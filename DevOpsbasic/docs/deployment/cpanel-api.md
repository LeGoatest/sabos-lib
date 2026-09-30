# cPanel API Deployment Contract

> **Scope:** cPanel/UAPI-backed deployments from GitHub Actions or comparable automation

## Baseline deployment model

The baseline DevOpsbasic cPanel pattern is intentionally simple and mirrors a proven project workflow:

```text
manual workflow_dispatch
        ↓
verify CPANEL_API_TOKEN
        ↓
VersionControl/retrieve
        ↓
confirm expected managed repository root
        ↓
VersionControl/update
        ↓
cPanel pulls explicit DEPLOY_BRANCH
```

The GitHub workflow MAY live on `main` as part of the project's control plane. The branch deployed to the server is selected explicitly by `DEPLOY_BRANCH`; workflow location and default-branch status do not choose the runtime source.

For the standard branch model:

```text
DEPLOY_BRANCH=dev  → development/staging target
DEPLOY_BRANCH=prod → production target
main               → control/governance source, not runtime source
```

A baseline deployment does **not** require a project-owned shell deployment adapter when cPanel Git Version Control is itself the deployment mechanism.

## Identity fields

Keep these concepts distinct:

- **cPanel host** — server hostname or IP used to reach cPanel, stored without protocol, port, or browser-session path when the workflow constructs the UAPI URL itself.
- **cPanel IP** — optional fixed address used with `curl --resolve` when the project deliberately pins the cPanel hostname to a known server address.
- **cPanel username** — account username authorized for the API token.
- **cPanel API token** — secret credential generated for API access.
- **browser session URL** — a temporary interface URL that may contain `/cpsess.../`; it is not the canonical API host and MUST NOT be stored as deployment configuration.
- **repository root** — exact cPanel-managed Git repository path, for example `/home/account/dev.example.com`.
- **deployment branch** — explicit Git branch cPanel should update, such as `dev` or `prod`.

An agent MUST NOT infer one field from another when the project has authoritative configuration available.

## Secret and variable model

At minimum, protect the API token as a GitHub secret:

```text
CPANEL_API_TOKEN
```

The following are commonly project/environment configuration rather than secrets:

```text
CPANEL_HOST
CPANEL_IP            # optional
CPANEL_USER
REPOSITORY_ROOT
DEPLOY_BRANCH
```

A project MAY store additional values as secrets when its threat model requires it.

Development and production SHOULD use separate GitHub Environments and distinct repository roots. Separate credentials are preferred when practical.

## Authentication

For cPanel UAPI token authentication, cPanel documents the header form:

```text
Authorization: cpanel username:APITOKEN
```

against an HTTPS UAPI URL shaped like:

```text
https://server.example:2083/execute/Module/function
```

cPanel documents port `2083` for secure UAPI calls as a cPanel account and explicitly warns custom automation not to use cPanel interface URLs such as `/cpsess.../frontend/...` in place of API functions.

Do not print the authorization header or token unnecessarily.

## Repository verification

Before changing server state, the baseline workflow SHOULD call:

```text
VersionControl/retrieve
```

and verify that the expected `REPOSITORY_ROOT` is present in cPanel's managed Git repositories.

This establishes two separate facts:

1. the token can successfully call cPanel UAPI; and
2. the intended deployment target is actually registered with cPanel Git Version Control.

A successful API response without the expected repository root MUST NOT be treated as a valid deployment target.

## Repository update

After repository verification succeeds, the workflow calls:

```text
VersionControl/update
```

with explicit parameters equivalent to:

```text
repository_root=<REPOSITORY_ROOT>
branch=<DEPLOY_BRANCH>
```

The update MUST fail closed if cPanel reports an unsuccessful status.

The workflow SHOULD print a concise success message identifying the environment/repository and branch, but MUST NOT expose the API token.

## Manual dispatch as baseline

The baseline template uses:

```yaml
on:
  workflow_dispatch:
```

This keeps deployment separate from ordinary code pushes. A human or authorized agent explicitly starts the deployment after the desired source branch is ready.

Projects MAY adopt automatic deployment from `dev`/`prod`, but that is a separate policy decision and MUST NOT be inferred merely because CI succeeds.

## Enhanced deployment-and-validation pattern

Post-deployment browser validation, request-file authorization, screenshots, health checks, artifact upload, and workflow-heartbeat diagnostics are valuable **enhancements**, not prerequisites for the baseline cPanel Git update.

A project may extend the baseline sequence to:

```text
explicit deploy authorization
        ↓
VersionControl/retrieve
        ↓
VersionControl/update
        ↓
validate the actually deployed site
        ↓
publish reports/screenshots
        ↓
fail if deployed-result validation fails
```

The cPanel update result and the application validation result MUST remain separate states. A successful `VersionControl/update` proves that cPanel accepted the repository update; it does not independently prove that the deployed application renders or behaves correctly.

See [`post-deploy-validation.md`](post-deploy-validation.md) for the enhanced pattern.

## Artifact-based deployments

Some applications, especially Laravel projects on shared hosting, may instead deploy a verified build artifact containing compiled assets and production dependencies. That is a different deployment strategy from cPanel Git `VersionControl/update`.

DevOpsbasic MUST preserve the distinction:

```text
cPanel Git deployment → server updates a managed Git checkout
artifact deployment   → CI builds/verifies immutable package, server installs that package
```

Do not insert an application-specific shell adapter into the Git-update baseline merely because another project uses artifact deployment.

## Fail-closed conditions

A cPanel Git deployment MUST stop when any of these are unresolved:

- `DEPLOY_BRANCH` is missing or not authorized for the selected target environment;
- `REPOSITORY_ROOT` is missing;
- cPanel host is missing, includes a protocol/path, or appears to be a transient `/cpsess.../` browser URL;
- API token is missing;
- `VersionControl/retrieve` fails;
- the expected repository root is not returned;
- `VersionControl/update` fails.

For production, `DEPLOY_BRANCH` MUST resolve to the project's production branch (`prod` under the standard model), regardless of where the workflow definition itself lives.

## Provider references

- cPanel API Tokens: https://api.docs.cpanel.net/cpanel/tokens
- cPanel UAPI introduction: https://api.docs.cpanel.net/cpanel/introduction
- cPanel Git Version Control UAPI: https://api.docs.cpanel.net/openapi/cpanel/operation/VersionControl-retrieve/
