============
SXP
============

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     N/A
   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? N/A
   - Also please list all dropped APIs. N/A

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone?
   No


Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes/No)

   - https://git.opendaylight.org/gerrit/#/c/59781/

2. List all top-level, user-facing, and stable Karaf features for your project.

   - odl-sxp-controller - Implementation of the SXP protocol
   - odl-sxp-route - Masks the ODL cluster as a single device for the external
     SXP devices

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - Developer guide
   - User guide
   - Release notes (mandatory)

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/sxp-user-guide.rst;h=ea2ce60ed85c9be80e9049260492e33814c34ab5;hb=HEAD
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/sxp-developer-guide.rst;h=020eae563872c7c292eeebe5893068ae85935f05;hb=HEAD

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   Yes

   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-periodic-performance-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-clustering-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-routing-all-oxygen/
   
2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? Yes

   - https://wiki.opendaylight.org/view/SXP:Oxygen:System_Test_Plan

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   No

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
