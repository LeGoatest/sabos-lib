# Post-Deployment Validation Pattern

> **Status:** Optional DevOpsbasic enhancement
> **Scope:** Validation performed after a deployment mechanism has already updated the target environment

## Purpose

A successful deployment API call is not proof that the deployed application works.

DevOpsbasic therefore separates:

```text
deployment transport result
from
deployed application result
```

For cPanel Git deployments, `VersionControl/update` success means cPanel accepted and performed the repository update. Browser, application, route, asset, or health validation is independent evidence.

## Enhanced sequence

A project MAY extend the baseline cPanel workflow with:

```text
explicit deployment authorization
        ↓
verify cPanel repository
        ↓
VersionControl/update
        ↓
run deployed-site validation
        ↓
publish reports/screenshots
        ↓
fail overall workflow if deployed validation fails
```

The deployment step and validation step SHOULD retain separate outcomes so operators can distinguish:

- deployment transport failure;
- successful deployment followed by application failure;
- successful deployment and successful deployed-result validation.

## Request-file authorization

A repository MAY use a small versioned request file such as:

```text
.github/deploy-dev.request
```

as the trigger for an enhanced deployment workflow.

This can preserve durable deployment intent in Git history, including what was authorized and when. It is particularly useful for agent-assisted workflows where a concise user instruction such as `deploy` should not depend solely on conversational history.

Request-file authorization is optional. It does not replace normal repository permissions, GitHub Environment controls, secret protection, or explicit branch/target mapping.

## Browser validation

Playwright or another browser runner may validate the actual deployed URL after the cPanel update.

Useful checks include:

- HTTP status;
- required routes/pages;
- JavaScript/page errors;
- failed same-origin requests;
- broken images/assets;
- accessibility/semantic invariants that are reliable to automate;
- responsive overflow;
- key interactions;
- project-specific rendered-output contracts.

A project SHOULD use repository-owned validation scripts rather than embedding large project-specific browser logic directly into a generic deployment template.

## Evidence

Enhanced validation MAY publish:

- GitHub step summaries;
- JSON/Markdown reports;
- screenshots;
- browser/server logs;
- workflow artifacts retained for a defined period.

Evidence should identify the tested environment and source SHA/branch when available.

## Failure semantics

Validation steps MAY run with `continue-on-error: true` when the workflow needs to collect all reports before deciding the final state.

A final explicit gate should then fail the workflow when one or more required deployed-result validators failed.

This pattern allows diagnostics to be captured without falsely reporting a broken deployed application as successful.

## Workflow heartbeat/diagnostics

A separate heartbeat or diagnostic workflow MAY inspect all GitHub Actions runs associated with the triggering SHA when several request-file workflows can start together.

This is an observability enhancement only. It MUST NOT mutate the branch or substitute for the actual deployment/validation jobs.
