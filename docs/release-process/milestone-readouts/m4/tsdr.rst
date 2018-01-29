====
TSDR
====

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - TSDR User Guide [5]_
   - TSDR ElasticSearch User Guide [6]_

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? Yes

   - https://jenkins.opendaylight.org/releng/view/tsdr/

7. Do you have any CLM violations? No

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? No

   - TSDR coverage has slipped due to changes in the framework.  We are
     working to fix the test cases that are broken.
   - https://sonar.opendaylight.org/dashboard?id=org.opendaylight.tsdr%3Areleasepom [7]_

B. Are you running several automated system test jobs [4]_ for each stable
   feature? Yes

   - https://jenkins.opendaylight.org/releng/view/tsdr/

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
.. [5] https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/tsdr-user-guide.rst
.. [6] https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/tsdr-elastic-search.rst
.. [7] TSDR needs to be added back to distribution. We are looking into it.
