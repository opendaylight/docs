===
AAA
===

Please provide updates on any previously-incomplete items from prior milestone
readouts.
None

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes/No

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     Yes
   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them?
     N/A
   - Also please list all dropped APIs.
     N/A

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone?
   No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes

   - `Features <https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/aaa/features-aaa/pom.xml;hb=refs/heads/master>`_

2. List all top-level, user-facing, and stable Karaf features for your project.

   - **odl-aaa-api**
     - Provides generic AAA API constructs.

   - **odl-aaa-cert**
     - Enables an MD-SAL based certificate store for southbound protocol usage.

   - **odl-aaa-cli**
     - Installs a number of AAA specific Karaf CLI commands for administrative purposes.

   - **odl-aaa-encryption-service**
     - Provides a service to do basic encryption/decryption based on a set of common defaults.

   - **odl-aaa-shiro**
     - Enables AAA on all ODL RESTFUL interfaces.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - One user/operator guide section per user-facing feature.
   - One developer guide per top-level feature.
   - An installation guide for any top-level features that require more than
     feature:install <feature-name> to install.
   - Release notes (mandatory) [2]_.
   - Optional tutorials and how-tos.

2. Have you checked in a reStructuredText outline to the docs repository? No

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features? Yes

   - `Feature Test Report <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-nitrogen/246/>`_

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? Yes

   - `System Test Report <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-nitrogen/246/>`_

3. Have you integrated odlparent 3 / yangtools 2? No

   - Incomplete. `Pending Patch <https://git.opendaylight.org/gerrit/#/c/64196/>`_

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
