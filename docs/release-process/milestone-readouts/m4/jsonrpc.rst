========
JSON-RPC
========

1. Yes, Item 8, M3 - build in autorelease. Pending merge on:
   https://git.opendaylight.org/gerrit/#/c/68055/ - green
   https://git.opendaylight.org/gerrit/#/c/68054/ - green
   https://git.opendaylight.org/gerrit/#/c/67788/ - should be green after
   the other two are merged.
   
2. Has your project met code freeze [1]_? 
   Yes. Only bugfixes for release stopper bugs will be accepted from
   9th of February onwards

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - All docs in M3 report

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? No

   - We need to add CIT one of the 3rd party JSON RPC stacks (either perl or
     python for CIT tests). Until this is done we can do only unit tests.

7. Do you have any CLM violations? (Yes/No)

   - Yes. The report on Nexus is not up to date, judging by versions it is
     for Nitrogen. Analyzing by hand none of the dependencies listed there
     are present in the Oxygen build. We will be clear where we stand there
     once the pending merges into dist-check and autorelease are complete
     and the job is re-ran.

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? (Yes/No)

   - N/A

B. Are you running several automated system test jobs [4]_ for each stable
   feature? (Yes/No)

   - N/A

