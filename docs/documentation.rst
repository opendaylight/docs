.. _documentation-guide:

###################
Documentation Guide
###################

This guide provides details on how to contribute to the OpenDaylight
documentation. OpenDaylight currently uses reStructuredText_ for
documentation and Sphinx_ to build it. These documentation tools are widely used
in open source communities to produce both HTML and PDF documentation and can
be easily versioned alongside the code. reStructuredText also offers similar
syntax to Markdown, which is familiar to many developers.

.. contents:: Contents
   :depth: 2
   :local:

Style Guide
===========

This section serves two purposes:

#. A guide for those writing documentation.
#. A guide for those reviewing documentation.

.. note:: When reviewing content, assuming that the content is usable, the
          documentation team is biased toward merging the content rather than
          blocking it due to relatively minor editorial issues.

Formatting Preferences
----------------------

In general, when reviewing content, the documentation team ensures that it
is comprehensible but tries not to be overly pedantic. Along those lines,
while it is preferred that the following formatting preferences are followed,
they are generally not an exclusive reason to give a "-1" reply to a patch in
Gerrit:

* No trailing whitespace
* Line wrapping at something reasonable, that is, 72–100 characters

Key terms
---------

* Functionality: something useful a project provides abstractly
* Feature: a Karaf feature that somebody could install
* Project: a project within OpenDaylight; projects ship features to
  provide functionality
* OpenDaylight: this refers to the software we release; use this in
  place of OpenDaylight controller, the OpenDaylight controller, not
  ODL, not ODC

  * Since there is a controller project within OpenDaylight, using
    other terms is hard.

Common writing style mistakes
-----------------------------

* In per-project user documentation, you should never say *git clone*,
  but should assume people have downloaded and installed the controller
  per the getting started guide and start with ``feature:install
  <something>``
* Avoid statements which are true about part of OpenDaylight, but not
  generally true.

  * For example: "OpenDaylight is a NETCONF controller." It is, but
    that is not all it is.

* In general, developer documentation should target external developers
  to your project so should talk about what APIs you have and how they
  could use them. It *should not* document how to contribute to your
  project.

Grammar Preferences
^^^^^^^^^^^^^^^^^^^

* Avoid contractions: Use "cannot" instead of "can't", "it is" instead of
  "it's", and so on.

Word Choice
^^^^^^^^^^^^

.. note:: The following word choice guidelines apply when using these terms in
          text. If these terms are used as part of a URL, class name, or
          any instance where modifying the case would create issues, use the
          exact capitalization and spacing associated with the URL or class
          name.

* ACL: not Acl or acl
* API: not api
* ARP: not Arp or arp
* datastore: not data store, Data Store, or DataStore (unless it is a
  class/object name)
* IPsec, not IPSEC or ipsec
* IPv4 or IPv6: not Ipv4, Ipv6, ipv4, ipv6, IPV4, or IPV6
* Karaf: not karaf
* Linux: not LINUX or linux
* NETCONF: not Netconf or netconf
* Neutron: not neutron
* OSGi: not osgi or OSGI
* Open vSwitch: not OpenvSwitch, OpenVSwitch, or Open V Switch.
* OpenDaylight: not Opendaylight, Open Daylight, or OpenDayLight.

  .. note:: Also, avoid Opendaylight abbreviations like ODL and ODC.

* OpenFlow: not Openflow, Open Flow, or openflow.
* OpenStack: not Open Stack or Openstack
* QoS: not Qos, QOS, or qos
* RESTCONF: not Restconf or restconf
* RPC not Rpc or rpc
* URL not Url or url
* VM: not Vm or vm
* YANG: not Yang or yang

.. _docs-rst:

reStructuredText-based Documentation
====================================

When using reStructuredText, follow the Python documentation
style guidelines. See: https://docs.python.org/devguide/documenting.html

One of the best references for reStrucutedText syntax is the Sphinx
Primer on reStructuredText_.

To build and review the reStructuredText documentation locally, you must
have the following packages installed locally:

* python
* python-tox

.. note:: Both packages should be available in most distribution package
          managers.

