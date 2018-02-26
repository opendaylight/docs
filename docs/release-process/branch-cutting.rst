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

- Export ${NEXT_RELEASE} and ${CURR_RELEASE} with new and current release names.
  **(releng/builder committers)**

  .. code-block:: bash

     export NEXT_RELEASE="Nitrogen"
     export CURR_RELEASE="Carbon"

- Change JJB yaml files from `stream:carbon` branch pointer from `master -> stable/${CURR_RELEASE,,}`
  and create new `stream: ${NEXT_RELEASE,,}` branch pointer to branch master. This
  requires handling two different file formats interspersed with in autorelease projects.
  **(releng/builder committers)**

  .. code-block:: yaml

      stream:
        - Nitrogen:
            branch: master
        - Carbon:
            branch: stable/carbon

  .. code-block:: yaml

      - project:
          name: aaa-carbon
          jobs:
            - '{project-name}-verify-{stream}-{maven}-{jdks}'
          stream: nitrogen
          branch: master

  - The above manual process of updating individual files is automated with the script.
    **(releng/builder committers)**

  .. code-block:: bash

      cd builder/scripts/branch_cut
      ./branch_cutter.sh -n $NEXT_RELEASE -c $CURR_RELEASE

- Review and submit the changes to releng/builder project. **(releng/builder committers)**

Autorelease
-----------

- Block submit permissions for registered users and elevate RE's committer rights on gerrit.
  **(Helpdesk)**

  .. figure:: images/gerrit-update-committer-rights.png

  .. note::

     Enable **Exclusive** checkbox for the submit button to override any existing persmissions.

- Setup releng/autorelease repository.
  **(Release Engineering Team)**

  .. code-block:: bash

      git review -s
      git submodule foreach 'git review -s'
      git checkout master
      git submodule foreach 'git checkout master'
      git pull --rebase
      git submodule foreach 'git pull --rebase'

- Create stable/${CURR_RELEASE} branches based on HEAD master.
  **(Release Engineering Team)**

  .. code-block:: bash

      git checkout -b stable/${CURR_RELEASE,,} origin/master
      git submodule foreach 'git checkout -b stable/${CURR_RELEASE,,} origin/master'
      git push gerrit stable/${CURR_RELEASE,,}
      git submodule foreach 'git push gerrit stable/${CURR_RELEASE,,}'

- Enable create reference permissions on gerrit for RE's to submit .gitreview patches.
  **(Helpdesk)**

  .. figure:: images/gerrit-update-create-reference.png

  .. note::

     Enable Exclusive checkbox override any existing persmissions.

- Contribute .gitreview updates to stable/${CURR_RELEASE,,}.
  **(Release Engineering Team)**

  .. code-block:: bash

      git submodule foreach sed -i -e "s#defaultbranch=master#defaultbranch=stable/${CURR_RELEASE,,}#" .gitreview
      git submodule foreach git commit -asm "Update .gitreview to stable/${CURR_RELEASE,,}"
      git submodule foreach 'git review -t ${CURR_RELEASE,,}-branch-cut'
      sed -i -e "s#defaultbranch=master#defaultbranch=stable/${CURR_RELEASE,,}#" .gitreview
      git add .gitreview
      git commit -s -v -m "Update .gitreview to stable/${CURR_RELEASE,,}"
      git review -t  ${CURR_RELEASE,,}-branch-cut

- Merge all .gitreview patches submitted in the above step. **(Release Engineering Team)**
- Remove create reference permissions set on gerrit for RE's. **(Helpdesk)**
- Version bump master by x.(y+1).z. **(Release Engineering Team)**

  .. code-block:: bash

      git checkout master
      git submodule foreach 'git checkout master'
      pip install lftools
      lftools version bump ${CURR_RELEASE}

- Exclude version bump changes to release notes. **(Release Engineering Team)**

  .. code-block:: bash

      git checkout pom.xml scripts/

- Push version bump master changes to gerrit. **(Release Engineering Team)**

  .. code-block:: bash

      git submodule foreach 'git commit -asm "Bump versions by x.(y+1).z for next dev cycle"'
      git submodule foreach 'git review -t ${CURR_RELEASE,,}-branch-cut'

- Merge all version bump patches in the order of dependencies. **(Release Engineering Team)**
- Re-enable submit permissions for registered users and disable elevated RE committer rights on gerrit. **(Helpdesk)**
- Notify release list on branch cutting work completion. **(Release Engineering Team)**
