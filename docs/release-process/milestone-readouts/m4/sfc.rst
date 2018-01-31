
=========================
Service Function Chaining
=========================

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes, on January 31, 2018.
   The CSIT infrastructure changes introduced in the middle of the
   release caused serious problems for SFC, consequently, we were
   late reaching this milestone. We worked with the Linux Foundation
   on a solution, and were finally able to reach a solution on Monday,
   January 29, 2018, at which time we submit the following integration
   test patches:

   - https://git.opendaylight.org/gerrit/#/c/67539/ Merged January 29, 2018
   - https://git.opendaylight.org/gerrit/#/c/67544/ Merged January 29, 2018

   Once these integration/test patches were merged, we had to verify CSIT
   on the following pending SFC patches, since it had not been possible
   to do so until now:

   - https://git.opendaylight.org/gerrit/65007
   - https://git.opendaylight.org/gerrit/66750
   - https://git.opendaylight.org/gerrit/67127
   - https://git.opendaylight.org/gerrit/67585
   - https://git.opendaylight.org/gerrit/67432
   - https://git.opendaylight.org/gerrit/66956

   All of these SFC patches were merged by Wednesday, January 31, 2018.

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? No

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? Yes

   - https://jenkins.opendaylight.org/releng/view/sfc/

7. Do you have any CLM violations? No

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
