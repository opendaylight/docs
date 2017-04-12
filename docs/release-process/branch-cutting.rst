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

- Export ${NEW_RELEASE} and ${CURR_RELEASE} with new and current release names.

       .. code-block:: bash

           export NEW_RELEASE="Nitrogen"
           export CURR_RELEASE="Carbon"


- Change JJB stream:carbon branch pointer from master -> stable/boro and create
  new stream:carbon branch pointer to branch master. This require handling two
  diffirent file formats.

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

- Above manual process of updating all the files is automated with the script. 

 .. code-block:: bash

      cd builder/scripts/branch_cut
      ./branch_cutter.sh -n $NEW_RELEASE -c $CURR_RELEASE

- Submit changes to releng/builder.

Autorelease
-----------

- Block submit permissions for registered users and elevate RE's committer rights on gerrit.

    .. figure:: images/gerrit-update-committer-rights.png

    .. note::

       Enable Exclusive checkbox

- Setup and update releng/autorelease repository.

 .. code-block:: bash

      git review -s
      git submodule foreach 'git review -s'
      git checkout master
      git submodule foreach git checkout master
      git pull --rebase
      git submodule foreach 'git pull --rebase'

- Create stable/${CURR_RELEASE} branches based on HEAD master.

  .. code-block:: bash

      git submodule foreach 'git checkout -b stable/${CURR_RELEASE,,} origin/master'
      git push gerrit stable/${CURR_RELEASE,,}
      git submodule foreach 'git push gerrit stable/${CURR_RELEASE,,}'


- Enable create reference permissions on gerrit for RE's to submit .gitreview patches.

    .. figure:: images/gerrit-update-create-reference.png

    .. note::

       Enable Exclusive checkbox


- Contribute .gitreview updates to stable/boron.

  .. code-block:: bash

      git submodule foreach sed -i -e "s#defaultbranch=master#defaultbranch=stable/${CURR_RELEASE,,}#" .gitreview
      git submodule foreach git commit -asm "Update .gitreview to stable/${CURR_RELEASE,,}"
      git submodule foreach 'git review -t nitrogen-br-cut'
      sed -i -e "s#defaultbranch=master#defaultbranch=stable/${CURR_RELEASE,,}#" .gitreview
      git add .gitreview
      git commit -s -v -m "Update .gitreview to stable/${CURR_RELEASE,,}"
      git review -t nitrogen-br-cut


- Merge all the .gitreview patches

- Disable create reference permissions on gerrit for RE's.

- Version bump master by 0.1.0.

  .. code-block:: bash

      git checkout master
      git submodule foreach 'git checkout master'
      pip install lftools
      source <path/to>/lftools/bin/activate
      lftools version bump ${CURR_RELEASE}


- Exclude version bump changes to release notes

  .. code-block:: bash
      git checkout pom.xml scripts/


- Push version bump master changes to gerrit.

  .. code-block:: bash

      git submodule foreach 'git commit -asm "Bump versions by x.(y+1).z for next dev cycle"'
      git submodule foreach 'git review -t nitrogen-br-cut'


- Merge all version bump patches in the order of dependencies.


- Re-enable submit permissions for registered users and disable elevated RE committer rights on gerrit.


- Notify release list on branch cutting work completion
