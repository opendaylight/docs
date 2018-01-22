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

====
eman
====

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

   - (Link to gerrit search for patches modifying the API [1]_)

3. Do you have content in your project documentation? Yes

    - Release notes, WC 266, https://git.opendaylight.org/gerrit/#/c/63036/3/docs/getting-started-guide/project-release-notes/eman.rst
    - Developer guide, WC 503, https://git.opendaylight.org/gerrit/#/c/56215/1/docs/developer-guide/eman-developer-guide.rst
    - User guide, WC 483, https://git.opendaylight.org/gerrit/#/c/56215/1/docs/user-guide/eman-user-guide.rst

4. Has your project met the requirements to be included in Maven Central [2]_?
   Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Have you started automated system testing for your top-level features? No

   - Automated testing not implemented

7. Does your project use any ports, including for testing? No


8. Does your project build successfully in Autorelease? Yes

   - https://jenkins.opendaylight.org/releng/view/eman/job/eman-distribution-check-oxygen/23/

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
