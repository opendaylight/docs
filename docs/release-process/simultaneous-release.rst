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

- Nexus: click release for staging repo **(Helpdesk)**
- Send email to Helpdesk with binary URL to update website **(Helpdesk)**
- Send email to TSC and Release mailing lists announcing release binaries location **(Release Engineering Team)**
- Checkout autorelease and switch to release branch eg stable/boron
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

        ../scripts/patch-odl-release.sh /tmp/patches Boron
        git review -y -t Boron
        git push gerrit release/boron

- Tag autorelease too

    .. code-block:: bash

        git submodule foreach git checkout release/beryllium
        git add [add each project individually to not pull in extra]
        git commit -sm "Release Beryllium"
        git tag -asm "OpenDaylight Beryllium release" release/beryllium
        git review -y -t Beryllium
        git push gerrit release/beryllium

- Generate release notes (???)
- Send email to release/tsc/dev notifying tagging and version bump complete **(Release Engineering Team)**