Then simply run ``tox`` and open the HTML produced by using your favorite web
browser as follows:

.. code-block:: bash

   git clone https://git.opendaylight.org/gerrit/docs
   cd docs
   git submodule update --init
   tox
   firefox docs/_build/html/index.html

Directory Structure
-------------------

The directory structure for the reStructuredText documentation is
rooted in the ``docs`` directory inside the ``docs`` ``git``
repository.

.. note:: There are guides hosted directly in the ``docs`` ``git``
          repository and there are guides hosted in remote ``git`` repositories.
          Documentation hosted in remote ``git`` repositories are generally
          provided for project-specific information.

For example, here is the directory layout on June, 28th 2016::

   $ tree -L 2
   .
   ├── Makefile
   ├── conf.py
   ├── documentation.rst
   ├── getting-started-guide
   │   ├── api.rst
   │   ├── concepts_and_tools.rst
   │   ├── experimental_features.rst
   │   ├── index.rst
   │   ├── installing_opendaylight.rst
   │   ├── introduction.rst
   │   ├── karaf_features.rst
   │   ├── other_features.rst
   │   ├── overview.rst
   │   └── who_should_use.rst
   ├── index.rst
   ├── make.bat
   ├── opendaylight-with-openstack
   │   ├── images
   │   ├── index.rst
   │   ├── openstack-with-gbp.rst
   │   ├── openstack-with-ovsdb.rst
   │   └── openstack-with-vtn.rst
   └── submodules
       └── releng
           └── builder

The ``getting-started-guide`` and ``opendaylight-with-openstack``
directories correspond to two guides hosted in the ``docs`` repository,
while the ``submodules/releng/builder`` directory houses documentation
for the `RelEng/Builder`_ project.

Each guide includes an ``index.rst`` file, which uses a ``toctree``
directive that includes the other files associated with the guide. For example::

   .. toctree::
      :maxdepth: 1

      getting-started-guide/index
      opendaylight-with-openstack/index
      submodules/releng/builder/docs/index

This example creates a table of contents on that page where each heading of the
table of contents is the root of the files that are included.

.. note:: When including ``.rst`` files using the ``toctree`` directive, omit
          the ``.rst`` file extension at the end of the file name.

Adding a submodule
^^^^^^^^^^^^^^^^^^

If you want to import a project underneath the documentation project so
that the docs can be kept in the separate repo, you can do it by using the
``git submodule add`` command as follows::

  git submodule add -b master ../integration/packaging docs/submodules/integration/packaging
  git commit -s

.. note:: Most projects will not want to use ``-b master``, but instead
          use the branch ``.``, which tracks whatever branch
          of the documentation project you happen to be on.

          Unfortunately, ``-b .`` does not work, so you have to manually
          edit the ``.gitmodules`` file to add ``branch = .`` and then
          commit it. For example::

            <edit the .gitmodules file>
            git add .gitmodules
            git commit --amend

When you're done you should have a git commit something like::

  $ git show
  commit 7943ce2cb41cd9d36ce93ee9003510ce3edd7fa9
  Author: Daniel Farrell <dfarrell@redhat.com>
  Date:   Fri Dec 23 14:45:44 2016 -0500

      Add Int/Pack to git submodules for RTD generation

      Change-Id: I64cd36ca044b8303cb7fc465b2d91470819a9fe6
      Signed-off-by: Daniel Farrell <dfarrell@redhat.com>

  diff --git a/.gitmodules b/.gitmodules
  index 91201bf6..b56e11c8 100644
  --- a/.gitmodules
  +++ b/.gitmodules
  @@ -38,3 +38,7 @@
          path = docs/submodules/ovsdb
          url = ../ovsdb
          branch = .
  +[submodule "docs/submodules/integration/packaging"]
  +       path = docs/submodules/integration/packaging
  +       url = ../integration/packaging
  +       branch = master
  diff --git a/docs/submodules/integration/packaging b/docs/submodules/integration/packaging
  new file mode 160000
  index 00000000..fd5a8185
  --- /dev/null
  +++ b/docs/submodules/integration/packaging
  @@ -0,0 +1 @@
  +Subproject commit fd5a81853e71d45945471d0f91bbdac1a1444386

