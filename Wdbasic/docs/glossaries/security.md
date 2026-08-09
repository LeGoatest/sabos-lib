# WDBASIC Web Security Glossary

> **Status:** Non-normative terminology reference  
> **Glossary index:** [`README.md`](README.md)  
> **Security contract:** [`../security-and-privacy.md`](../security-and-privacy.md)  
> **Form security contract:** [`../forms/security.md`](../forms/security.md)  
> **Last reviewed:** 2026-08-01

This glossary explains common web-security acronyms and terms used in WDBASIC and related implementation reviews. A definition does not create a control or establish security. Binding requirements remain in the linked WDBASIC contracts.

## 1. Classification rules

Security discussions often mix different kinds of concepts. WDBASIC uses these categories:

- **Weakness:** A defect or condition that may be exploitable.
- **Attack technique:** An action used to exploit a weakness or abuse a system.
- **Impact:** The result of a successful attack.
- **Control:** A safeguard intended to prevent, detect, limit, or recover from a threat.
- **Testing method:** A way to find or verify security issues.
- **Operational capability:** People, processes, or systems used to monitor and respond.
- **Identifier or score:** A standardized way to name, classify, or prioritize weaknesses and vulnerabilities.

A term may span categories. The definition states the primary WDBASIC use.

## 2. Vulnerabilities and attack techniques

| Term | Expansion | Type | Definition | WDBASIC relevance |
|---|---|---|---|---|
| XSS | Cross-Site Scripting | Attack technique | Injection of executable browser content into a trusted application context. Common forms include stored, reflected, and DOM-based XSS. | Prevent with context-sensitive output encoding, safe DOM APIs, sanitization where rich content is allowed, and CSP as defense in depth. |
| SQLi | SQL Injection | Attack technique | Injection of SQL syntax through application-controlled data so the database interprets attacker input as part of a query. | Use parameterized queries or safe ORM binding; validation alone is not sufficient. |
| CSRF | Cross-Site Request Forgery | Attack technique | Causes an authenticated browser to submit an unintended state-changing request to a site that trusts the browser session. | Governed by [`../forms/security.md`](../forms/security.md): CSRF tokens, origin checks, Fetch Metadata, and `SameSite` defense in depth. |
| SSRF | Server-Side Request Forgery | Attack technique | Causes a server to make an unintended request, often to internal services, cloud metadata endpoints, or restricted networks. | Restrict destinations, protocols, redirects, DNS behavior, network egress, and response handling. |
| XXE | XML External Entity | Weakness and attack technique | Abuse of XML external-entity processing to read files, trigger server-side requests, consume resources, or disclose data. | Disable unsafe external entities and use hardened parser settings. |
| LFI | Local File Inclusion | Weakness and attack technique | Causes an application to include or read a local file through attacker-controlled path input. | Avoid dynamic file inclusion from request data; use server-controlled mappings and path containment. |
| RFI | Remote File Inclusion | Weakness and attack technique | Causes an application to include or execute remotely hosted content through attacker-controlled input. | Disable remote inclusion and never construct executable include paths from request data. |
| SSTI | Server-Side Template Injection | Attack technique | Injects template-language expressions that are evaluated by the server-side template engine. | Treat templates as code; separate data from template source and restrict authoring capabilities. |
| IDOR | Insecure Direct Object Reference | Weakness | Exposes an internal object reference without adequate object-level authorization. | Resolve objects server-side and verify actor, tenant, ownership, and action authorization. |
| BOLA | Broken Object Level Authorization | Weakness | API or application authorization failure that allows access to another object by changing an identifier. | Equivalent control focus to IDOR, expressed as an authorization failure rather than merely an identifier problem. |
| Path traversal | Directory traversal | Attack technique | Uses path segments such as `../`, encoded variants, or path confusion to escape an intended directory. | Canonicalize safely, enforce an allowed root, use generated storage names, and avoid direct path construction. |
| Command injection | Operating-system command injection | Attack technique | Injects shell or command syntax into a command executed by the server. | Use structured process APIs and fixed argument mappings; avoid shell construction. |
| Code injection | — | Attack technique | Causes attacker-controlled input to be interpreted as executable application or runtime code. | Never evaluate untrusted input; restrict dynamic code, expressions, and plugin execution. |
| Unsafe deserialization | Insecure deserialization | Weakness and attack technique | Processes attacker-controlled serialized data in a way that can instantiate dangerous objects, execute code, or modify state. | Prefer simple data formats, authenticate serialized state, and restrict allowed types. |
| Open redirect | Unvalidated redirect or forward | Weakness | Redirects users to an attacker-controlled destination through untrusted URL input. | Use server-controlled destination identifiers or strict destination allowlists. |
| Clickjacking | UI redress attack | Attack technique | Tricks a user into interacting with a concealed or misleading framed interface. | Use `frame-ancestors`, appropriate embedding restrictions, and clear high-impact confirmation. |
| HTTP request smuggling | Request desynchronization | Attack technique | Exploits inconsistent request parsing between intermediaries and origin servers to prepend or hide requests. | Align proxy and server parsing, reject ambiguous framing, patch intermediaries, and test the complete request chain. |
| ReDoS | Regular Expression Denial of Service | Attack technique | Uses crafted input to trigger excessive regular-expression backtracking or processing. | Bound input length, avoid vulnerable patterns, and test adversarial input. |
| Brute force | — | Attack technique | Repeatedly attempts possible credentials, tokens, or values until one succeeds. | Use rate limits, progressive delay, MFA, monitoring, and safe recovery controls. |
| Credential stuffing | — | Attack technique | Attempts username-password pairs stolen from other services against the target service. | Support password managers, breached-password defenses, MFA, rate limits, and anomaly detection. |
| Password spraying | — | Attack technique | Attempts a small number of common passwords across many accounts to avoid per-account lockout. | Use distributed rate analysis, MFA, weak-password rejection, and monitoring. |
| Session fixation | — | Attack technique | Forces or predicts a session identifier that remains valid after authentication. | Rotate the session identifier after authentication and privilege changes. |
| Session hijacking | — | Attack technique | Takes control of a valid user session through token theft, interception, malware, XSS, or another compromise. | Protect cookies, prevent XSS, use TLS, rotate tokens, and support revocation. |
| MITM / MitM | Man-in-the-Middle | Attack technique | Intercepts and potentially alters communications between parties. “On-path attacker” is the preferred modern phrasing in many standards. | Use authenticated TLS, correct certificate validation, and secure channel binding where applicable. |
| DoS | Denial of Service | Impact and attack technique | Prevents or delays authorized access to a service or resource. | Apply capacity controls, request limits, timeouts, queues, circuit breakers, and graceful degradation. |
| DDoS | Distributed Denial of Service | Attack technique | Denial-of-service activity performed through numerous systems or traffic sources. | Requires infrastructure, network, provider, and application-layer controls. |
| Supply-chain attack | — | Attack technique | Compromises a dependency, build system, package source, update path, service provider, or supplier to reach downstream targets. | Pin dependencies, verify provenance, protect CI/CD, review suppliers, and maintain SBOMs. |

