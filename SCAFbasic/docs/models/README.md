# Architecture Model Catalog

This catalog describes the principal **models used to structure web sites, applications and platforms**. It deliberately separates independent decisions so that an architecture is a *combination* of compatible choices, not a single mutually exclusive label.

| Axis | Question | Inventory |
| --- | --- | --- |
| System topology | What is deployed, scaled and owned together? | [System and deployment styles](system-topologies.md) |
| Application/domain organization | How are implementation and business responsibilities divided? | [Application patterns](application-organization.md) |
| Browser presentation and delivery | What renders the interface, when and where? | [Presentation patterns](presentation-delivery.md) |
| Data and integration | How does state flow, persist and synchronize? | [Data and integration patterns](data-and-integration.md) |
| Repository/operations | How is source, build, release and ownership organized? | [Repository and operations patterns](repository-and-operations.md) |

## Entry contract

Every named model has an informative definition, its major boundary or responsibilities, a useful application context, and an explicit cost or failure mode. Category pages additionally provide illustrative physical directory layouts. The decision guide explains compatible combinations and when NOT to use each major family.

**Not literally all conceivable models:** Software terminology is open-ended. Add historically meaningful or operationally distinct patterns as justified; do not invent a universal definitive list. Avoid promoting a coding idiom, design principle, frontend renderer, repository layout and deployment topology into the same kind of exclusive "architecture choice."

## Common distinctions

- **Monolith vs microservices:** deployment/operation boundaries.
- **Modular monolith vs traditional layered application:** module ownership versus horizontal technical layers; can be combined.
- **MVC vs HMVC:** a presentation-separation pattern versus hierarchical/composable MVC modules; not the same as domain boundaries.
- **DDD vs MVC:** business modeling versus presentation separation; complementary.
- **DDD vs hexagonal/Clean/onion:** domain modeling versus dependency arrangement; complementary.
- **Vertical slices vs layers:** feature orientation versus responsibility orientation; they can coexist inside a module.
- **CQRS vs event sourcing:** separate write/read responsibilities versus reconstructing state from events; neither requires the other.
- **SSR vs SPA vs PWA:** server rendering, client navigation architecture and install/offline enhancement answer different questions.

## Adding a model

Record: canonical name and synonyms, category/axis, definition, boundaries, minimal structural sketch, when useful, benefits, costs/anti-patterns, compatibility/incompatibility and credible sources. Add a full standalone profile when a short catalog row cannot convey significant operational trade-offs. Keep library examples explicitly illustrative.