As usual, you can push it to Gerrit with ``git review``.

.. important:: It is critical that the Gerrit patch be merged before the
               git commit hash of the submodule changes. Otherwise,
               Gerrit is not able to automatically keep it up-to-date
               for you.

Documentation Layout and Style
------------------------------

As mentioned previously, OpenDaylight aims to follow the Python documentation
style guidelines, which defines a few types of sections::

    # with overline, for parts
    * with overline, for chapters
    =, for sections
    -, for subsections
    ^, for subsubsections
    ", for paragraphs

OpenDaylight documentation is organized around the following structure based on
that recommendation::

    docs/index.rst                 -> entry point
    docs/____-guide/index.rst      -> part
    docs/____-guide/<chapter>.rst  -> chapter

In the ____-guide/index.rst we use the ``#`` with overline at the very top
of the file to determine that it is a part and then within each chapter
file we start the document with a section using ``*`` with overline to
denote that it is the chapter heading and then everything in the rest of
the chapter should use::

    =, for sections
    -, for subsections
    ^, for subsubsections
    ", for paragraphs

Referencing Sections
^^^^^^^^^^^^^^^^^^^^

This section provides a quick primer for creating references
in OpenDaylight documentation. For more information, refer to
`Cross-referencing documents
<http://www.sphinx-doc.org/en/stable/markup/inline.html#ref-role>`_.

Within a single document, you can reference another section simply by::

   This is a reference to `The title of a section`_

Assuming that somewhere else in the same file, there a is a section
title something like::

   The title of a section
   ^^^^^^^^^^^^^^^^^^^^^^

It is typically better to use ``:ref:`` syntax and labels to provide
links as they work across files and are resilient to sections being
renamed. First, you need to create a label something like::

   .. _a-label:

   The title of a section
   ^^^^^^^^^^^^^^^^^^^^^^

.. note:: The underscore (_) before the label is required.

Then you can reference the section anywhere by simply doing::

    This is a reference to :ref:`a-label`

or::

    This is a reference to :ref:`a section I really liked <a-label>`


.. note:: When using ``:ref:``-style links, you don't need a trailing
          underscore (_).

Because the labels have to be unique, a best practice is to prefix
the labels with the project name to help share the label space; for example,
use ``sfc-user-guide`` instead of just ``user-guide``.


.. _docs-rst-troubleshooting:

Troubleshooting
---------------

Nested formatting does not work
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As stated in the reStructuredText_ guide, inline markup for bold,
italic, and fixed-width font cannot be nested. Furthermore, inline markup cannot
be mixed with hyperlinks, so you cannot have a link with bold text.

This is tracked in a `Docutils FAQ question
<http://docutils.sourceforge.net/FAQ.html#is-nested-inline-markup-possible>`_,
but there is no clear current plan to fix this.

Make sure you have cloned submodules
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you see an error like this::

   ./build-integration-robot-libdoc.sh: line 6: cd: submodules/integration/test/csit/libraries: No such file or directory
   Resource file '*.robot' does not exist.

It means that you have not pulled down the git submodule for the
integration/test project. The fastest way to do that is::

   git submodule update --init

In some cases, you might wind up with submodules which are somehow
out-of-sync. In that case, the easiest way to fix them is to delete the
submodules directory and then re-clone the submodules::

   rm -rf docs/submodules/
   git submodule update --init

.. warning:: These steps delete any local changes or information you made
             in the submodules, which would only occur if you
             manually edited files in that directory.

Clear your tox directory and try again
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sometimes, tox will not detect when your ``requirements.txt`` file has
changed and so will try to run things without the correct dependencies.
This issue usually manifests  as ``No module named X`` errors or
an ``ExtensionError`` and can be fixed by deleting the ``.tox``
directory and building again::

   rm -rf .tox
   tox

Builds on Read the Docs
^^^^^^^^^^^^^^^^^^^^^^^

