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
performed using the self-serve release process:
https://docs.releng.linuxfoundation.org/projects/global-jjb/en/latest/jjb/lf-release-jobs.html


1. Ask helpdesk the necessary right on jenkins if you do not have them
2. Log on https://jenkins.opendaylight.org/
3. Choose your project dashboard
4. Check your relase branch has been successfully staged and note the corresponding log folder
5. Go back to the dashboard and choose the release-merge job
6. Click on build with parameters
7. Fill in the form:

* GERRIT_BRANCH must be changed to the branch name you want to release (e.g. stable/sodium)
* VERSION with your corresponding project version (e.g. 0.4.1)
* LOG_DIR with the relative path of the log from the stage release job (e.g. project-maven-stage-master/17/)
* choose maven DISTRIBUTION_TYPE in the select box
* uncheck USE_RELEASE_FILE box

8. Launch the jenkins job


This job performs the following duties:
* download and patch your project repository
* build the project
* publish the artifacts on nexus
* tag and sign the release on Gerrit

