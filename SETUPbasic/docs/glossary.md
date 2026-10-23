# SETUPbasic Glossary

| Term | Meaning |
| --- | --- |
| Architecture model/style | Named way of dividing system responsibilities, dependencies, interaction or deployment. |
| Axis | Independent dimension of an architecture choice (e.g., deployment vs rendering). |
| Module | Code boundary owning a capability and exposing a deliberate interface; not necessarily separately deployed. |
| Bounded context | DDD boundary inside which a domain language/model has consistent meaning. |
| Aggregate | DDD transactional consistency boundary around entities/value objects and invariants. |
| Domain | Business concepts, behaviors and rules independent of transport/storage details. |
| Application layer | Use-case orchestration and coordination around domain behavior. |
| Infrastructure | Concrete interaction with databases, networks, external APIs and framework mechanisms. |
| Contract | Published interface or adopted normative obligation; SETUPbasic explicitly labels the sense intended. |
| Port | Abstract interface exposing an interaction at a system/module boundary. |
| Adapter | Implementation translating to/from a port and external technology. |
| Controller | Presentation/request coordination; not equivalent to business-domain service. |
| Model | Ambiguous: MVC model, ORM persistence record, domain entity, data schema or architecture model. Qualify which. |
| View | HTML/UI presentation or data read projection; qualify which. |
| Package | Dependency/distribution namespace; need not be a service. |
| Service | Ambiguous: internal application/domain service or separately deployable network service. Qualify which. |
| Deployment unit | Independently built/released runtime component. |
| SSR / SSG / CSR | Server-side rendering / static site generation / client-side rendering. |
| MPA / SPA | Multi-page application / single-page application navigation models. |
| PWA | Progressive web app with optional install/offline enhancements. |
| CQRS | Command-query responsibility segregation; writes and reads have distinct models/paths. |
| Event sourcing | Durable events are canonical state history; different from merely emitting events. |
| Framework convention | Framework-owned paths/lifecycle/configuration expectations; not merely style preference. |
| Reference tree | Illustrative folder hierarchy, not a live repository inspection or an adopted architecture. |
| Generated output | Artifact produced from declared editable source, not the canonical editing target. |
