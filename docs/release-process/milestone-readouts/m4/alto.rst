====
ALTO
====

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   - No

2. Has your project met code freeze [1]_?

   - No (a few pending patches not merged)

3. Are all externally visible strings frozen to allow for translation &
   documentation?

   - Yes

4. Is your documentation complete [2]_?

   - Yes
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/alto-developer-guide.rst;h=af75aec33d31a2e92efe1084d17a55aa253a8028;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/alto-user-guide.rst;h=3093d9d546d2db987307a1fe0cb43daa9a5b4214;hb=refs/heads/master

5. Were project-specific deliverables planned for this milestone delivered
   successfully?

   - Yes

6. Are you running at least one basic automated system test job for each
   top-level feature?

   - Yes
   - https://jenkins.opendaylight.org/releng/view/alto/job/alto-csit-1node-setup-all-oxygen/

7. Do you have any CLM violations? (Yes/No)

   - Yes (security violation because of some dependent libraries)

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_?
   N/A (no stable features)

B. Are you running several automated system test jobs [4]_ for each stable
   feature? (Yes/No)
   N/A (no stable features)

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance, longevity/stability
