============
Project Name
============

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped? Yes
   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? No project expected API change.
   - Also please list all dropped APIs. Dropped features:
     odl-integration-compatible-with-1node, odl-integration-compatible-with-3node

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone?
   No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes

   - `https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=tree;f=features/singles;h=57fd26cc25c76b7efa484bd7c6b0cbce81db097c;hb=HEAD`_

2. List all top-level, user-facing, and stable Karaf features for your project.

   * **odl-distribution-version**: Feature to retrieve distribution version
   * **odl-integration-compatible-with-all**: Feature containing compatible user-facing features (used for test)
   * **odl-integration-all**: Feature containing all projects user-facing features (used for test)

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   * **User Guide for distribution version:**

     * :doc:`../../../user-guide/distribution-version-user-guide`

   * **Developer Guide for distribution version:**

     * :doc:`../../../developer-guide/distribution-version`

   * **Developer Guide for distribution test features:**

     * :doc:`../../../developer-guide/distribution-test-features`

   * **Distribution scripts:**

     * :doc:`../../../getting-started-guide/common-features/clustering`
     * :doc:`../../../getting-started-guide/common-features/persistence_and_backup`

   * Release notes

2. Have you checked in a reStructuredText outline to the docs repository? No

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   Yes

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/distribution/>`_

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? Yes

   - ` Test Plans <https://wiki.opendaylight.org/view/Integration/Distribution/Oxygen_Feature_Tests>`_

3. Have you integrated odlparent 3 / yangtools 2? No

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   No

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
