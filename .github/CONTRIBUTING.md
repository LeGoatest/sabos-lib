# Contributing

SABOS Lib is a governed knowledge library. Start with the subsystem you are changing and preserve its authority model.

## TCBasic

The canonical contribution guide is [`../TCbasic/CONTRIBUTING.md`](../TCbasic/CONTRIBUTING.md).

TCBasic is maintained as a Tailwind CSS semantic-architecture knowledge framework with reference CSS under `TCbasic/src/` and illustrative examples under `TCbasic/examples/`.

Do not assume SABOS Lib builds, packages, publishes, or releases TCBasic. Package/build tooling mentioned in TCBasic documentation belongs to adopter environments unless explicitly stated otherwise.

## Other systems

For WDBASIC, SEObasic, READMEbasic, or governance changes:

1. Read the subsystem `README.md`.
2. Read the subsystem `AGENTS.md`.
3. Read the nearest nested `AGENTS.md`.
4. Preserve contracts, positions, standards, research, references, examples, glossaries, and operational artifacts as distinct knowledge types.
5. Update the owning `CHANGELOG.md` for notable changes.
6. Follow [`../governance/change-control.md`](../governance/change-control.md) when intentionally mutating an established contract or architecture.

Repository-wide changes also update [`../CHANGELOG.md`](../CHANGELOG.md) when notable.
