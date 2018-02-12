========
DLUXApps
========

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes/No

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     (NA)
   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? (NA)
   - Also please list all dropped APIs. (NA)

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? (NA)

3. Were there any project-specific deliverables planned for this milestone? (No)

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? (Yes)

   - https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/repos/index/pom.xml

2. List all top-level, user-facing, and stable Karaf features for your project.

   - odl-dluxapps-nodes
     Application displays list of nodes in openflow (flow:1) topology.

   - odl-dluxapps-topology
     Basic topology application. Displays nodes and links from openflow (flow:1) topology.

   - odl-dluxapps-yangman
     GUI for data manipulation in controller. Generates forms based on loaded Yang models.
     User can interact with controller without knowledge of Yang models, test them, etc. Replacement of YangUI app.

   - odl-dluxapps-yangui
     Previous version of YangUI. Will be removed in next release.

   - odl-dluxapps-yangvisualizer
     Topology-like visualization of Yang models loaded in controller.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - One developer guide per top-level feature.
   - Release notes (mandatory)

2. Have you checked in a reStructuredText outline to the docs repository? (No)

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features? (Yes)

   - https://jenkins.opendaylight.org/releng/view/dluxapps/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? (No)

3. Have you integrated odlparent 3 / yangtools 2? (Yes)

   - https://git.opendaylight.org/gerrit/#/c/66491/

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone? (No)

2. Have you updated your project facts with the project type category? (Yes)

3. Do you acknowledge the changes to the RC Blocking Bug Policy? (Yes)

