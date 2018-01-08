===
VTN
===

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

   - User's Guide, WC: 24131: https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/virtual-tenant-network-(vtn).rst;h=602e71bdfabc85641794e14a8c72082ed684e33d;hb=HEAD
   - Developer's Guide, WC: 1213: https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/virtual-tenant-network-(vtn).rst;h=810ca51907fb062516244b50a7f7a84ca6a8c9a9;hb=HEAD

4. Has your project met the requirements to be included in Maven Central [2]_?
   Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/vtn/

7. Does your project use any ports, including for testing? Yes

   - 8083
   - If yes, have you updated the wiki [3]_ with all ports used? Yes

8. Does your project build successfully in Autorelease? Yes

   - https://jenkins.opendaylight.org/releng/view/Validate-Jobs/job/vtn-validate-autorelease-oxygen/

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements

