# Primary and Practitioner Sources

These references support catalog definitions and trade-off discussions. Vendor recommendations are authoritative for their own products and documented scope, not universal architectural mandates. Individual patterns may predate this synthesis.

## Architectural patterns

- [Martin Fowler — Catalog of Patterns of Enterprise Application Architecture](https://martinfowler.com/eaaCatalog/): Transaction Script, Domain Model, Table Module, Active Record, Data Mapper, Repository-related enterprise patterns, services and persistence.
- [Martin Fowler — Monolith First (2015)](https://martinfowler.com/bliki/MonolithFirst.html): reasoned monolith/microservice tradeoffs, not an absolute ban on microservices.
- [Alistair Cockburn — Hexagonal Architecture](https://alistair.cockburn.us/hexagonal-architecture/): original ports-and-adapters concept.
- [AWS Prescriptive Guidance — Hexagonal Architecture](https://docs.aws.amazon.com/prescriptive-guidance/latest/cloud-design-patterns/hexagonal-architecture.html): ports, adapters, independence and overhead.
- [Microsoft Azure Architecture Center — Architecture Styles](https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/): N-tier, event-driven, microservices and web-queue-worker models with tradeoffs.
- [Microsoft — Web-Queue-Worker](https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/web-queue-worker): request versus background processing responsibility.
- [Microsoft — CQRS pattern](https://learn.microsoft.com/en-us/azure/architecture/patterns/cqrs): distinct read/write responsibilities.

## Framework and web-platform behavior

- [Laravel 13 — Directory Structure](https://laravel.com/framework/docs/structure): framework-owned app/bootstrap/config/database/public/resources/routes/storage/test conventions and flexible class organization.
- [PHP-FIG PSR-4](https://www.php-fig.org/psr/psr-4/): namespace-to-file autoloading rules for adopting PHP projects.
- [MDN — Progressive Web Apps](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps): web-install/offline capabilities and platform terms.
- [MDN — Progressive Enhancement](https://developer.mozilla.org/en-US/docs/Glossary/Progressive_Enhancement): enhancement approach distinct from a rendering framework.

## Internal primary project sources

- [SCAFbasic examples](../../examples/README.md): patterns synthesized as illustrations, not assertions of any current project code.
- [SABOS governance](../../../governance/README.md): authority/contract boundaries.
- [WDBASIC](../../../Wdbasic/README.md), [DBbasic](../../../DBbasic/README.md), [DevOpsbasic](../../../DevOpsbasic/README.md): controlling adjacent subject authorities.

When adding newly researched patterns, record author/owner, canonical URL, scope, dates or versions where material, and distinguish empirical validation from conceptual guidance.
