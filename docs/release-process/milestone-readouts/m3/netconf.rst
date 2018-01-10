
=======
Netconf
=======

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

   - http://docs.opendaylight.org/en/stable-nitrogen/release-notes/projects/netconf.html#documentation

4. Has your project met the requirements to be included in Maven Central [2]_?
   Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/netconf/

7. Does your project use any ports, including for testing? Yes

   - http://docs.opendaylight.org/en/stable-nitrogen/release-notes/projects/netconf.html#security-considerations
   - (If yes, have you updated the wiki [3]_ with all ports used? No) Netconf call-home TCP port 6666 is missing

8. Does your project build successfully in Autorelease? Yes

   - https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-validate-autorelease-oxygen/226/

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
