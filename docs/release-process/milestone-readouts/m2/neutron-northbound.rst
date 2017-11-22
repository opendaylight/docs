==================
Neutron Northbound
==================

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes/No

   Yes. No tentative API.

   - If you had Tentative APIs, have they been moved to Provisional or dropped?

     N/A

   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? (Yes/No) <link to e-mail>

     N/A

   - Also please list all dropped APIs.

     N/A

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? (Yes/No)

   Yes.

   - (If no, please list the features you were expecting that have not been delivered)

     N/A

   - (The respective project [1]_ you were expecting to receive them from)

     N/A

3. Were there any project-specific deliverables planned for this milestone?
   Yes/No

   No.

   - (If so, were they delivered? Yes/No)

     N/A


Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? (Yes/No)

   Yes

   - Please provide link to gerrit patch

     https://git.opendaylight.org/gerrit/#/c/58981/


2. List all top-level, user-facing, and stable Karaf features for your project.

   - For top-level and user-facing features, please provide a one-sentence
     description a developer and/or user would find helpful.

   - odl-neutron-service: Basic library for for openstack Neutron integration working with networking-odl



Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   Yes. no updates from Carbon.

   - One user/operator guide section per user-facing feature.
     https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/neutron-service-user-guide.rst;hb=HEAD
   - One developer guide per top-level feature.
     - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/neutron-service-developer-guide.rst;hb=HEAD
     - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/neutron-northbound.rst;hb=HEAD
   - An installation guide for any top-level features that require more than
     feature:install <feature-name> to install.
     N/A as this is covered by openstack service provider, e.g. netvirt
   - Release notes (mandatory) [2]_.
     https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/release-notes/projects/neutron-northbound.rst;hb=HEAD
   - Optional tutorials and how-tos.
     N/A


2. Have you checked in a reStructuredText outline to the docs repository? (Yes/No)

   Yes

   - Please provide link to gerrit patch

     https://git.opendaylight.org/gerrit/#/c/44169/


Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   (Yes/No)

   No

   - (If yes, link to test report)
   - (If no, why?)

     the project has requested system test weaver as before release.
     https://lists.opendaylight.org/pipermail/release/2017-October/012703.html
     Basically system test is done by openstack service provider like netvirt and also
     openstack CI by networking-odl project.
     https://review.openstack.org/#/c/521692/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? (Yes/No)

   N/A as 1.

   - (If yes, link to test plans)
   - (If no, why?)


Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   (Yes/No)

   No.

   - (If so, were they delivered? Yes/No )

     N/A

2. Have you updated your project facts with the project type category? (Yes/No)

   Yes.

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? (Yes/No)

   Yes.

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
