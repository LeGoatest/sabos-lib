# SEObasic

> **Status:** Evolving knowledge framework  
> **Canonical entry point:** `SEObasic/README.md`  
> **Scope:** Websites, technical SEO, content, entities/internal linking, local search, Google Business Profile and maps/local-pack visibility, organic social media, paid media/PPC, YouTube, research, standards, and related digital discovery/conversion knowledge.

SEObasic is a living body of practitioner knowledge and governed guidance for how people, businesses, content, websites, and campaigns are discovered and understood across search and digital channels.

It is not intended to be a generic “SEO checklist.” It preserves accumulated practical experience, explicitly adopted positions, industry practice, platform guidance, formal standards, empirical research, historical lessons, examples, terminology, and binding contracts while keeping those source types distinguishable.

SEObasic complements WDBASIC rather than replacing it. WDBASIC continues to govern web architecture, accessibility, security, semantics, progressive enhancement, forms, and implementation behavior. SEObasic governs discovery, content/channel strategy, search/local/paid/social/video knowledge, and related evidence/contracts.

## Knowledge model

```text
practitioner experience + historical lessons
                +
industry practice + platform guidance
                +
standards + research evidence
                ↓
       documented positions
                ↓
          binding contracts
                ↓
channel / implementation / campaign practice
                ↓
        validation and outcomes
                ↓
     new lessons and research
```

The framework does not assume that the most common industry practice is automatically the preferred practice. A deliberate practitioner position may diverge from conventional advice as long as the distinction and rationale remain visible.

## Domain map

```text
SEObasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
├── contracts/
│   ├── README.md
│   ├── AGENTS.md
│   ├── truth-and-evidence.md
│   └── channel-boundaries.md
├── content/
│   ├── README.md
│   ├── AGENTS.md
│   ├── testing-philosophy.md
│   └── testing-method.md
├── websites/
│   ├── README.md
│   └── AGENTS.md
├── technical/
│   ├── README.md
│   ├── AGENTS.md
│   └── structured-data.md
├── entities/
│   ├── README.md
│   ├── AGENTS.md
│   └── entity-graph.md
├── local-search/
│   ├── README.md
│   └── AGENTS.md
├── social-media/
│   ├── README.md
│   └── AGENTS.md
├── paid-media/
│   ├── README.md
│   └── AGENTS.md
├── youtube/
│   ├── README.md
│   └── AGENTS.md
├── research/
│   ├── README.md
│   └── AGENTS.md
├── standards/
│   ├── README.md
│   └── AGENTS.md
├── references/
│   ├── README.md
│   ├── AGENTS.md
│   ├── testing-history.md
│   └── source-excerpts/
├── glossaries/
│   ├── README.md
│   ├── AGENTS.md
│   └── seo-and-marketing.md
└── examples/
    ├── README.md
    ├── AGENTS.md
    └── go/
        └── jsonld.go
```

The tree is intentionally expected to deepen over time. New folders should be created when a subject establishes a real knowledge or authority boundary, not merely to make the structure symmetrical.

## Authority and knowledge types

SEObasic distinguishes:

1. **Canonical practitioner philosophy/definition** — preserved wording or explicitly adopted definitions.
2. **Practitioner position** — preferred approaches grounded in accumulated practical experience.
3. **Contract** — adopted normative obligations that implementations/agents must preserve.
4. **Industry practice** — useful common professional practice, not automatic authority.
5. **Platform/vendor guidance** — authoritative for a platform's documented behavior and policy within its scope.
6. **Formal standard/specification** — normative within its defined scope/version.
7. **Research evidence** — empirical or scholarly evidence with method/scope/limitations preserved.
8. **Historical reference** — prior applications, decisions, and lessons that explain context without automatically governing the present.
9. **Example** — illustrative implementation, never authority merely because it exists.

Do not collapse these into an undifferentiated category called “best practices.”

See [`AGENTS.md`](AGENTS.md) for agent behavior and [`contracts/README.md`](contracts/README.md) for how positions become binding implementation contracts.

## Cross-domain contracts

Current binding cross-domain contracts include:

- [`contracts/truth-and-evidence.md`](contracts/truth-and-evidence.md) — material claims and signals must remain truthful and supported.
- [`contracts/channel-boundaries.md`](contracts/channel-boundaries.md) — reusable source material does not make channel mechanics interchangeable.

Future stable obligations may live as domain-local contracts when the rule belongs primarily to websites, technical SEO, local search, paid media, social media, YouTube, or another subject.

