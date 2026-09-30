# Laravel CI and Shared-Hosting Deployment

## Principle

For Laravel applications deployed to cPanel/shared hosting, validate and compile as much as practical in CI so production does not become an unverified build environment.

## Typical prerequisite order

The exact commands and versions are project-owned, but a Laravel CI pipeline commonly resolves them in this order:

```text
checkout exact commit
→ establish PHP/runtime version
→ validate Composer metadata
→ install locked PHP dependencies
→ establish test environment and APP_KEY
→ static/syntax checks when defined
→ framework/package discovery
→ route/config boot validation
→ test database preparation
→ migrations
→ Laravel tests
→ establish Node runtime when frontend build exists
→ npm ci from package-lock.json
→ frontend/Tailwind build
→ package deployable artifact
```

Dependent checks MUST NOT continue when a prerequisite that makes their result meaningless has failed.

## Build ownership

If the application uses Tailwind, Vite, or another frontend compiler, define whether generated browser assets are:

- built in CI and deployed; or
- built on the server by an explicitly supported production build process.

For cPanel/shared hosting, CI-produced assets are generally easier to make deterministic because Node tooling may not be available or may differ on the server.

## Laravel state that must not come from Git

Do not package environment secrets into the repository artifact. Production `.env`, application secrets, database credentials, OAuth secrets, and cPanel credentials remain environment/server configuration.

Writable runtime state such as `storage/` content must follow the application's deployment architecture rather than being overwritten blindly by each release.

## Migrations

A successful migration in an isolated CI database proves migration syntax/order against the tested schema; it does not prove a production migration is safe for existing production data.

The adopting project must explicitly define whether production deployment runs migrations automatically, requires approval, or uses a separate migration step.

## Health evidence

A production deployment SHOULD record at least:

- deployed commit SHA;
- target environment;
- deployment result;
- application health endpoint or equivalent smoke check;
- migration result when migrations were in scope.