## 3. Security impacts and outcomes

| Term | Expansion | Definition | WDBASIC relevance |
|---|---|---|---|
| RCE | Remote Code Execution | Impact in which an attacker can execute code on a remote system or application host. | Treat as a critical impact; address the underlying injection, deserialization, upload, plugin, or dependency weakness. |
| ATO | Account Takeover | Unauthorized control of a legitimate user account. | Protect authentication, recovery, sessions, MFA, and suspicious-change workflows. |
| Privilege escalation | — | Gaining permissions beyond those initially authorized, either vertically or horizontally. | Enforce least privilege and recheck authorization on every protected action and object. |
| Data exfiltration | — | Unauthorized extraction or transfer of data from a system. | Apply access control, egress monitoring, encryption, logging, data minimization, and incident response. |
| Data tampering | — | Unauthorized modification of data, state, logs, or transactions. | Use authorization, integrity controls, audit records, transactions, and conflict handling. |

## 4. Identity, authentication, and authorization

| Term | Expansion | Definition | WDBASIC relevance |
|---|---|---|---|
| IAM | Identity and Access Management | Policies, processes, and systems for identities, authentication, authorization, lifecycle, and access governance. | Covers more than login; includes provisioning, deprovisioning, roles, reviews, and recovery. |
| MFA | Multi-Factor Authentication | Authentication using two or more distinct factor types, such as knowledge, possession, or inherence. | Two passwords are not MFA because they are the same factor type. |
| 2FA | Two-Factor Authentication | MFA using exactly two distinct authentication factor types. | A subset of MFA. Expand the term when user-facing guidance could be ambiguous. |
| SSO | Single Sign-On | Authentication arrangement allowing one authenticated session or identity provider to access multiple services. | Does not remove the need for authorization, session controls, or recovery. |
| IdP | Identity Provider | System that authenticates an identity and issues assertions or tokens to relying services. | Record trust, issuer, audience, keys, claims, logout, and failure behavior. |
| SP | Service Provider | In SAML terminology, the application that relies on an identity provider assertion. | Do not confuse with “security policy” or “service principal”; expand on first use. |
| RBAC | Role-Based Access Control | Authorization based primarily on assigned roles and their permissions. | Roles must not be trusted from client input. |
| ABAC | Attribute-Based Access Control | Authorization based on attributes of the actor, resource, action, and environment. | Useful for tenant, ownership, location, time, sensitivity, and policy conditions. |
| PAM | Privileged Access Management | Controls for highly privileged accounts, credentials, sessions, and administrative actions. | Includes elevation, approval, monitoring, rotation, and break-glass governance. |
| Least privilege | — | Granting only the access necessary for the task and duration. | Applies to users, services, database accounts, filesystem access, tokens, and infrastructure. |
| Zero trust | — | Security model that avoids implicit trust based only on network location and continually evaluates identity, device, context, and policy. | Not a product or single control; it does not mean trusting nothing or reauthenticating every action. |

