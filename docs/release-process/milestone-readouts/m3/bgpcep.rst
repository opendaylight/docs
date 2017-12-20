===========
BGP LS PCEP
===========

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   - No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now?

   - Yes

3. Do you have content in your project documentation?

   - Yes
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-developer-guide.rst;h=0e5df8030a53fc22aeb044982758f362271d91b3;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-monitoring-protocol-developer-guide.rst;h=d83bbc7dce561e9ac6319cadba0a1460003d9641;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/pcep-developer-guide.rst;h=d1b48bfbfb2b91b1002e6fff99cb9360490366ea;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-user-guide.rst;h=307de691444779efdeda065d9f5e98791ef1bfc8;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-monitoring-protocol-user-guide.rst;h=5153494111add81a13c3582d56d240ce782e63ec;hb=refs/heads/master
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/pcep-user-guide.rst;h=8cba92ecc27a7696656486b85649c4f740f8f6f9;hb=refs/heads/master

4. Has your project met the requirements to be included in Maven Central [2]_?

   - Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully?

   - Yes

6. Have you started automated system testing for your top-level features?

   - Yes
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-oxygen/

7. Does your project use any ports, including for testing?

   - 179    - BGP
   - 1790   - BGP/PCEP
   - 12345  - BMP
   - 4189   - PCEP

8. Does your project build successfully in Autorelease?

   - Yes
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-validate-autorelease-oxygen/

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
