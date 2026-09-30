# cPanel API Deployment Contract

> **Scope:** cPanel/UAPI-backed deployments from GitHub Actions or comparable automation

## Identity fields

Keep these concepts distinct:

- **cPanel host** — server hostname or IP used to reach cPanel, stored without protocol, port, or browser-session path when the workflow constructs the UAPI URL itself.
- **cPanel username** — account username authorized for the API token.
- **cPanel API token** — secret credential generated for API access.
- **browser session URL** — a temporary interface URL that may contain `/cpsess.../`; it is not the canonical API host and MUST NOT be stored as deployment configuration.
- **deployment target/root** — project-specific filesystem/repository destination on the hosting account.

An agent MUST NOT infer one field from another when the project has authoritative configuration available.

## Secret model

Recommended environment-scoped secret names:

```text
CPANEL_HOST
CPANEL_USERNAME
CPANEL_API_TOKEN
```

Project-specific non-secret variables may additionally define the repository/deployment root and application URL.

Development and production SHOULD use separate GitHub Environments and separate credentials/targets when practical.

## Branch mapping

```text
dev  → development/staging cPanel target
prod → production cPanel target
main → no runtime deployment
```

The workflow MUST derive the deployment environment from an explicit branch/environment mapping, not from whichever branch happens to be default.

## Authentication verification

Before mutating the server, a workflow SHOULD perform a read-only API authentication check and fail clearly if the host, username, token, TLS connection, or expected cPanel response is invalid.

For cPanel UAPI token authentication, cPanel documents the header form:

```text
Authorization: cpanel username:APITOKEN
```

against an HTTPS UAPI URL shaped like:

```text
https://server.example:2083/execute/Module/function
```

cPanel documents port `2083` for secure UAPI calls as a cPanel account and explicitly warns custom automation not to use cPanel interface URLs such as `/cpsess.../frontend/...` in place of API functions.

Do not print the authorization header or token response data unnecessarily.

## Deployment adapter

Provider authentication and application deployment are different responsibilities.

Prefer a project-owned adapter such as:

```text
scripts/deploy/cpanel.sh
```

The workflow owns:

- branch/environment gating;
- secret loading;
- API connectivity/authentication verification;
- selecting the exact source SHA/artifact;
- invoking the adapter;
- recording deployment evidence;
- post-deploy health checking.

The project adapter owns project-specific cPanel behavior such as repository paths, extraction paths, symlinks, maintenance mode, Composer behavior, migrations, cache operations, and rollback mechanics.

This prevents a generic SABOS template from guessing a cPanel account's filesystem or application topology.

## Fail-closed conditions

Production deployment MUST stop when any of these are unresolved:

- source branch is not `prod`;
- target environment is not explicitly production;
- cPanel host is missing, includes a protocol/path, or appears to be a transient `/cpsess.../` browser URL;
- API authentication fails;
- deployment adapter is missing;
- expected artifact/source SHA cannot be identified;
- required pre-deployment CI has failed or is unavailable under the adopting project's policy.

## Provider references

- cPanel API Tokens: https://api.docs.cpanel.net/cpanel/tokens
- cPanel UAPI introduction: https://api.docs.cpanel.net/cpanel/introduction
- cPanel Variables guidance recommending `Variables::get_user_information`: https://api.docs.cpanel.net/guides/guide-to-cpanel-variables
