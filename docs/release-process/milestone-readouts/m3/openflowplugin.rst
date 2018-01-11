===============
OpenFlow Plugin
===============

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

   * **User Guide(s):**

     * :doc:`../../../user-guide/openflow-plugin-project-user-guide`

   * **Developer Guide(s):**

     * :doc:`../../../developer-guide/openflow-plugin-project-developer-guide`


4. Has your project met the requirements to be included in Maven Central [2]_?
   No, GPG/PGP signing part is not done yet.

5. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes

6. Have you started automated system testing for your top-level features? Yes

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

7. Does your project use any ports, including for testing? Yes

   - 6633, 6653
   - (If yes, have you updated the wiki [3]_ with all ports used? Yes

8. Does your project build successfully in Autorelease? Yes

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
