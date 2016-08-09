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

  .. code-block:: bash

      git submodule foreach sed -i -e 's#defaultbranch=master#defaultbranch=stable/boron#' .gitreview
      git submodule foreach git commit -asm "Update .gitreview to stable/boron"

- Version bump master by 0.1.0
  **(Release Engineering Team)**

  .. code-block:: bash

      git submodule foreach version.sh bump Boron
      git submodule foreach git commit -asm "Bump versions by 0.1.0 for next dev cycle"

- Re-enable Submit permission on master branch
  **(Helpdesk)**
