.. Instructions
..    1. Replace Project Name with your actual project name, ensure you have
..       the same number of ='s as the length of your project in the line before
..       and the line after.
..    2. Remove the (Yes/No) answer at the end of each question with your actual
..       response: Yes or No
..       Note: For Question 5, the response could be: No Deliverables
..    3. For detailed information on each question, use a sub list with a -
..       in front that aligns with the text above and ensure you have a blank
..       line before it.
..

======
DAEXIM
======

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   - No

2. Has your project met code freeze [1]_?

   - Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation?

   - Yes

4. Is your documentation complete [2]_?

   - Yes
   - Developer's Guide: https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/daexim-developer-guide.rst;h=301e9bf2a362217eff5b47b7aebcfc0e70fa555b;hb=HEAD
   - User Guide: https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/daexim-user-guide.rst;h=794455c6125bfee5e78983180811ba4f1dae3b6c;hb=HEAD


5. Were project-specific deliverables planned for this milestone delivered
   successfully?

   - No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature?

   - Yes
   - Jenkins CI for daexim: https://jenkins.opendaylight.org/releng/view/daexim/

7. Do you have any CLM violations?

   - No. All warnings and errors are from other projects.
   - https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-maven-clm-oxygen/

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_?

   - N/A. Not a stable feature.
   - Anyway, sonar is run with 84% Line Coverage and 0 FindBugs.
   - https://jenkins.opendaylight.org/releng/view/All-Sonar/

B. Are you running several automated system test jobs [4]_ for each stable
   feature?

   - N/A

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
