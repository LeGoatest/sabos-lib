# Example: Laravel Capability Packages + Domain Boundaries

**Status:** Illustrative target topology, not a report of any current Laravel repository. Preserve framework-owned directories and existing project build choices.

~~~text
project/
├── app/
│   ├── Http/
│   │   └── Controllers/
│   ├── Filament/
│   ├── Providers/
│   └── Support/
├── packages/
│   ├── Identity/
│   │   ├── Domain/
│   │   ├── Application/
│   │   ├── Infrastructure/
│   │   ├── Contracts/
│   │   └── Presentation/
│   ├── Clients/
│   │   ├── Domain/
│   │   ├── Application/
│   │   ├── Infrastructure/
│   │   └── Contracts/
│   └── Media/
│       ├── Domain/
│       │   ├── Entities/
│       │   ├── ValueObjects/
│       │   └── Events/
│       ├── Application/
│       │   ├── Commands/
│       │   └── Queries/
│       ├── Infrastructure/
│       ├── Contracts/
│       └── Presentation/
├── bootstrap/
├── config/
├── database/
│   ├── migrations/
│   └── factories/
├── resources/
│   ├── views/
│   └── css/input.css
├── routes/
│   └── web.php
├── public/
│   ├── index.php
│   └── assets/
│       └── css/app.css
├── storage/
│   └── app/private/
├── tests/
├── docs/
├── composer.json
├── README.md
├── AGENTS.md
└── CHANGELOG.md
~~~

**Status and build:** This is a directory *example*, not a compiled application, dependency lock, routing or CI report. Where a project uses Tailwind CSS CLI, it may explicitly map editable `resources/css/input.css` to generated `public/assets/css/styles.css`; other framework-compatible source/output filenames also remain valid. A theme-specific stylesheet can have an independent source/output contract. Empty folders are optional and should only be deliberately scaffolded and labeled.

**Boundary rule:** a Media application use case can call another capability's published contract, not its private controller/repository. The domain must not depend on Laravel HTTP request classes or concrete storage. For simple operations, omit unnecessary folders/classes; packages/ requires deliberate PSR-4 Composer autoload mappings and service-provider wiring.

**Web delivery:** Blade SSR, HTMX partial responses, an Alpine CSP component, service worker and optional Filament administration do not contradict this backend composition. They each own different responsibility. Filament is a presentation integration and must not implement authorization as an unrelated second policy system.

**Persistence:** shared physical DB does not imply free cross-module table writes. Define aggregate/tenant ownership, migration authority and transaction boundaries; [DBbasic](../../DBbasic/README.md) governs database specifics.
