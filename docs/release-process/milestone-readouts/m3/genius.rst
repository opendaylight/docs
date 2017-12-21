======
Genius
======

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

   - No change in externlly accessible Stable APIs. New APIs will be added.

3. Do you have content in your project documentation? Yes

   - Genius User Guide, WC: 1617,
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/genius-user-guide.rst;h=1385ebb30901336ff50cf3a1fcc161cd72fd5c8d;hb=HEAD

4. Has your project met the requirements to be included in Maven Central [2]_?
   No

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/genius/

7. Does your project use any ports, including for testing? No

8. Does your project build successfully in Autorelease? Yes

   - https://jenkins.opendaylight.org/releng/job/genius-validate-autorelease-oxygen/306/

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
