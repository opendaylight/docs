===
SXP
===

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - Developer docs - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/sxp-developer-guide.rst;h=020eae563872c7c292eeebe5893068ae85935f05;hb=HEAD
   - User guide - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/sxp-user-guide.rst;h=ea2ce60ed85c9be80e9049260492e33814c34ab5;hb=HEAD

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

7. Do you have any CLM violations? (Yes/No)

   - All the violations present are either transitive dependencies from other ODL projects, or are used
     solely for testing.

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? No stable features


B. Are you running several automated system test jobs [4]_ for each stable
   feature? No stable features

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
