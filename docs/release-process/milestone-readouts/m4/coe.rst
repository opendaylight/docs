===
Coe
===

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   No

2. Has your project met code freeze [1]_?

   Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation?

   Yes

4. Is your documentation complete [2]_?

   Yes.

     - https://git.opendaylight.org/gerrit/#/c/66869/
     - https://wiki.opendaylight.org/view/COE:Main

5. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

   No. the followings features are postponed to fluorine cycle.
   - k8s service implementation

6. Are you running at least one basic automated system test job for each
   top-level feature?

   Coe project has just achieved one end to end functionality implementation in Oxygen.
   CSIT activities have started, and in progress.
   - https://git.opendaylight.org/gerrit/#/c/67227/

7. Do you have any CLM violations?

   - https://jenkins.opendaylight.org/releng/view/CLM/job/coe-maven-clm-oxygen/
   - Violations seen are due to other projects Coe depend on, none added by Coe itself.

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_?

   N/A

B. Are you running several automated system test jobs [4]_ for each stable
   feature?
   N/A

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