## T.E.S.T.I.N.G. content philosophy

SEObasic preserves one authoritative T.E.S.T.I.N.G. philosophy under [`content/testing-philosophy.md`](content/testing-philosophy.md):

- **T — Talk about the drive behind the passion**
- **E — Engage the audience**
- **S — Share updates of success and failures**
- **T — Take time out to talk about others**
- **I — Investigate new ideas publicly**
- **N — Network responsibly**
- **G — Gather content regularly**

The exact wording is also preserved verbatim under [`references/source-excerpts/2026-08-09-testing-method.md`](references/source-excerpts/2026-08-09-testing-method.md).

[`content/testing-method.md`](content/testing-method.md) provides application guidance without redefining the philosophy.

The method is holistic. Its principles may overlap inside a post, video, project, campaign, website asset, or broader content system; it must not be reduced to a mandatory one-letter-per-post rotation.

## Channel system

SEObasic explicitly treats the following as connected but separate disciplines:

### Websites

Owned, durable surfaces for positioning, service/location information, proof, content depth, conversion paths, internal relationships, and canonical first-party information.

See [`websites/`](websites/README.md).

### Organic social media

Publishing/community surfaces for posts, short-form content, conversation, collaboration, source-material reuse, and audience relationships.

See [`social-media/`](social-media/README.md).

### Paid media / PPC

Paid acquisition/distribution systems covering paid search and paid social, targeting, creative, landing-page alignment, measurement, bidding/budget, experiments, and business-outcome quality.

See [`paid-media/`](paid-media/README.md).

### Local search / Google Business Profile / maps

Local-intent discovery covering Google Business Profile, local/map-pack visibility, real-world business identity, service areas, reviews, citations, local proof, and website/profile relationships.

See [`local-search/`](local-search/README.md).

### YouTube

Video discovery and durable content covering channel positioning, titles/thumbnails, search/browse discovery, retention, playlists/series, Shorts/long-form relationships, community, analytics, and owned-channel relationships.

See [`youtube/`](youtube/README.md).

A strategy may use several channels at once, but platform mechanics, policies, evidence, and conversion roles must not be copied blindly between them.

## Technical and entity foundations

Technical SEO guidance lives under [`technical/`](technical/README.md), including the current structured-data framework at [`technical/structured-data.md`](technical/structured-data.md).

Entity/internal-link guidance lives under [`entities/`](entities/README.md), including [`entities/entity-graph.md`](entities/entity-graph.md).

Technical foundations should support useful content and real relationships; they do not justify fabricated proof, doorway pages, schema spam, keyword stuffing, or artificial graph density.

## Research, standards, references, and glossaries

- [`research/`](research/README.md) preserves empirical/scholarly evidence, methods, limitations, and synthesis.
- [`standards/`](standards/README.md) records formal standards, platform documentation, platform policy, and applicability.
- [`references/`](references/README.md) preserves historical applications, source excerpts, and non-normative evidence.
- [`glossaries/`](glossaries/README.md) clarifies recurring subject terminology without overriding contracts.
- [`examples/`](examples/README.md) demonstrates concepts without becoming authority.

## Integrity and regression protection

SEObasic changes must preserve established behavior and knowledge authority.

Agents and implementations must not:

- fabricate reviews, locations, customers, credentials, performance, results, partnerships, awards, or search/campaign evidence;
- rewrite canonical philosophy to fit a new channel;
- weaken tests/contracts because a new implementation behaves differently;
- silently change channel strategy, canonicalization, structured-data types, entity-link rules, or business identity as incidental cleanup;
- present correlation or platform folklore as guaranteed causation;
- turn one vendor's recommendation into universal law.

Software testing and regression protection remain engineering requirements, but they are not a second T.E.S.T.I.N.G. acronym.

## Adoption record

Implementations using SEObasic SHOULD be able to identify which framework revision they were designed against when reproducibility matters, for example:

```yaml
seobasic:
  source: LeGoatest/tailwindcss-semantic-layer
  source_ref: <tag-or-commit>
  domains:
    - websites
    - technical
    - local-search
  contracts:
    - truth-and-evidence
    - channel-boundaries
```

An adoption record does not require a project to implement every SEObasic domain.

## Ongoing development

SEObasic is intentionally incomplete. New knowledge should be added when there is a real lesson, standard, evidence source, contract, practitioner position, or useful subject boundary to preserve.

The goal is not to fill every directory quickly. The goal is to accumulate a durable, reviewable body of professional knowledge without losing where each conclusion came from.
