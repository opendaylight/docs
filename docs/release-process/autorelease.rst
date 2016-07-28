***********
Autorelease
***********

The Release Engineering - `Autorelease project
<https://wiki.opendaylight.org/view/RelEng/Autorelease>`_
is targeted at building the artifacts that are used in the release candidates
and final full release.

* `Open Gerrit Patches <https://git.opendaylight.org/gerrit/#/q/project:releng/autorelease+status:open>`_
* `Jenkins Jobs <https://jenkins.opendaylight.org/releng/view/autorelease/>`_

Cloning Autorelease
===================

To clone all the autorelease repo including it's submodules simply run the
clone command with the '''--recursive''' parameter.

.. code-block:: bash

    git clone --recursive https://git.opendaylight.org/gerrit/releng/autorelease

If you forgot to add the --recursive parameter to your git clone you can pull
the submodules after with the following commands.

.. code-block:: bash

    git submodule init
    git submodule update

Creating Autorelease - Release and RC build
===========================================

An autorelease release build comes from the autorelease-release-\<branch\> job
which can be found on the autorelease tab in the releng master:

* https://jenkins.opendaylight.org/releng/view/autorelease/

For example to create a Boron release candidate build launch a build from the
autorelease-release-boron job by clicking the '''Build with Parameters'''
button on the left hand menu:

* https://jenkins.opendaylight.org/releng/view/autorelease/job/autorelease-release-boron/


.. note::

    The only field that needs to be filled in is the '''RELEASE_TAG''', leave all
    other fields to their default setting. Set this to Boron, Boron-RC0,
    Boron-RC1, etc... depending on the build you'd like to create.

Adding Autorelease staging repo to settings.xml
===============================================

If you are building or testing this release in such a way that requires pulling
some of the artifacts from the Nexus repo you may need to modify your
settings.xml to include the staging repo URL as this URL is not part of ODL
Nexus' public or snapshot groups. If you've already cloned the recommended
settings.xml for building ODL you will need to add an additional profile and
activate it by adding these sections to the "\<profiles\>" and
"\<activeProfiles\>" sections (please adjust accordingly).

.. note::

    * This is an example and you need to "Add" these example sections to your
      settings.xml do not delete your existing sections.
    * The URLs in the \<repository\> and \<pluginRepository\> sections will also
      need to be updated with the staging repo you want to test.

.. code-block:: xml

    <profiles>
      <profile>
        <id>opendaylight-staging</id>
        <repositories>
          <repository>
            <id>opendaylight-staging</id>
            <name>opendaylight-staging</name>
            <url>https://nexus.opendaylight.org/content/repositories/automatedweeklyreleases-1062</url>
            <releases>
              <enabled>true</enabled>
              <updatePolicy>never</updatePolicy>
            </releases>
            <snapshots>
              <enabled>false</enabled>
            </snapshots>
          </repository>
        </repositories>
        <pluginRepositories>
          <pluginRepository>
            <id>opendaylight-staging</id>
            <name>opendaylight-staging</name>
            <url>https://nexus.opendaylight.org/content/repositories/automatedweeklyreleases-1062</url>
            <releases>
              <enabled>true</enabled>
              <updatePolicy>never</updatePolicy>
            </releases>
            <snapshots>
              <enabled>false</enabled>
            </snapshots>
          </pluginRepository>
        </pluginRepositories>
      </profile>
    </profiles>

    <activeProfiles>
      <activeProfile>opendaylight-staging</activeProfile>
    </activeProfiles>
