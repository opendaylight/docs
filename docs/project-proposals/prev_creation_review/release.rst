Name
----

Release

Repo Name
---------

release

Description
-----------

Release is an infrastructure project to develop and support the
automatic build, release, and monitoring of projects artifacts, status,
and dependancies.

Motivatation
------------

A scalable solution is required to support the growing number of
interdependant projects. We believe that a common automated and reliable
platform is needed to build, monitor, and report these projectsis, but
such a platform should live in a serperate project.

Scope
-----

1) Autorelease: A version controlled collection of build related scripts
committed into Gerrit

2) Quality of Projects: An objective data-driven visualization of
project quality, status, and report.

3) Project Dependency: Automatically calculate project dependacies and
visualize accordingly.

4) Build Refactoring: Refactor artifact versioing, POM properties, and
tag management.

5) Tasks defined in this bug:
https://bugs.opendaylight.org/show_bug.cgi?id=1494

Components
----------

Autorelease
^^^^^^^^^^^

-  Version Control

   -  Put autorelease scripts into Gerrit.
   -  Scripts modification should go through Gerrit peer review process.
   -  Enforce versioning control and release control.

-  Script Composition

   -  Put all Jenkin commands and scripts into autorelease scripts.
      Currently, the Jenkins job template has executable code in its
      build configurations. The whole content of autorelease scripts was
      pasted into Jenkins job template. This reduces readability and
      also no gerrit review process is enforced. These should be moved
      to a version controlled autorelease script committed to Gerrit.
   -  use only jenkins template to do release build

-  Regular Builds

   -  Deploy necessary infrastructure in place to automatically build on
      a routine cycle: daily, weekly, milstones, major release
      candidates

Quality of Projects
^^^^^^^^^^^^^^^^^^^

-  Portal

   -  Have a central web portal with an overview of the project status
      and release status
   -  This should be used for release decision.

-  Data Driven

   -  Portal should give people an objective fact based summary of
      project quality based on criterias such as

      -  Number of Defects Open
      -  Number of Static Analysis Violations
      -  Percentage of Code Coverage

-  Visualization

   -  Portal should display data in a manner that is easily consumed.

Project Dependancy
^^^^^^^^^^^^^^^^^^

-  Dependancy Tree

   -  Calculate project dependency automatically. Provide a script that
      will allow a project to convert all dependencies outside of the
      project to the latest weekly release.

-  Visualization

   -  Integrate Mathieu’s idea of project explorer.

Build Refactoring
^^^^^^^^^^^^^^^^^

-  Artifact Versioning

   -  Find a way to get a consistent suffix to replace SNAPSHOT for ODL
      artifacts in daily/weekly/major builds so folks can easily consume
      them.

      -  foo-x.y.z-SNAPSHOT becomes foo-x.y.z--HELIUM.PRE-vYYYYMMDDMMSS
      -  where the vYYYYMMDDMMSS is the same across all artifacts built
         by the autorelease.

-  Tag Management

   -  Have the autorelease job dump a simple text file with the tags of
      the commits it is built against as an artifact to the job in a
      predefined format. The projects can build very simple Jenkins jobs
      to pull tags. Something like:

      -  Example
      -  controller 2a7de8c0a2804a981a739ed85a96f190306f47a8
         HELIUM.PRE-vYYYYMMDDMMSS
      -  sfc 2a7de8c0a2804a981a739ed85a96f190306f47a8
         HELIUM.PRE-vYYYYMMDDMMSS

-  Included Projects

   -  Add all of the Helium projects to autorelease.

-  POM Refactoring

   -  Have a central place which tracks the current versions for all
      projects such as odlparent's pom file.

More Information
^^^^^^^^^^^^^^^^

-  Tasks defined in this bug:
   https://bugs.opendaylight.org/show_bug.cgi?id=1494

Resources Committed (developers committed to working)
-----------------------------------------------------

-  George Zhao <George.Y.Zhao@huawei.com> IRC: gzhao
-  Ed Warnicke <eaw@cisco.com> IRC: edwarnicke
-  An Ho <an.ho@huawei.com>

Initial Committers
------------------

-  George Zhao <George.Y.Zhao@huawei.com> IRC: gzhao
-  Ed Warnicke <eaw@cisco.com> IRC: edwarnicke
-  An Ho <an.ho@huawei.com>

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

Contact
-------

-  **Contact Email:** George.Y.Zhao@huawei.com, eaw@cisco.com
-  **Mailing List:** release-dev@lists.opendaylight.org
-  **IRC Channel:** #opendaylight-release
