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

============
Distribution
============

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? Yes

3. Do you have content in your project documentation? Yes

   - :doc:`../../../user-guide/distribution-version-user-guide`
   - :doc:`../../../developer-guide/distribution-version`
   - :doc:`../../../developer-guide/distribution-test-features`
   - :doc:`../../../getting-started-guide/common-features/clustering`
   - :doc:`../../../getting-started-guide/common-features/persistence_and_backup`

4. Has your project met the requirements to be included in Maven Central [2]_?
   No, missing GPG signing.

5. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes

6. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/distribution

7. Does your project use any ports, including for testing? No

8. Does your project build successfully in Autorelease? Yes

   - https://jenkins.opendaylight.org/releng/view/distribution/job/integration-distribution-validate-autorelease-oxygen/ 

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
