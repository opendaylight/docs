=======
Netconf
=======

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone?
   No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes

   - https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/repos/index/pom.xml

2. List all top-level, user-facing, and stable Karaf features for your project.

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/release-notes/projects/netconf.rst

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - User/operator guide section per user-facing feature.
   - One developer guide per top-level feature.
   - Release notes (mandatory) [2]_.

2. Have you checked in a reStructuredText outline to the docs repository? No

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   Yes

   - https://jenkins.opendaylight.org/releng/view/netconf/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? Yes

   - https://jenkins.opendaylight.org/releng/view/netconf/ 

3. Have you integrated odlparent 3 / yangtools 2? Yes

   - https://git.opendaylight.org/gerrit/#/c/64202/

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
