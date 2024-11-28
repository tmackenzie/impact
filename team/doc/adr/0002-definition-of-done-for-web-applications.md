# 2. Definition of done for web applications

Date: 2024-11-28

## Status

Accepted

## Context

DoD for a team responsible for a web application.

## Decision

Must:
- At least, one dev review.
- Unit tests must be written to a minimum of 80% (teams can decide if they require a higher percentage).
- Integration tests must be written if it impacts core functionality.
 - Core functionality is negotiated with team, product, leadership.
 - Often it does not exceed 25-30% of the user experience.
- Unit and Integration tests must be performed with automation when a PR is raised.
- The change must be delivered to production.
- The change must be obversable.
- The change must never have breaking changes.

Should:
- The change may be feature flagged.
- The change may be signed off by requestor

## Consequences

The delivery team needs to have:
- confidence in automated tests.
- a feature flag service that is ready to use.
- made decisions on how to write and automate integration tests.
- a easy and fast way to rollback production.
- made decision on branching strategy.
- integration with a on call management system. 
- integration with a obsevability system:
 - logs
 - tracing
 - metrics
