********************
Simultaneous Release
********************

This page explains how the OpenDaylight release process works once the TSC has
approved a release.

Preparations
============

After release candidate is built gpg sign artifacts using odlsign-bulk script in
**releng/builder/scripts**.

    .. code-block:: bash

        cd scripts/
        ./odlsign-bulk <staging-repo-id>  # eg. autorelease-1367

Releasing OpenDaylight
======================

- Block submit permissions for registered users and elevate RE's committer rights on gerrit.

    .. figure:: images/gerrit-update-committer-rights.png

- Nexus: click release for staging repo **(Helpdesk)**
- Nexus: click release for gpgsign repo (created above in Preparations) **(Helpdesk)**
- Send email to Helpdesk with binary URL to update website **(Helpdesk)**
- Send email to TSC and Release mailing lists announcing release binaries location **(Release Engineering Team)**
- Checkout autorelease and switch to release branch eg stable/carbon
  **(Release Engineering Team)**
- Make sure your git repo is setup to push (use git-review)

    .. code-block:: bash

        git review -s

- Download patches from Jenkins build page

    .. code-block:: bash

        cd /tmp
        wget https://jenkins.opendaylight.org/releng/view/autorelease/job/autorelease-release-boron/230/artifact/patches/*zip*/patches.zip
        unzip patches.zip

- Run the following commands for every project in the release

    .. code-block:: bash

        ../scripts/patch-odl-release.sh /tmp/patches Carbon
        git review -y -t Carbon
        git push gerrit release/carbon

- Tag autorelease too

    .. code-block:: bash

        git submodule foreach git checkout release/carbon
        git add [add each project individually to not pull in extra]
        git commit -sm "Release Carbon"
        git tag -asm "OpenDaylight Carbon release" release/carbon
        git review -y -t Carbon
        git push gerrit release/carbon

- Generate release notes (???)
- Send email to release/tsc/dev notifying tagging and version bump complete **(Release Engineering Team)**
