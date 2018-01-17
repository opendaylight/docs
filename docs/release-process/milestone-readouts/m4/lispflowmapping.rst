=================
LISP Flow Mapping
=================

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - There is one outstanding patch that needs to merge only after stable
     branch cutting: https://git.opendaylight.org/gerrit/#/c/67234/

5. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes

6. Are you running at least one basic automated system test job for each
   top-level feature? (Yes/No)

   - https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-1node-msmr-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-3node-msmr-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-1node-performance-only-oxygen/

7. Do you have any CLM violations? No

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