Read the Docs builds do not automatically clear the file structure between
builds and clones. The result is that you may have to clean up the state of
old runs of the build script.

As an example, refer to the following patch:
https://git.opendaylight.org/gerrit/41679

This patch fixed the issue that caused builds to fail because they were
taking too long removing directories associated with generated
javadoc files that were present from previous runs.

Errors from Coala
^^^^^^^^^^^^^^^^^^

As part of running ``tox``, two environments run: ``coala`` which does a variety
of reStructuredText_ (and other) linting, and ``docs``, which runs Sphinx_ to
build HTML and PDF documentation. You can run them independently by doing
``tox -ecoala`` or ``tox -edocs``.

The ``coala`` linter for reStructuredText is not always the most helpful in
explaining why it failed. So, here are some common ones. There should also be
Jenkins Failure Cause Management rules that will highlight these for you.

Git Commit Message Errors
"""""""""""""""""""""""""

Coala checks that git commit messages adhere to the following rules:

* Shortlog (1st line of commit message) is less than 50 characters
* Shortlog (1st line of commit message) is in the imperative mood. For example,
  "Add foo unit test" is good, but "Adding foo unit test is bad""
* Body (all lines but 1st line of commit message) are less than 72 characters.
  Some exceptions seem to exist, such as for long URLs.

Some examples of those being logged are:

::
   Project wide:
   |    | [NORMAL] GitCommitBear:
   |    | Shortlog of HEAD commit isn't in imperative mood! Bad words are 'Adding'

::
   Project wide:
   |    | [NORMAL] GitCommitBear:
   |    | Body of HEAD commit contains too long lines. Commit body lines should not exceed 72 characters.

Error in "code-block" directive
"""""""""""""""""""""""""""""""

If you see an error like this:

::
   docs/gerrit.rst
   |  89| ···..·code-block::·bash
   |    | [MAJOR] RSTcheckBear:
   |    | (ERROR/3) Error in "code-block" directive:

It means that the relevant code-block is not valid for the
language specified, in this case ``bash``.

.. note:: If you do not specify a language, the default language is Python. If
          you want the code-block to not be an any particular language, instead
          use the ``::`` directive. For example:

::
   ::
      This is a code block
      that will not be parsed
      in any particluar langauge

Project Documentation Requirements
==================================

Submitting Documentation Outlines (M3)
--------------------------------------

#. Determine the features your project will have and which ones will be
   ''user-facing''.

   * In general, a feature is user-facing if it creates functionality that a
     user would directly interact with.
   * For example, ``odl-openflowplugin-flow-services-ui`` is likely
     user-facing since it installs user-facing OpenFlow features, while
     ``odl-openflowplugin-flow-services`` is not because it provides only
     developer-facing features.

#. Determine pieces of documentation that you need to provide based on the
   features your project will have and which ones will be user-facing.

   * The kinds of required documentation can be found below in the
     :ref:`requirements-for-projects` section.

   .. note:: You might need to create multiple documents for the
             same kind of documentation. For example, the controller project
             will likely want to have a developer section for the config
             subsystem as well as for the MD-SAL.

#. Clone the docs repo: ``git clone https://git.opendaylight.org/gerrit/docs``
#. For each piece of documentation find the corresponding template in the docs
   repo.

   * For user documentation: ``docs.git/docs/templates/template-user-guide.rst``
   * For developer documentation: ``ddocs/templates/template-developer-guide.rst``
   * For installation documentation (if any): ``docs/templates/template-install-guide.rst``

   .. note:: You can find the rendered templates here:

             .. toctree::
                :maxdepth: 1

                templates/template-user-guide
                templates/template-developer-guide
                templates/template-install-guide.rst


#. Copy the template into the appropriate directory for your project.

   * For user documentation: ``docs.git/docs/user-guide/${feature-name}-user-guide.rst``
   * For developer documentation: ``docs.git/docs/developer-guide/${feature-name}-developer-guide.rst``
   * For installation documentation (if any): ``docs.git/docs/getting-started-guide/project-specific-guides/${project-name}.rst``

   .. note:: These naming conventions are not set in stone, but are used to
             maintain a consistent document taxonomy. If these conventions
             are not appropriate or do not make sense for a document
             in development, use the convention that you think is more
             appropriate and the documentation team will review it and give
             feedback on the gerrit patch.

