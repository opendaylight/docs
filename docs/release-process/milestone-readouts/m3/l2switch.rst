========
L2Switch
========

1. Do you have any previously-incomplete items from prior milestone
   readouts? *No*

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? *Yes*

   - Link to gerrit search for patches modifying the API [1]_

3. Do you have content in your project documentation? *Yes*

   - User Guide (1838 words) [5]_
   - Developer Guide (2240 words) [6]_

4. Has your project met the requirements to be included in Maven Central [2]_?
   *No*

5. Were project-specific deliverables planned for this milestone delivered
   successfully? *No Deliverables*

6. Have you started automated system testing for your top-level features? *Yes*

   - Test report [7]_
   - There are possible regressions in Oxygen that need to be investigated

7. Does your project use any ports, including for testing? *No*

8. Does your project build successfully in Autorelease? *Yes*

   - link to successful autorelease job [4]_

.. [1] https://git.opendaylight.org/gerrit/#/q/status:merged+project:l2switch+file:%22%255E.*/model/.%252B%255C.yang%2524%22
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://jenkins.opendaylight.org/releng/view/autorelease/job/autorelease-validate-autorelease-oxygen/35
.. [5] https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/l2switch-user-guide.rst;h=381e9f9b3b3e5e6a072af58d011f5f23411f6b95;hb=refs/heads/master
.. [6] https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/l2switch-developer-guide.rst;h=96d7789d80c3597a10a276e9a17c0796b62634d6;hb=refs/heads/master
.. [7] https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-oxygen/
