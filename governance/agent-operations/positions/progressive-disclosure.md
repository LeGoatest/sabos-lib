# Practitioner Position: Progressive Disclosure

> **Status:** Adopted practitioner position  
> **Scope:** Repository-agent context loading

## Stance

Prefer a small always-loaded instruction surface that routes agents toward deeper, scoped context only when the task requires it.

## Basis

- OpenAI reports that a monolithic `AGENTS.md` created context pressure, diluted important guidance, became stale, and was difficult to verify; it adopted a short routing file plus structured repository knowledge.
- GitHub supports repository-wide, path-specific, and agent instruction layers.
- Gemini CLI supports hierarchical and just-in-time context discovery.
- Empirical AGENTS.md research finds context bloat common and reports that unnecessary instructions can reduce task success while increasing inference cost.
- Repository retrieval research shows broader repository context can help when relevant, while selective-retrieval research shows irrelevant retrieval can be harmful.

## Tradeoffs

Progressive disclosure introduces discovery work. Poor indexes, stale links, weak naming, or fragmented authority can make relevant context harder to find.

The answer is not to load everything globally; it is to improve routing, provenance, searchability, and local authority boundaries.

## Divergence

This position rejects the assumption that the safest agent prompt is the largest possible prompt.

## Adoption consequence

Persistent instruction files SHOULD act primarily as high-salience constraints and maps into authoritative repository material. Detailed research, procedures, examples, and local rules SHOULD remain scoped and retrievable.
