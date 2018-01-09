====
BIER
====

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   - No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now?

   - Yes

3. Do you have content in your project documentation?

   - Yes
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bier-user-guide.rst
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bier-developer-guide.rst

4. Has your project met the requirements to be included in Maven Central [2]_?

   - Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully?

   - Yes

6. Have you started automated system testing for your top-level features?

   - Yes
   - https://jenkins.opendaylight.org/releng/view/bier/job/bier-validate-autorelease-oxygen/

7. Does your project use any ports, including for testing?

   - No

8. Does your project build successfully in Autorelease?

   - Yes
   - https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-validate-autorelease-oxygen/

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
