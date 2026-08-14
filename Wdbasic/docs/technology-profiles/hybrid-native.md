# Hybrid / Native Technology Profile

> **Status:** WDBASIC technology profile  
> **Reviewed:** 2026-08-14

Use when WDBASIC-governed experiences run inside native applications, hybrid shells, web views, or mixed native/web boundaries.

## Requirements

- Separate native, web-content, and document-format accessibility scopes.
- Preserve authorization, validation, privacy, and state authority across bridge boundaries.
- Device permissions must be purpose-limited, explained, recoverable after denial, and accessible.
- Deep links and app routes must have defined direct-load and recovery behavior.
- Native/web message bridges must validate message origin, shape, privilege, and replay behavior.
- Offline/sync behavior must define conflict resolution, stale-state handling, idempotency, and data retention.
- WebView or embedded content must not weaken CSP, cookie, origin, or navigation protections.
- Performance and accessibility evidence must cover the actual supported platform matrix rather than a desktop-browser proxy.
