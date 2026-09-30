# DevOpsbasic Changelog

All notable changes to DevOpsbasic are documented here.

## [Unreleased]

### Added

- Initial DevOpsbasic knowledge system.
- Binding `main` / `dev` / `prod` branch-role model.
- Explicit `dev → prod → production` promotion/deployment contract.
- GitHub Actions guidance separating control-plane workflow files from runtime source branches.
- cPanel API deployment guidance with environment-scoped secrets and explicit host/token handling.
- Laravel CI guidance favoring validated CI builds before shared-hosting deployment.
- Reusable branch-policy, Laravel CI, and cPanel deployment workflow templates.
- Optional post-deployment validation pattern covering request-file authorization, deployed-site browser validation, reports/screenshots, and workflow heartbeat diagnostics.

### Changed

- Reframed the baseline cPanel deployment pattern around the proven manually dispatched cPanel Git flow: verify `CPANEL_API_TOKEN`, call `VersionControl/retrieve`, confirm the managed repository root, then call `VersionControl/update` for an explicit `DEPLOY_BRANCH`.
- Removed the generic project-owned shell adapter requirement from the baseline cPanel Git template; project adapters are now reserved for artifact/release strategies or server-side operations that genuinely require them.
- Clarified that a deployment workflow may live on `main` while `dev` or `prod` remains the explicit runtime deployment source.
- Clarified that automatic deployment on pushes to `dev` or `prod` is optional project policy rather than an implication of the branch-role model.
