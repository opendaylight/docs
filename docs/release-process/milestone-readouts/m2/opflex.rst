======
OpFlex
======

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     N/A
   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? N/A
   - Also please list all dropped APIs: N/A

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone?
   No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes (N/A)

2. List all top-level, user-facing, and stable Karaf features for your project.

   - N/A

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - User guide for agent-ovs daemon
   - Developer guide for libopflex, genie, agent-ovs
   - Install guide for Red Hat/CentOS
   - Release notes (mandatory)

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - `User guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/opflex-agent-ovs-user-guide.rst;h=d7212fc4e9f0c1d2d188ee513868cc4c92fed14e;hb=refs/heads/master>`_
   - `libopflex developer guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/opflex-libopflex-developer-guide.rst;h=2f8d371e6c67d3339dd6c0d5b199e5ef9232c613;hb=refs/heads/master>`_
   - `agent-ovs developer guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/opflex-agent-ovs-developer-guide.rst;h=b7840c50ffc9ec7ab7dc38809707f0574e23a018;hb=refs/heads/master>`_
   - `genie developer guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/opflex-genie-developer-guide.rst;h=72128c3db852ca092865547cec22b507f55524b0;hb=refs/heads/master>`_
   - `Install guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/getting-started-guide/project-specific-guides/opflex.rst;h=9c732221727455ad35072c225098b8eb91b610e1;hb=refs/heads/master>`_
   - Release notes pending

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   Yes

   - No top-level features
   - Testing exists in separate infrastructure

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? (Yes/No)

   - `System Test <https://wiki.opendaylight.org/view/OpFlex:Oxygen_Feature_Integration_System_Test>`_

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   No

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy? Yes
