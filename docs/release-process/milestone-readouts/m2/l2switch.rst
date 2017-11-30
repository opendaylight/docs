========
l2switch
========

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: **Yes, available in documentation. No change from previous releases.**

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     **N/A**
   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? **N/A**
   - Also please list all dropped APIs.

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? **Yes**

3. Were there any project-specific deliverables planned for this milestone? **No**

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? **Yes**

2. List all top-level, user-facing, and stable Karaf features for your project.

   :odl-l2switch-packethandler: Decodes the packets coming to the controller
       and dispatches them to the other modules

   :odl-l2switch-loopremover: Runs STP and marks NodeConnectors as forwarding
       or blocking in the node inventory

   :odl-l2switch-arphandler: Responds to incoming ARP requests with learned
       addresses. In proactive-flood mode, floods traffic to all ports.

   :odl-l2switch-addresstracker: Observes IPv4, IPv6, and ARP traffic incoming
       via packethandler. Observations are written into the datastore for consumption

   :odl-l2switch-hosttracker: Translates address observations from the network
       (via addresstracker) into Hosts in the datastore

   :odl-l2switch-switch: Installs bi-directional MAC to MAC flows based on
       incoming ARP traffic

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - **User guide** http://docs.opendaylight.org/en/latest/user-guide/l2switch-user-guide.html
   - **Developer guide**, sections per feature http://docs.opendaylight.org/en/latest/developer-guide/l2switch-developer-guide.html
   - **Release notes** (mandatory) [2]_.

2. Have you checked in a reStructuredText outline to the docs repository? **No**


Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   **Yes**

   - https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-oxygen/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? **No**

   - (If no, why?) **This project is in maintenance mode, and is used mostly as an introductory project to ODL. We don't consider any features as stable. For each top-level feature we maintain a CSIT test suite, but no test plan template as such**

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   **No**

2. Have you updated your project facts with the project type category? **Yes**

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? **Yes**

.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
