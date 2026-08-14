# WDBASIC v2.1

> **Status:** Binding framework  
> **Canonical entry point:** `Wdbasic/README.md`

WDBASIC is SABOS Lib's framework-independent web architecture, experience, content-strategy, and implementation-contract knowledge system.

Its physical documentation hierarchy mirrors its conceptual model:

```text
Wdbasic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
└── docs/
    ├── README.md
    ├── AGENTS.md
    ├── core-invariants/
    ├── experience-evaluation/
    ├── content-strategies/
    └── technology-profiles/
```

## Four-domain model

```text
WDBASIC
│
├── Core invariants
│   ├── semantics
│   ├── accessibility
│   ├── security/privacy
│   ├── truthful content
│   ├── HTTP/URL integrity
│   ├── resilience
│   └── measurable evidence
│
├── Experience evaluation
│   ├── discoverability
│   ├── intent alignment
│   ├── usability
│   ├── trust
│   ├── conversion
│   └── performance
│
├── Content strategies
│   ├── PAS when applicable
│   ├── comparison
│   ├── informational
│   ├── transactional
│   └── other intent models
│
└── Technology profiles
    ├── HTMX / hypermedia
    ├── SSR
    ├── static
    ├── JS application
    ├── Tailwind / TCbasic
    └── hybrid/native
```

## Authority

Apply WDBASIC in this order:

1. [`docs/core-invariants/README.md`](docs/core-invariants/README.md)
2. Applicable invariant subdomain contracts
3. Standards and evidence records under [`docs/core-invariants/measurable-evidence/`](docs/core-invariants/measurable-evidence/README.md)
4. [`docs/experience-evaluation/`](docs/experience-evaluation/README.md) for diagnostics
5. Applicable [`docs/content-strategies/`](docs/content-strategies/README.md)
6. Applicable [`docs/technology-profiles/`](docs/technology-profiles/README.md)
7. Product-specific requirements and explicit exceptions

Core invariants are **non-compensatory**. Strong SEO, visual quality, performance, or conversion cannot cancel a known accessibility, security/privacy, truthfulness, HTTP-integrity, semantic, resilience, or evidence failure.

External standards retain their own scopes and conformance language. WDBASIC does not relabel guidance, practitioner positions, or heuristic scores as external requirements.

## Important boundaries

- PAS is an intent-dependent content strategy, not a universal page formula.
- HTMX, Tailwind, SSR, static generation, JavaScript applications, and hybrid/native shells are technology profiles, not core invariants.
- JavaScript-free public content may be selected for resilience/interoperability reasons, but WDBASIC does not represent it as a universal Google Search requirement.
- Accessibility conformance is not an additive quality score.
- Security/privacy and truthful-content failures are gates, not point deductions.
- Heuristic calculations remain explicitly labeled as WDBASIC heuristics.

See [`docs/README.md`](docs/README.md) for the documentation map and [`AGENTS.md`](AGENTS.md) for automated-work governance.
