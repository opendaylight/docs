===========
Packetcable
===========

1. Do you have any previously-incomplete items from prior milestone
   readouts?
   Yes.
 
   - Migration to Yangtools 2 and ODLParent 3 is not complete; understanding is that there's still work happening in the infra to support this.

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now?
   Yes.

   - No change in APIs so there is no associated gerrit patch.

3. Do you have content in your project documentation?
   Yes.

   - Developer Guide - 1070 words
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/packetcable-developer-guide.rst;h=e7255fc1ec843122650cbb69e45bd96629bbcb3f;hb=refs/heads/master

   - User Guide - 1150 words
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/packetcable-user-guide.rst;h=4454d4aaa69337917dfa3fd0593f8b358b8823e6;hb=refs/heads/master

4. Has your project met the requirements to be included in Maven Central [2]_?
   No.

   - Packetcable is not designated as a "Stable" project.

5. Were project-specific deliverables planned for this milestone delivered
   successfully?
   No Deliverables.

6. Have you started automated system testing for your top-level features?
   Yes.

   - https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-oxygen/83/robot/

7. Does your project use any ports, including for testing?
   Yes.

   - Packetcable uses port 3918; Wiki is updated.

8. Does your project build successfully in Autorelease?
   No.

   - Autorelease builds at M2 were successful.  We think root cause for current failures is not in the Packetcable project.


.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