## 5. Browser and application defenses

| Term | Expansion | Definition | WDBASIC relevance |
|---|---|---|---|
| CSP | Content Security Policy | Browser-enforced policy restricting resource loading, execution, embedding, and other security-relevant behavior. | Defense in depth for XSS and content injection; not a replacement for encoding or sanitization. |
| HSTS | HTTP Strict Transport Security | Response policy instructing browsers to use HTTPS for a host for a defined period. | Reduces protocol downgrade and accidental HTTP access after the policy is learned or preloaded. |
| SRI | Subresource Integrity | Browser mechanism that verifies a fetched script or stylesheet against an expected cryptographic digest. | Useful for pinned cross-origin resources; it does not verify dynamic APIs or all supply-chain behavior. |
| CORS | Cross-Origin Resource Sharing | HTTP mechanism allowing a server to declare which origins may read selected cross-origin responses. | CORS is not authentication, authorization, or CSRF protection. |
| CSRF token | Cross-Site Request Forgery token | Unpredictable value bound to a session or request context and verified on state-changing requests. | Must not appear in URLs, analytics, or ordinary logs. |
| SameSite | Same-site cookie attribute | Cookie setting controlling when cookies are sent with cross-site requests. | Defense in depth for CSRF; not a universal substitute for an explicit CSRF control. |
| Output encoding | Context-sensitive output encoding | Converts data so it is interpreted as text rather than executable syntax in a specific output context. | HTML text, HTML attribute, URL, JavaScript, CSS, CSV, and header contexts differ. |
| Sanitization | — | Removes or transforms disallowed constructs from content that intentionally permits structured markup. | Required for rich HTML or similar content; not interchangeable with output encoding. |
| Parameterized query | — | Database operation in which query structure and data values are transmitted separately. | Primary SQL-injection defense for values; dynamic identifiers require server-controlled mappings. |
| Prepared statement | — | Database statement parsed separately from bound parameter values, often reused for execution. | Common implementation of parameterization; verify the driver does not emulate unsafe concatenation. |
| WAF | Web Application Firewall | Intermediary that inspects and may block web traffic according to rules or anomaly detection. | Defense in depth; cannot repair broken application authorization, validation, or output handling. |
| Rate limiting | — | Restricts requests or actions over a time or resource window. | Use actor, account, route, object, IP, device, and global dimensions as appropriate. |
| Honeypot field | — | Form field or interaction intended to attract automated submissions while remaining unavailable to legitimate users. | Useful as a low-friction signal; never the only abuse defense and must remain accessible. |
| Idempotency key | — | Client- or server-generated identifier used to make retries of a material operation produce one effect. | Required where duplicate submission could create duplicate payments, invitations, uploads, or records. |

## 6. Cryptography and secure transport

