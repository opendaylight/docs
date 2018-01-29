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
   readouts? No

2. Has your project met code freeze [1]_? No
The CSIT infrastructure changes caused serious problems for SFC,
consequently, we are still waiting on these integration/test
patches to be merged:

- https://git.opendaylight.org/gerrit/#/c/67539/
- https://git.opendaylight.org/gerrit/#/c/67544/

Once these patches are merged, we still need to merge the following SFC patches:

- https://git.opendaylight.org/gerrit/65007
- https://git.opendaylight.org/gerrit/66750
- https://git.opendaylight.org/gerrit/67127
- https://git.opendaylight.org/gerrit/67585
- https://git.opendaylight.org/gerrit/67432
- https://git.opendaylight.org/gerrit/66956

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? No

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? Yes

   - https://jenkins.opendaylight.org/releng/view/sfc/

7. Do you have any CLM violations? (Yes/No)

   - (If yes, list your CLM violations and explain why each violation can be exempt)

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
