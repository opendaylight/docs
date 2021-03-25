########################
Jira Ticketing Guideline
########################


Mandatory Fields
================

Here is the list of mandatory fields for each jira ticket:

**Project:**

description: the name of related project

values: aaa, bgpcep, controller, etc.

**Priority:**

description: the importance of ticket

values: Highest (reserved for release blocker bugs), High, Medium, Low, Lowest

**Type:**

description: issue type

values: Bug/New Feature/Task/Improvement/Deprecate

**affectedVersion:**

description: the version that the issue was seen (it’s only applicable to bugs)

values: aluminum/silicon/etc.; “None” to be used for anything other than “Bug”

**fixVersion:**

description: the version targeted for the bug fix, new feature, behavior/feature change (improvement), or deprecated feature (the first time that the feature is being disappeared), the release schedule can be found `here <https://docs.opendaylight.org/en/latest/release-process/release-schedule.html>`_

values: aluminum/silicon/etc.
