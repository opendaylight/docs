====
ALTO
====

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     N/A

   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them?
     N/A

   - Also please list all dropped APIs.
     N/A

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)?
   Yes

3. Were there any project-specific deliverables planned for this milestone?
   No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository?
   Yes

   - https://git.opendaylight.org/gerrit/gitweb?p=alto.git;a=blob;f=alto-release-features/features-alto/pom.xml;h=9b6d26050f06c3d508853c7ce005d4bd1c4b096b;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/repos/index/pom.xml;h=d9dbcafaed73ad39695a25a06e4e8f0ceb79b904;hb=HEAD

2. List all top-level, user-facing, and stable Karaf features for your project.

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/release-notes/projects/alto.rst

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - User Guide(s).
   - Developer Guide(s).
   - Installation Guide(s).
   - Release notes (mandatory).

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/alto-user-guide.rst;h=3093d9d546d2db987307a1fe0cb43daa9a5b4214;hb=HEAD

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   Yes

   - https://jenkins.opendaylight.org/releng/view/alto/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature?
   Yes

   - https://wiki.opendaylight.org/view/ALTO:_System_Test_Plan

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   No

2. Have you updated your project facts with the project type category?
   Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy?
   Yes
