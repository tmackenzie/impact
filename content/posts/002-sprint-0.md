---
author: "tmack"
title: "Sprint 0"
date: "2025-02-08"
tags: 
  - process
  - sprint-0
---

The most important sprint by far is `Sprint 0`. Missing this sprint and rushing into features has harmful impacts which
are extremely costly to repair. The repairs are not only technical. Healing requires what seems to be countless, tiring 
discussions. It's unrealistic to expect software to completely heal if `Sprint 0` is not done upfront.

The goals of the `Sprint 0` must include:

- [Deploy to production](#production)
- [Establish TDD practices](#tdd)
- [Set up integration testing](#integration-testing) 
- [CI/CD](#cicd)
- [Agree on the definition of done](#definition-of-done)
- [Scaffolding](#scaffolding)


### Production
Teams must deploy to production in this sprint. It can be a simple `Hello World` app.  

The reasons to do this now are:
- Costs are lower than birthing a large prod release later on.
  - Something is always forgotten when done later and the effort is always much larger than anticipated, possibly heroic.
  - Usually results in key people being formed that do releases, rollbacks, etc.
- Eliminate key people in process or technical choices.
  - Every team member will be able to practice releasing with their features.
  - Every team member can contribute to operating and observing the application.
  - New infrastructure will be added as features are written, which allows more of the team to contribute.
- Get feedback from users sooner.
- Quality:
  - Avoids dev or stage envs are not similar to prod.
  - Begins the conversation and culture that everyone is responsible for quality.

### TDD
Start the hygiene of writing unit tests. This will set the expectation that tests are required and part of 
the team's [DoD](#definition-of-done). In addition, set goals for code coverage and automate it in CI/CD which may fail
builds if they are not met.

This must be done now because:
- It will establish a culture where everyone is required to write tests for every feature.
- Doing it later will be more costly and spoiler.. teams will end up doing it later.
- Software that is designed to be tested has a longer life.
- Developers are motivated by working on code bases that are predicable.

### Integration testing
Make decisions and execute on how the team plans to do automated integration testing..

Conversations for the team:
- What language/framework should be used?
- Should side effects be cleaned up?
- What needs to be tested?
  - have a look at the testing pyramid.
- What tests should be executed in prod?

I've seen teams abandon test suites or ignore failures when the team doesn't own quality upfront.

### CI/CD
Most teams only focus on CI and miss CD.

Key areas to focus on are:
- Do no rebuild while advancing through envs. 
  - Deploy what was previously built.
- Deploy a branch to test manually or automated before merging.
- Deploy a branch or tag to any environment, including prod.
  - This can satisfy rollbacks.
- Make CD extremely easy so anyone on the team can do it.
  - Automate environment provisioning, IoC.
  - Automate CI/CD for events such as, on pull request, on merge.
  - It's ok to require minimal click ops for prod releases.

Doing this now will eliminate technical debt going forward regarding:
- Manual or key person interaction for updating environments.
- Phrases like, I cannot test this because of the environment.
- Conflict of too many devs needing a env to deploy and test.

Teams will also be able to have a [DoD](#definition-of-done) where the feature must be in prod.

### Definition of Done
A team's definition done must be established in this sprint. It should be easily available and team members should be 
measured against following it. 

There's an example template I use to get this started over at the [ADRs]({{< ref "/adrs/001-definition-of-done/" >}}). I suggest using something like it to get the conversation started.

### Scaffolding

To make `Sprint 0` part of the culture of a organisation or company then share everything that was done
by templating new repo creation via scaffolding. I've done this with [cookie cutter](https://cookiecutter.readthedocs.io/en/stable/). 

- Include CI/CD scripts created for your team that can be modified for other projects.
- Create projects with language, framework, and testing choices.
- Automate external dependencies like test reporting services (sonar), artifact repositories, or others.