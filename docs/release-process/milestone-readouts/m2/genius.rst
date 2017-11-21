======
Genius
======

Please provide updates on any previously-incomplete items from prior milestone
readouts.  NA

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   Updates to mdsalutil-api module

   - Following utility classes are removed

     - ClusteringUtils
     - EntityOwnerUtils

   - Above utility classes are replaced by following new class

     - EntityOwnershipUtils

   Updates to ITM api

   - Additional new RPCs will be added by ITM scale improvements

     - itm-rpc:get-egress-action
     - itm-rpc:set-bfd-enable-on-tunnel

   - Link to gerrit review for spec

     - https://git.opendaylight.org/gerrit/#/c/65809/

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone? No


Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes

   - https://git.opendaylight.org/gerrit/gitweb?p=genius.git;a=blob_plain;f=features/genius-features/pom.xml
   - https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/repos/index/pom.xml;h=d9dbcafaed73ad39695a25a06e4e8f0ceb79b904;hb=HEAD


2. List all top-level, user-facing, and stable Karaf features for your project.

   * **odl-genius** : This feature provides all functionalities provided by
     genius modules, including interface manager, tunnel manager, resource manager
     and ID manager and MDSAL Utils. It includes Genius APIs and implementation.

   * **odl-genius-rest** : This feature includes RESTCONF with 'odl-genius'
     feature.

   * **odl-genius-api** : This feature includes API for all the functionalities
     provided by Genius.

   * **odl-genius-fcaps-application** : includes Genius FCAPS application.

   * **odl-genius-fcaps-framework** : includes Genius FCAPS Framework.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - One user/operator guide section per user-facing feature.

     - https://wiki.opendaylight.org/view/Genius_:_An_Overview
     - https://wiki.opendaylight.org/view/Genius:_User_Guide
   - One developer guide per top-level feature.

     - http://docs.opendaylight.org/en/latest/submodules/genius/docs/index.html

   - An installation guide for any top-level features that require more than
     feature:install <feature-name> to install. --N/A

   - Release notes (mandatory) [2]_.

   - Optional tutorials and how-tos.

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - Link to gerrit patch

     - https://git.opendaylight.org/gerrit/#/c/53072/

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/genius/

   - Link to test report

     - https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-all-oxygen/
     - https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-3node-upstream-all-oxygen/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? Yes

   - Link to test plans

     - https://wiki.opendaylight.org/view/Genius:test_plan

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

