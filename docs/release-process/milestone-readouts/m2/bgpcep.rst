===========
BGP LS PCEP
===========

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes/No

   - https://wiki.opendaylight.org/view/BGP_LS_PCEP:Oxygen_Release_Plan#Externally_Consumable_APIs
   - https://wiki.opendaylight.org/view/BGP_LS_PCEP:Oxygen_Release_Plan#Removed_APIs_and.2For_Functionality

2. Are all your inter-project dependencies resolved?

   - Yes

3. Were there any project-specific deliverables planned for this milestone?

   - No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository?

   - Yes
   - https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bgp/src/main/features/features.xml;h=0ac6b0b0a2286515900879ed374e5138b61a49e2;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/pcep/src/main/features/features.xml;h=0ac6b0b0a2286515900879ed374e5138b61a49e2;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/src/main/features/features.xml;h=0ac6b0b0a2286515900879ed374e5138b61a49e2;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/rsvp/src/main/features/features.xml;h=0ac6b0b0a2286515900879ed374e5138b61a49e2;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/extras/src/main/features/features.xml;h=0ac6b0b0a2286515900879ed374e5138b61a49e2;hb=refs/heads/master

2. List all top-level, user-facing, and stable Karaf features for your project.

   - odl-bgpcep-bgp
   - odl-bgpcep-bmp
   - odl-bgpcep-pcep
   - odl-bgpcep-rsvp

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - developer guide
   - user guide
   - Release notes (mandatory).

2. Have you checked in a reStructuredText outline to the docs repository?

   - Yes.
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-developer-guide.rst;h=0e5df8030a53fc22aeb044982758f362271d91b3;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-monitoring-protocol-developer-guide.rst;h=d83bbc7dce561e9ac6319cadba0a1460003d9641;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/pcep-developer-guide.rst;h=d1b48bfbfb2b91b1002e6fff99cb9360490366ea;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-user-guide.rst;h=307de691444779efdeda065d9f5e98791ef1bfc8;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-monitoring-protocol-user-guide.rst;h=5153494111add81a13c3582d56d240ce782e63ec;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/pcep-user-guide.rst;h=8cba92ecc27a7696656486b85649c4f740f8f6f9;hb=refs/heads/master

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?

   - Yes.
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-oxygen/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature?

   - Yes
   - https://wiki.opendaylight.org/view/BGP_LS_PCEP:Oxygen_Feature_Tests

3. Have you integrated odlparent 3 / yangtools 2?

   - No

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone? No

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