| Term | Expansion | Definition | WDBASIC relevance |
|---|---|---|---|
| TLS | Transport Layer Security | Protocol providing an authenticated and confidential channel intended to prevent eavesdropping, tampering, and message forgery. | Use the project-approved current TLS baseline and correct certificate or endpoint identity validation. |
| SSL | Secure Sockets Layer | Obsolete predecessor to TLS. The term is still used informally in phrases such as “SSL certificate.” | WDBASIC documentation should say TLS unless discussing legacy terminology. |
| PKI | Public Key Infrastructure | Roles, policies, certificates, keys, and services used to establish trust in public keys. | Includes issuance, validation, rotation, revocation, and trust anchors. |
| Certificate | Public-key certificate | Signed data binding a public key to an identity or set of attributes. | A certificate does not guarantee that an application is secure. |
| AEAD | Authenticated Encryption with Associated Data | Encryption mode providing confidentiality and integrity for protected data plus integrity for associated unencrypted data. | Prefer approved AEAD constructions rather than combining primitives ad hoc. |
| KDF | Key Derivation Function | Function deriving one or more cryptographic keys from source key material, passwords, or shared secrets. | Password hashing requires a password-specific, deliberately expensive KDF. |
| CSPRNG | Cryptographically Secure Pseudorandom Number Generator | Generator designed to produce unpredictable values suitable for cryptographic use. | Required for tokens, nonces, session identifiers, reset links, and cryptographic keys. |
| Hash | Cryptographic hash function | One-way function mapping data to a fixed-length digest with defined security properties. | Hashing is not encryption; use purpose-appropriate algorithms. |
| Salt | — | Unique non-secret value combined with a password before password hashing. | Prevents identical passwords from sharing the same stored hash and frustrates precomputed attacks. |
| Pepper | — | Additional secret value used with password hashing and stored separately from the password database. | Optional defense in depth; requires rotation and secret-management planning. |
| Encryption | — | Reversible transformation of plaintext into ciphertext using a key. | Use when authorized recovery of plaintext is required; protect and rotate keys. |

## 7. Security testing and assurance

| Term | Expansion | Definition | WDBASIC relevance |
|---|---|---|---|
| SAST | Static Application Security Testing | Analysis of source code, bytecode, or binaries without testing the running application through its external interface. | Finds selected implementation patterns; results require triage and do not establish security. |
| DAST | Dynamic Application Security Testing | Testing a running application through exposed interfaces. | Can discover runtime and configuration issues but may miss internal logic and authorization context. |
| IAST | Interactive Application Security Testing | Runtime testing using instrumentation inside or alongside the application while tests exercise it. | Combines runtime observation with request execution; coverage depends on exercised paths. |
| SCA | Software Composition Analysis | Analysis of dependencies, licenses, known vulnerabilities, and sometimes reachability or provenance. | Requires inventory quality and remediation decisions; a clean scan does not prove supply-chain safety. |
| Pentest | Penetration test | Authorized adversarial assessment intended to exploit weaknesses within an agreed scope. | Time-bounded evidence, not a permanent certification. |
| Threat model | — | Structured analysis of assets, actors, trust boundaries, threats, abuse cases, and controls. | Required for material architecture, authentication, payment, upload, integration, and privilege changes. |
| ASVS | Application Security Verification Standard | OWASP requirements framework for verifying application technical security controls. | WDBASIC projects should pin the selected ASVS version and verification level. |
| WSTG | Web Security Testing Guide | OWASP testing guidance for web applications and services. | Useful for test planning; it does not replace project-specific threat modeling or evidence. |
| SBOM | Software Bill of Materials | Inventory of software components and dependency relationships in a product. | Supports vulnerability response and supply-chain visibility; accuracy and update cadence matter. |
| Security review | — | Structured review of design, implementation, configuration, evidence, and risks. | Distinct from a scan; should identify scope, reviewer, method, findings, and disposition. |

## 8. Operational and infrastructure security

| Term | Expansion | Definition | WDBASIC relevance |
|---|---|---|---|
| IDS | Intrusion Detection System | System that monitors activity for signs of possible incidents and alerts operators. | Detection does not automatically block the activity. |
| IPS | Intrusion Prevention System | System that detects intrusive activity and can attempt to stop it. | Blocking requires tuning, monitoring, failure planning, and false-positive handling. |
| IDPS | Intrusion Detection and Prevention System | Combined monitoring, analysis, and prevention capability. | Use when a system provides both detection and prevention. |
| SIEM | Security Information and Event Management | Platform aggregating and analyzing security logs and events for detection, investigation, and reporting. | Requires deliberate sources, retention, access controls, correlation, and alert ownership. |
| SOC | Security Operations Center | Team or function responsible for monitoring, triage, investigation, and response. | May be internal, shared, or outsourced; the term describes an operational capability, not a product. |
| EDR | Endpoint Detection and Response | Endpoint monitoring, detection, investigation, and response capability. | Covers hosts and devices, not application security by itself. |
| DLP | Data Loss Prevention | Controls intended to detect or prevent unauthorized disclosure or transfer of sensitive data. | Requires data classification, scope, privacy review, and response procedures. |
| Incident response | IR | Coordinated preparation, detection, containment, eradication, recovery, and learning after a security incident. | Define ownership, severity, communication, evidence handling, and post-incident actions. |
| Audit log | — | Protected record of security- or business-relevant events sufficient for accountability and investigation. | Must avoid secrets and unnecessary sensitive values while preserving integrity and context. |

## 9. Vulnerability identifiers, classifications, and prioritization

