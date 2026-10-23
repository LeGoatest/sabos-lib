# Naming, Assets and Generated Output

**Convention selection:** match existing project conventions unless a deliberate architecture change has been authorized. Do not rename established public URLs, class namespaces, serialized values or filesystem paths merely for stylistic consistency.

## Names communicate role

- Directories for PHP classes/PSR-4 namespaces may use PascalCase: Controllers/, Domain/, Application/, Infrastructure/, Contracts/.
- Public route slugs and static web assets commonly use lowercase kebab-case: client-portal/, photo-gallery.js, property-repair.webp.
- Existing Laravel framework directories stay lowercase: app/, bootstrap/, config/, database/, public/, resources/, routes/, storage/, tests/.
- Assets separate by purpose when real: assets/css/, assets/js/, assets/images/, assets/icons/, assets/fonts/. Use photos/, graphics/, branding/ and marketing/ when their roles are meaningful.
- Name media based on subject/use when intended for public SEO and accessibility; preserve stable internal/generated identifiers where needed for uniqueness.
- Filename extensions follow the actual format. Do not encode HTML title, alt text or user privileges in a filename.
- Avoid generic names like helpers.php or data.json where domain ownership is ambiguous. Prefer capability-qualified names when helpful.
- Version interfaces or APIs deliberately (such as api/v1/) when compatibility is real; do not insert /v1 everywhere without a contract.

## Editable source versus generated files

~~~text
resources/
└── css/input.css          # canonical editable source

public/
└── assets/css/styles.css  # generated output from the approved build
~~~

The filenames are project examples, not a mandatory global naming rule. A Laravel app may generate public/assets/css/app.css; another PHP site may generate static/css/styles.css. Define the source→output mapping once in the project's own build contract and do not edit generated CSS manually.

A repository can use vendor/ or node_modules/ as local installed dependencies; whether they are committed is a separate versioning/deployment decision. Use dist/ only when it **actually contains generated/distribution output**.

## Public/private file decision

| File | Appropriate location | Caution |
| --- | --- | --- |
| Public logo and icons | public/assets/images/, static/images/ | Naming and cache rules |
| Edited source photo | Private application storage unless publication explicitly approved | Access control, metadata/privacy |
| CSS/Tailwind input | resources/css/, src/ or project-defined source path | Never maintain duplicate editable canonical files |
| Compiled CSS/JS | Chosen public/generated artifact path | Build from source and check for drift |
| Deployment key, OAuth secret | Private secrets/environment management | Never place in public, source or documentation |
| Runtime logs, session files | storage/, var/ outside public | Rotation and access controls |
| Business document or upload | Private storage behind authorization unless public by design | Tenant ownership, retention and validation |

See [TCbasic](../../../TCbasic/README.md) for semantic Tailwind rules and [WDBASIC](../../../Wdbasic/README.md) for web accessibility/security/URL contracts.
