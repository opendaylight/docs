**************************
Project Standalone Release
**************************

This page explains how a project can release independently outside of the
OpenDaylight simultanious release.

Preparing your project for release
==================================

A project can produce a staging repository by clicking "build" for their
{project-name}-maven-release-{stream} job. This job performs the following
duties:

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
3. Download taglist.log and project.bundle
4. Read taglist.log and checkout the commit hash listed
5. Merge the project.bundle patches
6. Git tag the release
7. Push release tag to Gerrit

Steps 4-7 as bash:

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