| Term | Expansion | Definition | WDBASIC relevance |
|---|---|---|---|
| CVE | Common Vulnerabilities and Exposures | Public identifier for a specific disclosed cybersecurity vulnerability. | A CVE is an identifier, not a severity score or proof that the product is affected. |
| CWE | Common Weakness Enumeration | Classification of software and hardware weakness types. | Useful for root-cause classification and preventive engineering. |
| CVSS | Common Vulnerability Scoring System | Standardized method for describing technical vulnerability severity. | Severity is not the same as organization-specific risk or remediation priority. |
| CPE | Common Platform Enumeration | Structured naming scheme for classes of software, operating systems, and hardware. | Used in vulnerability matching; imperfect product naming can cause false matches or misses. |
| KEV | Known Exploited Vulnerabilities | CISA catalog of vulnerabilities known to be exploited in the wild. | Strong prioritization signal; affected products still require applicability analysis and remediation. |
| EPSS | Exploit Prediction Scoring System | Probability-oriented model estimating the likelihood that a published vulnerability will be exploited in the near term. | Complements severity and asset context; it is not proof of exploitation or impact. |

## 10. Common distinctions

### Authentication versus authorization

- **Authentication** establishes or verifies an identity.
- **Authorization** determines whether that identity may perform an action on a resource.

A user being authenticated does not imply permission to access every record.

### Validation versus sanitization versus encoding

- **Validation** determines whether input is acceptable for its intended purpose.
- **Sanitization** removes or transforms dangerous constructs from content that permits structured syntax.
- **Output encoding** makes data safe for a specific output context.

These controls are complementary and are not interchangeable.

### Encryption versus hashing

- **Encryption** is reversible with an authorized key.
- **Hashing** is designed to be one way.
- **Password hashing** uses a password-specific KDF, unique salt, and approved work factor.

### Vulnerability versus attack versus impact

- A **vulnerability** is a weakness.
- An **attack** is an action taken to exploit or abuse a system.
- An **impact** is the consequence.

For example, unsafe deserialization may be the weakness, a crafted object may be the attack input, and RCE may be the impact.

### Severity versus risk

- **Severity** describes technical characteristics of a vulnerability.
- **Risk** also considers exposure, asset value, exploitability, controls, business impact, and threat context.

A high CVSS score does not automatically establish the highest remediation priority, and a lower score may still be urgent for an exposed critical asset.

## 11. Deprecated or ambiguous terminology

| Term | Guidance |
|---|---|
| SSL | Treat as obsolete protocol terminology. Use TLS for current transport security. |
| MitM | Acceptable common acronym, but “on-path attacker” is often clearer and more neutral. |
| Pen test certified | Avoid. A penetration test is scoped and time-bounded; it does not certify permanent security. |
| Military-grade encryption | Avoid. It is marketing language without a precise technical baseline. |
| Unhackable | Prohibited claim. No realistic system can establish that absolute condition. |
| Secure by using a WAF | Avoid. A WAF is one defense-in-depth control. |
| Passed SAST/DAST | State the tool, version, scope, rules, date, unresolved findings, and limitations instead. |
| Zero trust compliant | Avoid unless tied to an explicit, evaluated architecture or standard. |

## 12. Source authorities

Definitions in this glossary are concise WDBASIC summaries informed by:

- [OWASP Community — Attacks](https://owasp.org/www-community/attacks/)
- [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/)
- [OWASP Application Security Verification Standard](https://owasp.org/www-project-application-security-verification-standard/)
- [OWASP Web Security Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)
- [NIST Computer Security Resource Center Glossary](https://csrc.nist.gov/glossary)
- [W3C Content Security Policy](https://www.w3.org/TR/CSP/)
- [RFC 9846 — Transport Layer Security 1.3](https://www.rfc-editor.org/info/rfc9846/)
- [MITRE CVE](https://www.cve.org/)
- [MITRE CWE](https://cwe.mitre.org/)
- [NIST National Vulnerability Database](https://nvd.nist.gov/)
- [CISA Known Exploited Vulnerabilities Catalog](https://www.cisa.gov/known-exploited-vulnerabilities-catalog)
- [FIRST CVSS](https://www.first.org/cvss/)
- [FIRST EPSS](https://www.first.org/epss/)

Consult the linked source and the relevant WDBASIC contract when exact normative wording or implementation requirements matter.

## 13. Review record

```yaml
security_glossary:
  status: non-normative
  owner: <role-or-team>
  sources_reviewed: []
  last_reviewed: 2026-08-01
  next_review: annual-or-on-material-standards-change
  deprecated_terms: [SSL]
```