#. Edit the template to fill in the outline of what you will provide using the
   suggestions in the template. If you feel like a section is not needed, feel
   free to omit it.

#. Link the template into the appropriate core ``.rst`` file.

   * For user documentation: ``docs.git/docs/user-guide/index.rst``
   * For developer documentation: ``docs.git/docs/developer-guide/index.rst``
   * For installation documentation (if any): ``docs.git/docs/getting-started-guide/project-specific-guides/index.rst``
   * In each file, it should be pretty clear what line you need to add. In
     general if you have an ``.rst`` file ``project-name.rst``, you include it
     by adding a new line ``project-name`` without the ``.rst`` at the end.

#. Make sure the documentation project still builds.

   * Run ``tox`` from the root of the cloned docs repo.

     * After that, you should be able to find the HTML version of the
       docs at ``docs.git/docs/_build/html/index.html``.
     * See :ref:`docs-rst` for more details about building the docs.

   * The :ref:`reStructuredText Troubleshooting <docs-rst-troubleshooting>`
     section provides common errors and solutions.
   * If you still have problems e-mail the documentation group at
     documentation@lists.opendaylight.org

#. Commit and submit the patch.

   #. Commit using:

      .. code-block:: bash

         git add --all && git commit -sm "Documentation outline for ${project-shortname}"

   #. Submit using:

      .. code-block:: bash

         git review

      See the `Git-review Workflow <https://wiki.opendaylight.org/view/Git-review_Workflow>`_
      page if you don't have git-review installed.

#. Wait for the patch to be merged or to get feedback

   * If you get feedback, make the requested changes and resubmit the patch.
   * When you resubmit the patch, it is helpful if you also post a "+0" reply to
     the patch in Gerrit, stating what patch set you just submitted and what you
     fixed in the patch set.
   * The documentation team will also be creating (or asking projects to
     create) small groups of 2-4 projects that will peer review each other's
     documentation. Patches which have seen a few cycles of peer review will be
     prioritized for review and merge by the documentation team.

Expected Output From Documentation Project
------------------------------------------

The expected output is (at least) 3 PDFs and equivalent web-based documentation:

* User/Operator Guide
* Developer Guide
* Installation Guide

These guides will consist of "front matter" produced by the documentation group
and the per-project/per-feature documentation provided by the projects.

.. note:: This requirement is intended for the person responsible for the
          documentation and should not be interpreted as preventing people not
          normally in the documentation group from helping with "front matter"
          nor preventing people from the documentation group from helping with
          per-project/per-feature documentation.

Project Documentation Requirements
----------------------------------

.. _kinds-of-docs:

Content Types
^^^^^^^^^^^^^

These are the expected kinds of documentation and target audiences for each
kind.

* **User/Operator:** for people looking to use the feature without writing code

  * Should include an overview of the project/feature
  * Should include description of availble configuration options and what they
    do

* **Developer:** for people looking to use the feature in code without modifying
  it

  * Should include API documentation, such as, enunciate for REST, Javadoc for
    Java, ??? for RESTCONF/models

* **Contributor:** for people looking to extend or modify the feature's source
  code

  .. note:: You can find this information on the wiki.

* **Installation:** for people looking for instructions to install the feature
  after they have downloaded the ODL release

  .. note:: The audience for this content is the same as User/Operator docs

  * For most projects, this will be just a list of top-level features and
    options

    * As an example, l2switch-switch as the top-level feature with the -rest
      and -ui options
    * Features should also note if the options should be checkboxes (that is,
      they can each be turned on/off independently) or a drop down (that is, at
      most one can be selected)
    * What other top-level features in the release are incompatible with each
      feature
    * This will likely be presented as a table in the documentation and the
      data will likely also be consumed by automated
      installers/configurators/downloaders

  * For some projects, there is extra installation instructions (for external
    components) and/or configuration

    * In that case, there will be a (sub)section in the documentation
      describing this process.

