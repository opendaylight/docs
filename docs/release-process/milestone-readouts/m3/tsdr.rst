====
TSDR
====

1. Do you have any previously-incomplete items from prior milestone
   readouts?
   Yes, the odlparent 3.0.2 is incomplete. We've had one patch set pushed out but have to wait for upstream migration complete. https://git.opendaylight.org/gerrit/#/c/66528/

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

4. Has your project met the requirements to be included in Maven Central [2]_?
   Yes except GPG/PGP

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/tsdr/

7. Does your project use any ports, including for testing? Yes

   - (If yes, list of ports used)  Yes, 514,1514, 2055,6343.
   - (If yes, have you updated the wiki [3]_ with all ports used? Yes

8. Does your project build successfully in Autorelease? Yes

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
