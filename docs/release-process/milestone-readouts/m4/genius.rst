======
GENIUS
======

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? No
   - Some patches for new feature 'ITM Scale Improvements' are under review.
   - We plan to get them in before SR1

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/genius-user-guide.rst;h=1385ebb30901336ff50cf3a1fcc161cd72fd5c8d;hb=HEAD
   - https://git.opendaylight.org/gerrit/gitweb?p=genius.git;a=blob;f=docs/genius-design-doc.rst;h=ce6a41cf56ecf698a5a81da41ac455442fa65f42;hb=HEAD
   - https://git.opendaylight.org/gerrit/gitweb?p=genius.git;a=blob;f=docs/interface-manager-design.rst;h=0fe65872956dd373356dc3aa538b163b82e77a70;hb=HEAD
   - https://git.opendaylight.org/gerrit/gitweb?p=genius.git;a=blob;f=docs/ITM-design.rst;h=e9f740f0e708845462ea41e2d6ae41202d0ada8f;hb=HEAD
   - https://git.opendaylight.org/gerrit/gitweb?p=genius.git;a=tree;f=docs/specs;h=eeaaeb58587345c8de217ca42972f6ad7d10b264;hb=HEAD

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? Yes

   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-periodic-performance-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-clustering-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-routing-all-oxygen/

7. Do you have any CLM violations? No

   - https://jenkins.opendaylight.org/releng/view/CLM/job/genius-maven-clm-oxygen/
   - Violations seen are due to other projects Genius depend on, none added
   by Genius itself.

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? NA


B. Are you running several automated system test jobs [4]_ for each stable
   feature? NA

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
