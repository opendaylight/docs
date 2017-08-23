*****************
Project lifecycle
*****************

This page documents the current rules to follow when adding and removing
a particular project to Simultaneous Release (SR).

List of states
==============

The state names are short negative phrases describing what is missing to
progress to the following state.

- **non-existent**
  The project is not recognized by Technical Steering Committee (TSC) to be
  part of OpenDaylight (ODL).
- **non-participating**
  The project is recognized byt TSC to be an ODL project, but the project has
  not confirmed participation in SR for given release cycle.
- **non-building**
  The recognized project is willing to participate, but its current codebase is
  not passing its own merge job, or the project artifacts are otherwise
  unavailable in Nexus.
- **not-in-autorelease**
  Project merge job passes, but the project is not added to
  autorelease (git submodule, maven module, validate-autorelease job passes).
- **failing-autorelease**
  The project is added to autorelease (git submodule, maven module, validate-autorelease job passes),
  but autorelease build fails when building project's artifact.
  Temporary state, timing out into not-in-autorelease.
- **repo-not-in-integration**
  Project is succesfully built within autorelease, but integration/distribution:features-index
  is not listing all its public feature repositories.
- **feature-not-in-integration**
  Feature repositories are referenced, distribution-check job is passing,
  but some user-facing features are absent from integration/distribution:features-test
  (possibly because adding them does not pass distribution SingleFeatureTest).
- **distribution-check-not-passing**
  Features are in distribution, but distribution-check job is either not running,
  or it is failing for any reason. Temporary state, timing out into feature-not-in-integration.
- **feature-is-experimental**
  All user-facing features are in features-test, but at least one of the corresponding
  functional CSIT jobs does not meet Integration/Test requirements.
- **feature-is-not-stable**
  Feature does meet Integration/Test requirements, but it does not meed all requirements for stable features.
- **feature-is-stable**

.. note::

   A project may change its state in both directions, this list is to make sure
   a project is not left in an invalid state, for example distribution referencing
   feature repositories, but without passing distribution-check job.

.. todo::

   - Add links to documents concerning project lifecycle from TSC point of view.
   - Add links to M# templates, test requirements and other relevant info.
   - Mention other jobs involved in verification (verify, validate-autorelease, ... releng-check-poms).
   - Add back-references to this document (from integration/distribution, job definition templates, ...).
   - Do we need a special rules applicable at Release Review?
   - Mention that some rules do not make sense for Integration/Distribution project, provide substitute rules.
