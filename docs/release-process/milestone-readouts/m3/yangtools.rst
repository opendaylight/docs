==========
YANG Tools
==========

1. Do you have any previously-incomplete items from prior milestone
   readouts? Yes

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

4. Has your project met the requirements to be included in Maven Central [2]_?
   Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes.

6. Have you started automated system testing for your top-level features? No

   - Test plan is being drawn up for M4, features are system-tested by mdsal
     and controller projects.

7. Does your project use any ports, including for testing? No.

8. Does your project build successfully in Autorelease? No

   - yangtools follows normal project release and has already released its Oxygen
     artifacts.

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
