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
- **failing-distribution-check**
  Merge job passes, but project distribution-check job is either not defined
  or failing.
- **not-in-autorelease**
  Project distribution-check passes, but the project is not added to
  autorelease (git submodule, maven module)
- **repo-not-in-integration**
  Project is added do autorelease, but integration/distribution:features-index
  is not listing all its feature repositories.
- **feature-not-in-integration**
  Feature repositories are referenced, but some user-facing features are absent
  from integration/distribution:features-test
- **feature-is-experimental**
  All user-facing features are in features-test, but at least one corresponding
  functiona CSIT jobs does not meet integration/test requirements.
- **ready**

.. note::

   A project may change its state in both directions, this list is to make sure
   a project is not left in an invalid state, for example present in
   autorelease but without passing distribution-check job.

.. todo::

   - Add links to documents concerning project lifecycle from TSC point of view.
   - Add links to M# templates, test requirements and other relevant info.
   - Mention other jobs involved in verification (verify, validate-autorelease, ... releng-check-poms).
   - Add back-references to this document (from integration/distribution, job definition templates, ...).
   - Do we need a special rules applicable at Release Review?
   - By adding features to integration, distribution-check job may start failing on issues
     that were not visible before. Document a workaround or create a specialized verify-like job.
   - Mention that some rules do not make sense for Integration/Distribution project, provide substitute rules.
