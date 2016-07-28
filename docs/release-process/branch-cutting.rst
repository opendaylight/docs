**************
Branch Cutting
**************

This page documents the current branch cutting tasks that are needed
to be performed at various milestones and which team has the necessary
permissions in order to perform the necessary task in Parentheses.

M5 Offset 2
===========

JJB
---

- Change JJB stream:boron branch pointer from master -> stable/boron
  **(releng/builder committers)**
- Create new stream:carbon branch pointer to branch master
  **(releng/builder committers)**

Process
-------

- Disable Submit permission on master branch
  **(Helpdesk)**
- Create stable/boron branches based on HEAD master
  **(Release Engineering Team)**
- Contribute .gitreview updates to stable/boron
  **(Release Engineering Team)**
- Version bump master by 0.1.0
  **(Release Engineering Team)**
- Re-enable Submit permission on master branch
  **(Helpdesk)**
