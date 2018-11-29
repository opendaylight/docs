**************************
Project Standalone Release
**************************

This page explains how a project can release independently outside of the
OpenDaylight simultanious release.

Preparing your project for release
==================================

A project can produce a staging repository by using one of the following
methods against the {project-name}-maven-stage-{stream} job:

* Leave a comment ``stage-release`` against any patch for the stream to build
* Click ``Build with Parameters`` in Jenkins Web UI for the job

This job performs the following duties:

1. Removes -SNAPSHOT from all pom files
2. Produces a taglist.log, project.patch, and project.bundle files
3. Runs a `mvn clean deploy` to a local staging repo
4. Pushes the staging repo to a Nexus staging repo
   https://nexus.opendaylight.org/content/repositories/<REPO_ID>
   (REPO_ID is saved to staging-repo.txt on the log server)
5. Archives taglist.log, project.patch, and project.bundle files to log server

The files taglist.log and project.bundle can be used later at release time to
reproduce a byte exact commit of what was built by the Jenkins job. This can
be used to tag the release at release time.

Releasing your project
======================

Once testing against the staging repo has been completed and project has
determined that the staged repo is ready for release. A release can the be
performed as follows:

1. Ask helpdesk to sign the artifacts in staging repo
2. Ask helpdesk to promote the staging repo
3. Download taglist.log and project.bundle files. They can be found in the
   "patches" directory of the related jenkins release job logs.
4. Read taglist.log and checkout the commit hash listed
5. Merge the project.bundle patches
6. Git tag the release
7. Push release tag to Gerrit

Steps 4-7 as bash:
You will need a working GPG config to sign the release Git tag ("-s" option)

.. code:: bash

    PATCH_DIR=/tmp/patches
    PROJECT=odlparent
    VERSION=1.2.3
    git checkout $(awk '{print $NF}' "$PATCH_DIR/taglist.log")
    git fetch "$PATCH_DIR/$PROJECT.bundle"
    git merge --ff-only FETCH_HEAD
    git tag -asm "$PROJECT $VERSION" "v$VERSION"
    git push origin "v$VERSION"

Once complete the Git tag should be available in Gerrit and the Artifacts should
appear in the Nexus opendaylight.release repo.

The following shell script will do this for you:

.. code:: bash

    #!/bin/sh

    set -e

    if [ $# != 3 ]; then
        echo Usage: $0 project version log-URL
        echo fetches a project release\'s logs from log-URL and tags the git repository
        exit 1
    fi

    PROJECT=$1
    VERSION=$2
    PATCH_DIR=/tmp/patches

    mkdir -p $PATCH_DIR
    cd $PATCH_DIR
    rm -f ${PROJECT}.bundle taglist.log{,.gz}
    wget ${3}/patches/{${PROJECT}.bundle,taglist.log.gz}
    gunzip taglist.log.gz
    cd -
    git checkout $(awk '{print $NF}' "$PATCH_DIR/taglist.log")
    git fetch "$PATCH_DIR/$PROJECT.bundle"
    git merge --ff-only FETCH_HEAD
    git tag -asm "$PROJECT $VERSION" "v$VERSION"
    git push origin "v$VERSION"

You need to run it from a clone git repository of your project,
and give it as arguments the project’s short name, the newly-
released version, and the URL of the release build’s logs; for
example:

.. code:: bash

    sign-odl-release odlparent 4.0.0 https://logs.opendaylight.org/releng/vex-yul-odl-jenkins-1/odlparent-maven-release-master/11/
