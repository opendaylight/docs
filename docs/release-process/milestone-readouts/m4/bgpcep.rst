===========
BGP LS PCEP
===========

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   - No

2. Has your project met code freeze [1]_?

   - Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation?

   - Yes

4. Is your documentation complete [2]_?

   - Yes
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-developer-guide.rst;h=0e5df8030a53fc22aeb044982758f362271d91b3;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-monitoring-protocol-developer-guide.rst;h=d83bbc7dce561e9ac6319cadba0a1460003d9641;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/pcep-developer-guide.rst;h=d1b48bfbfb2b91b1002e6fff99cb9360490366ea;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-user-guide.rst;h=307de691444779efdeda065d9f5e98791ef1bfc8;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-monitoring-protocol-user-guide.rst;h=5153494111add81a13c3582d56d240ce782e63ec;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/pcep-user-guide.rst;h=8cba92ecc27a7696656486b85649c4f740f8f6f9;hb=refs/heads/master


5. Were project-specific deliverables planned for this milestone delivered
   successfully?

   - Yes

6. Are you running at least one basic automated system test job for each
   top-level feature?

   - Yes
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-oxygen/

7. Do you have any CLM violations? (Yes/No)

   - No

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_?

   - Yes.
   - https://sonar.opendaylight.org/dashboard?id=org.opendaylight.bgpcep%3Abgpcep-aggregator.

B. Are you running several automated system test jobs [4]_ for each stable
   feature? (Yes/No)

   - Yes
   - https://jenkins.opendaylight.org/releng/view/bgpcep/

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance, longevity/stability
