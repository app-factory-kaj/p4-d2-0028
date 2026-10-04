# greeter — PRD

## Problem Statement

Teams building services on this platform need a small, known-good reference service to validate that a new project follows the organization's established conventions (as demonstrated in app-factory-kaj/e2e-reference) end to end — from request handling to deployment — without the overhead of a real business domain to reason about.

## Solution

Greeter is a minimal Go HTTP service exposing a single greeting endpoint. It returns a JSON greeting for a supplied name, giving developers and automated checks a lightweight, predictable service to exercise the platform's conventions against.

## Actors

- **API Client** — a developer or automated caller that issues HTTP requests to the greeter service programmatically. There is no human end-user, UI, or sign-in involved.

## User Stories

1. As an API Client, I want to GET /hello with a name query parameter, so that I receive a JSON greeting addressed to that name.
2. As an API Client, I want to GET /hello without a name query parameter and still receive a sensible default JSON greeting, so that the endpoint never fails merely because the name was omitted.

## Product Decisions

- Actor model: the service has a single actor, a generic API Client — no human end-user, UI, or sign-in. *assumed*
- Missing/empty `name`: the service returns a default greeting (e.g. "Hello, World!") rather than an error. *assumed*
- Access control: the `/hello` endpoint is open/public — no authentication required. *assumed*
- Implementation follows the conventions demonstrated in app-factory-kaj/e2e-reference.

## Out of Scope

- Any additional endpoints beyond GET /hello.
- Authentication, authorization, or per-caller rate limiting.
- Persistence of any kind — the service is stateless.
- A user-facing web application or UI.

## Open Questions

(none)

## Further Notes

(none)