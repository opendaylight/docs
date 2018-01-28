========
JSON-RPC
========

1. Do you have any previously-incomplete items from prior milestone
   readouts? (Yes/No) No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? (Yes/No) Yes

3. Do you have content in your project documentation? (Yes/No) 

   - User and Developer guides https://git.opendaylight.org/gerrit/67438 1793
     and 85 respectively. 

4. Has your project met the requirements to be included in Maven Central [2]_?
   (Yes/No) No, working on it.

5. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No) Yes

6. Have you started automated system testing for your top-level features? (Yes/No)

   - (If no, explain why) - No. We can do only minimal testing in this release
     as the corresponding external to ODL components are not yet upstreamed.

7. Does your project use any ports, including for testing? (Yes/No)

   - No predetermined standard ports. The JSON-RPC extension can be configured
     to use abitrary port(s)

8. Does your project build successfully in Autorelease? (No)
   - yangtools changes to 2.0.1 are not yet available in oxygen jenkins job.
     Builds successfully with master.

.. [2] http://central.sonatype.org/pages/requirements.html
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
