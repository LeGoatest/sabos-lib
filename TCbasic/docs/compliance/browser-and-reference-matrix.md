# Browser and Reference Matrix

> **Status:** Evidence/compatibility guidance  
> **Scope:** TCBasic reference material and adopter review

TCBasic does not run a repository build or claim that SABOS Lib itself has been browser-tested as an application. This matrix records the upstream Tailwind CSS baseline and the kinds of compatibility evidence adopters should preserve when applying TCBasic.

## Upstream browser baseline

The current TCBasic standards registry records the Tailwind CSS v4 baseline as:

| Browser | Recorded minimum |
| --- | ---: |
| Chrome | 111 |
| Safari | 16.4 |
| Firefox | 128 |

These values describe the upstream baseline associated with the current guidance. They are not evidence that a particular adopter application has been tested.

## Reference features to review

When TCBasic reference CSS or adopter implementations use modern platform features, record material compatibility assumptions such as:

- cascade layers;
- registered custom properties;
- OKLCH and `color-mix()`;
- container queries;
- CSS nesting in the adopter toolchain;
- `text-wrap` behavior;
- forced-colors and reduced-motion behavior;
- any newer optional feature with narrower support.

## Adopter evidence

A consumer may record:

```yaml
compatibility:
  tcbasic_source_ref: <commit-or-tag>
  tailwind_version: <version>
  browsers:
    chrome: <tested-version-or-not-tested>
    safari: <tested-version-or-not-tested>
    firefox: <tested-version-or-not-tested>
  optional_features: []
  visual_review: passed | failed | pending | not_tested
  keyboard_review: passed | failed | pending | not_tested
  forced_colors: passed | failed | pending | not_tested
  reduced_motion: passed | failed | pending | not_tested
  exceptions: []
```

Use `not_tested` when evidence does not exist. Do not convert an upstream support statement into a claim that an adopter implementation was validated.
