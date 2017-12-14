===
SXP
===

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

   - SXP developer guide, WC: 521, https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/sxp-developer-guide.rst;h=020eae563872c7c292eeebe5893068ae85935f05;hb=HEAD
   - SXP user guide, WC: 2322, https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/sxp-user-guide.rst;h=ea2ce60ed85c9be80e9049260492e33814c34ab5;hb=HEAD

4. Has your project met the requirements to be included in Maven Central [2]_?
   No

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/sxp/

7. Does your project use any ports, including for testing? Yes

   - 64999, 8270
   - (If yes, have you updated the wiki [3]_ with all ports used? Yes)

8. Does your project build successfully in Autorelease? Yes

   - https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-validate-autorelease-oxygen/31/

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
