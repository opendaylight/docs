====
DLUX
====

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - Developer Guide https://git.opendaylight.org/gerrit/#/c/63280/
   - Release Notes https://git.opendaylight.org/gerrit/#/c/63284/

5. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables)

6. Are you running at least one basic automated system test job for each
   top-level feature? No

   - https://git.opendaylight.org/gerrit/#/c/29612/
     Outdated patch and due lack of developers we are not working on it.

7. Do you have any CLM violations? (Yes/No)

   - Security issues with Angular 1.4.14
     Outdated version of AngularJS. Upgrade to 1.6 version needs some dev and testing time we don't have.

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
