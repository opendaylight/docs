.. Instructions
..    1. Replace Project Name with your actual project name, ensure you have
..       the same number of ='s as the length of your project in the line before
..       and the line after.
..    2. Remove the (Yes/No) answer at the end of each question with your actual
..       response: Yes or No
..       Note: For Question 5, the response could be: No Deliverables
..    3. For detailed information on each question, use a sub list with a -
..       in front that aligns with the text above and ensure you have a blank
..

=====
OVSDB
=====

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

   - (Link to gerrit search for patches modifying the API [1]_)

3. Do you have content in your project documentation? Yes

   - :doc:`OVSDB User Guide <../../../user-guide/ovsdb-user-guide>`

   - :doc:`OVSDB Developer Guide <../../../developer-guide/ovsdb-developer-guide>`


4. Has your project met the requirements to be included in Maven Central [2]_?
   No

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables (bug fixes only)

6. Have you started automated system testing for your top-level features? Yes

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/ovsdb/>`_

7. Does your project use any ports, including for testing? Yes

   - 6640, 6641
   - (If yes, have you updated the wiki [3]_ with all ports used? Yes

8. Does your project build successfully in Autorelease? Yes


.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
