===========
Packetcable
===========

1. Do you have any previously-incomplete items from prior milestone
   readouts?
   No

2. Has your project met code freeze?
   Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation?
   Yes

4. Is your documentation complete?
   Yes

   - packetcable-user-guide.rst:
     https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/packetcable-user-guide.rst;h=4454d4aaa69337917dfa3fd0593f8b358b8823e6;hb=refs/heads/master

   - packetcable-developer-guide.rst:
     https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/packetcable-developer-guide.rst;h=e7255fc1ec843122650cbb69e45bd96629bbcb3f;hb=refs/heads/master

   - No pending gerrit patches are waiting approval

5. Were project-specific deliverables planned for this milestone delivered
   successfully?
   Yes

6. Are you running at least one basic automated system test job for each
   top-level feature?
   Yes

   - https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-oxygen/131/robot/

7. Do you have any CLM violations?
   Yes

   - Violations are in upstream components.


**Stable Features (Only for Projects with Stable Features)**

** The Packetcable project has no stable features. **

A. Do your stable features fulfill quality requirements [3]_? (Yes/No)

B. Are you running several automated system test jobs [4]_ for each stable
   feature? (Yes/No)


.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