* **HowTo/Tutorial:** walk throughs and examples that are not general-purpose
  documentation

  * Generally, these should be done as a (sub)section of either user/operator
    or developer documentation.
  * If they are especially long or complex, they may belong on their own

* **Release Notes:**

  * Release notes are required as part of each project's release review. They
    must also be translated into reStructuredText for inclusion in the formal
    documentation.

.. _requirements-for-projects:

Requirements for projects
^^^^^^^^^^^^^^^^^^^^^^^^^

* Projects must provide reStructuredText documentation including:

  * Developer documentation for every feature

    * Most projects will want to logically nest the documentation for
      individual features under a single project-wide chapter or section
    * The feature documentation can be provided as a single ``.rst`` file or
      multiple ``.rst`` files if the features fall into different groups
    * Feature documentation should start with appromimately 300 word overview
      of the project and include references to any automatically-generated API
      documentation as well as more general developer information (see
      :ref:`kinds-of-docs`).

  * User/Operator documentation for every every user-facing feature (if any)

    * This documentation should be per-feature, not per-project. Users should
      not have to know which project a feature came from.
    * Intimately related features can be documented together. For example,
      l2switch-switch, l2switch-switch-rest, and l2switch-switch-ui, can be
      documented as one noting the differences.
    * This documentation can be provided as a single ``.rst`` file or multiple
      ``.rst`` files if the features fall into different groups

  * Installation documentation

    * Most projects will simply provide a list of user-facing features and
      options. See :ref:`kinds-of-docs` above.

  * Release Notes (both on the wiki and reStructuredText) as part of the release
    review.

* Documentation must be contributed to the docs repo (or possibly imported
  from the project's own repo with tooling that is under development)

  * Projects may be encouraged to instead provide this from their own
    repository if the tooling is developed
  * Projects choosing to meet the requirement in this way must provide a patch
    to docs repo to import the project's documentation

* Projects must cooperate with the documentation group on edits and enhancements
  to documentation

.. note:: The documentation team will also be creating (or asking projects
   to create) small groups of 2-4 projects that will peer review each other's
   documentation. Patches which have seen a few cycles of peer review will be
   prioritized for review and merge by the documentation team.

Timeline for Deliverables from Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* **M3:** Documentation Started

  The following tasks for documentation deliverables must be completed for the
  M3 readout:

  * The kinds of documentation that will be provided and for what features must
    be identified.

    .. note:: Release Notes are not required until release reviews at **RC2**

  * The appropriate ``.rst`` files must be created in the docs repository
    (or their own repository if the tooling is available).
  * An outline for the expected documentation must be completed in those
    ``.rst`` files including the relevant (sub)sections and a sentence or two
    explaining what will be contained in these sections.

    .. note:: If an outline is not provided, delivering actual documentation
              in the (sub)sections meets this requirement.

  * M3 readouts should include

    #. the list of kinds of documentation
    #. the list of corresponding ``.rst`` files and their location, including
       repo and path
    #. the list of commits creating those ``.rst`` files
    #. the current word counts of those ``.rst`` files

* **M4:** Documentation Continues

  * The readout at M4 should include the word counts of all ``.rst`` files with
    links to commits
  * The goal is to have draft documentation complete at the M4 readout so that
    the documentation group can comment on it.

* **M5:** Documentation Complete

  * All (sub)sections in all ``.rst`` files have complete, readable, usable
    content.
  * Ideally, there should have been some interaction with the documentation
    group about any suggested edits and enhancements

* **RC2:** Release notes

  * Projects must provide release notes in ``.rst`` format pushed to integration
    (or locally in the project's repository if the tooling is developed)


.. _Sphinx: http://www.sphinx-doc.org/en/stable/
.. _reStructuredText: http://www.sphinx-doc.org/en/stable/rest.html
.. _Documentation Group: https://wiki.opendaylight.org/view/Documentation/
.. _RelEng/Builder: https://wiki.opendaylight.org/view/RelEng/Builder
.. _Pandoc: http://pandoc.org/
