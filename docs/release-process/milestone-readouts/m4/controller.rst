==========
controller
==========

1. Do you have any previously-incomplete items from prior milestone
   readouts? (Yes/No) No

2. Has your project met code freeze [1]_? (Yes/No) Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? (Yes/No) Yes

4. Is your documentation complete [2]_? (Yes/No) Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No) No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? (Yes/No) Yes

   - https://jenkins.opendaylight.org/releng/view/controller/

7. Do you have any CLM violations? (Yes/No) No

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? (Yes/No) Yes

   - https://sonar.opendaylight.org/dashboard?id=org.opendaylight.controller%3Areleasepom

B. Are you running several automated system test jobs [4]_ for each stable
   feature? (Yes/No) Yes

   - https://jenkins.opendaylight.org/releng/view/controller/

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
