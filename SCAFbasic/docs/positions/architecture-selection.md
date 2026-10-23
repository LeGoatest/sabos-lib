# Practitioner Position: Structure for Responsibilities

> **Authority:** Explicit practitioner preference, **not** a universal binding contract.

For websites and web applications with more than a handful of independent business capabilities, prefer **a modular monolith** with explicit capability boundaries over prematurely splitting independently deployed microservices. Model rich business areas with DDD where meaningful; keep simple content or CRUD features proportionally simple. At the web boundary, existing PHP MVC, Laravel controllers/Blade/Filament, HTMX, Alpine and other framework conventions remain valid.

Why this is preferred:

1. One deployable system is often appropriate for modest operational budgets and shared hosting.
2. Feature boundaries make ownership, testing and documentation legible.
3. DDD and clear domain/application/infrastructure responsibilities help when business invariants justify them.
4. Separating presentation from business rules avoids controller and template coupling.
5. Contracts/ports and events are introduced at real module integration boundaries, not merely to fill folders.
6. Public source/asset, private runtime storage and canonical generated-output paths should be unambiguous.
7. A pre-existing working architecture should be preserved until an explicitly approved structural migration demonstrates concrete benefit.

**Exceptions:** A traditional MVC application is often sufficient for smaller systems; independent services can be preferable when teams must deploy, scale or isolate specific capabilities; a static site may need neither domain modules nor application framework. HMVC is a valid organizational approach where controller/module composition has genuine value, but is not the default substitute for domain boundaries.

**Source context:** Illustrations are informed by the project-pattern examples supplied by the user and the architecture comparisons cataloged in [the model index](../models/README.md). Do not treat an illustrative tree as a current implementation fact about any specific repository.
