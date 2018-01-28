========
JSON-RPC
========

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

   - User and Developer guides https://git.opendaylight.org/gerrit/67438 1793
     and 85 respectively.

4. Has your project met the requirements to be included in Maven Central [2]_?
   No, working on it.

5. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes

6. Have you started automated system testing for your top-level features? No

   - We can do only minimal testing in this release
     as the corresponding external to ODL components are not yet upstreamed.

7. Does your project use any ports, including for testing? No

   - No predetermined standard ports. The JSON-RPC extension can be configured
     to use abitrary port(s)

8. Does your project build successfully in Autorelease? No
   - Builds OK with master.

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
