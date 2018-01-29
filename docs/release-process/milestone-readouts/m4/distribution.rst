============
Distribution
============

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - :doc:`../../../user-guide/distribution-version-user-guide`
   - :doc:`../../../developer-guide/distribution-version`
   - :doc:`../../../developer-guide/distribution-test-features`
   - :doc:`../../../getting-started-guide/common-features/clustering`
   - :doc:`../../../getting-started-guide/common-features/persistence_and_backup`

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? Yes

   - https://jenkins.opendaylight.org/releng/view/distribution

7. Do you have any CLM violations? Yes

   - The CLM job reports every violation from upstream
   OpenDaylight projects pulled in by Distribution.
   Those violations should be addressed by upstream projects themselves.
 
.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
