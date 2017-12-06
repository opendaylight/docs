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

============
Project Name
============

1. Do you have any previously-incomplete items from prior milestone
   readouts? (Yes/No)

2. Has your project met code freeze [1]_? (Yes/No)

3. Are all externally visible strings frozen to allow for translation &
   documentation? (Yes/No)

4. Is your documentation complete [2]_? (Yes/No)

   - (For each document, link to the file in gerrit)
   - (Link to pending gerrit patches waiting approval)

5. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

6. Are you running at least one basic automated system test job for each
   top-level feature? (Yes/No)

   - (If yes, link to test report)
   - (If not, explain why)

7. Do you have any CLM violations? (Yes/No)

   - (If yes, list your CLM violations and explain why each violation can be exempt)

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? (Yes/No)

   - (If yes, link to sonar report)
   - (If not, explain why)

B. Are you running several automated system test jobs [4]_ for each stable
   feature? (Yes/No)

   - (If yes, link to test reports)
   - (If not, explain why)

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
