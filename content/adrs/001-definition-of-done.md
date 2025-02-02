---
author: "tmack"
title: "Definition of Done"
date: "2025-02-02"
tags: 
- adr
- DoD
---
Date: 2025-02-02

## Status

Accepted

## Context

DoD for features and bug fixes.

## Decision

Must:
- At least, one dev review.
- Unit tests must be written to a minimum of 80% (teams can decide if they require a higher percentage).
- Integration tests must be written if it impacts core functionality.
  - Often it does not exceed 25-30% of the user experience.
- Unit and Integration tests must be performed with automation when a PR is raised.
- Delivered to production.
- Be observable.
- No breaking changes.

Should:
- Be feature flagged, if needed.
- The change may be signed off by requester

## Consequences

The delivery team needs to have:
- ci/cd process with automated tests.
- a feature flag service that is ready to use.
- automated integration tests.
- an easy and fast way to rollback production.
- integration with an on call management system.
- integration with an observability system.
  - logs
  - tracing
  - metrics