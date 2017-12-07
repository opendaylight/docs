====
BIER
====

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes/No

   - Yes,https://wiki.opendaylight.org/view/BIER:Oxygen:Release_Plan#Externally_Consumable_APIs
   - No dropped APIs

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? (Yes/No)

   - Yes

3. Were there any project-specific deliverables planned for this milestone?
   Yes/No

   - No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? (Yes/No)

   - Yes, https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/repos/index/pom.xml

2. List all top-level, user-facing, and stable Karaf features for your project.

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/release-notes/projects/bier.rst
   - odl-bier-all
   - odl-bier-models
   - odl-bier-bierman
   - odl-bier-channel
   - odl-bier-service
   - odl-bier-te-pce
   - odl-bier-std-driver
   - odl-bier-adapter
   - odl-bier-oam
   - odl-bier-app

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - developer guide
   - user guide
   - Release notes (mandatory).

2. Have you checked in a reStructuredText outline to the docs repository? (Yes/No)

   - Yes
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bier-user-guide.rst
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bier-developer-guide.rst

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   (Yes/No)

   - Yes, https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-nitrogen/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? (Yes/No)

   - Yes, https://git.opendaylight.org/gerrit/gitweb?p=integration/test.git;a=blob;f=csit/testplans/bier-basic.txt

3. Have you integrated odlparent 3 / yangtools 2? (Yes/No/NA)

   - No

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   (Yes/No)

   - No

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
