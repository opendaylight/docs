.. _documentation-guide:

###################
Documentation Guide
###################

This guide provides details on how to contribute to the OpenDaylight
documentation. OpenDaylight currently uses reStructuredText_ for
documentation and Sphinx_ to build it as it is widely-used to provide
both HTML and pdf documentation that can be easily versioned alongside
the code. It also offers similar syntax to Markdown which is familiar
to large numbers of people.

.. contents:: Contents
   :depth: 2
   :local:

Style Guide
===========

This section serves two purposes:

#. A guide for those writing documentation to follow.
#. A guide for those reviewing documentation.

That being said, assuming that the content is usable, the bias should
be toward merging it rather than blocking on relatively minor edits.

Formatting Preferences
----------------------

In general, the documentation team has focused on trying to make sure
that the instructions are comprehensible, but not being overly pedantic
about these things. Along those lines, while we would prefer the
following, generally they aren't a reason to -1 in and of themselves:

* No trailing whitespace
* Line wrapping at something reasonable, i.e., 72–100 characters

Key terms
---------

* Functionality: something useful a project provides abstractly
* Feature: a Karaf feature that somebody could install
* Project: a project within OpenDaylight, projects ship features to
  provide functionality
* OpenDaylight: this refers to the software we release, use this in
  place of OpenDaylight controller, the OpenDaylight controller, not
  ODL, not ODC

  * Since there is a controller project within OpenDaylight, using
    other terms is hard.

Common writing style mistakes
-----------------------------

* In per-project user documentation, you should never say *git clone*,
  but should assume people have downloaded and installed the controller
  per the getting started guide and start with ``feautre:install
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

* Avoid contractions: use cannot instead of can't, it is instead of
  it's, and the like.

Things to get right with spacing and capitalization
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

*Note that all of these apply when using them in text. If they are used
as part of URL, class name, or something similar, use the actual
capitalization and spacing.*

* ACL: not Acl or acl
* API: not api
* ARP: not Arp or arp
* datastore: not data store, Data Store, or DataStore (unless it's a
  class/object name)
* IPsec, not IPSEC or ipsec
* IPv4 or IPv6: not Ipv4, Ipv6, ipv4, ipv6, IPV4, or IPV6
* Karaf: not karaf
* Linux: not LINUX or linux
* NETCONF: not Netconf or netconf
* Neutron: not neutron
* OSGi: not osgi or OSGI
* Open vSwitch: not OpenvSwitch, OpenVSwitch, or Open V Switch, etc.
* OpenDaylight: not Opendaylight, Open Daylight, or OpenDayLight, etc.

  * also avoid abbreviations like ODL and ODC

* OpenFlow: not Openflow, Open Flow, openflow, etc.
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

When using reStructuredText, we try to follow the python documentation
style guide. See: https://docs.python.org/devguide/documenting.html

The best reference for reStrucutedText syntax seems to be the Sphinx
Primer on reStructuredText_.

To build and review the reStructuredText documentation locally you must
have installed locally:

* python
* python-tox

Which both should be available in most distribution's package managers.

Then simply run tox and open the html produced via your favorite web
browser as follows:

.. code-block:: bash

   git clone https://git.opendaylight.org/gerrit/docs
   cd docs
   git submodule update --init
   tox -edocs
   firefox docs/_build/html/index.html

.. note:: Make sure to run `tox -edocs` and not just `tox`. See `Make
          sure you run tox -edocs`_

Directory Structure
-------------------

The directory structure for the reStructuredText documentation is
rooted in the ``docs`` directory inside the ``docs`` ``git``
repository.

Below that there are guides hosted directly in the ``docs`` ``git``
repository and there are guides hosted in remote ``git`` repositories.
Usually those are for project-specific information.

For example here is the directory layout on June, 28th 2016::

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

Inside each guide there is usually an ``index.rst`` file which then
includes other files using a ``toctree`` directive. For example::

   .. toctree::
      :maxdepth: 1

      getting-started-guide/index
      opendaylight-with-openstack/index
      submodules/releng/builder/docs/index

This creates a table of contents on that page where each heading of the
table of contents is the root of the files that are included.

.. note:: When including rst files using ``toctree`` omit the .rst at
          the end of the file name.

Documentation Layout and Style
------------------------------

As mentioned previously we try to follow the python documentation style
guide which defines a few types of sections::

    # with overline, for parts
    * with overline, for chapters
    =, for sections
    -, for subsections
    ^, for subsubsections
    ", for paragraphs

We try to follow the following structure based on that recommendation::

    docs/index.rst                 -> entry point
    docs/____-guide/index.rst      -> part
    docs/____-guide/<chapter>.rst  -> chapter

In the ____-guide/index.rst we use the # with overline at the very top
of the file to determine that it is a part and then within each chapter
file we start the document with a section using * with overline to
denote that it's the chapter heading and then everything in the rest of
the chapter should use::

    =, for sections
    -, for subsections
    ^, for subsubsections
    ", for paragraphs

.. _docs-rst-troubleshooting:

Troubleshooting
---------------

Nested formatting doesn't work
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As stated in the reStructuredText_ guide, inline markup for bold,
italic, and fixed-width can't be nested. Further, it can't be mixed
with hyperlinks, so you can't have bold text link somewhere.

This is tracked in a `Docutils FAQ question
<http://docutils.sourceforge.net/FAQ.html#is-nested-inline-markup-possible>`,
but there is no clear current plan to fix this.

Make sure you've cloned submodules
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you see an error like this::

   ./build-integration-robot-libdoc.sh: line 6: cd: submodules/integration/test/csit/libraries: No such file or directory
   Resource file '*.robot' does not exist.

It means that you haven't pulled down the git submodule for the
integration/test project. The fastest way to do that is::

   git submodule update --init

In some cases, you might wind up with submodules which are somehow
out-of-sync and in that case, the easiest way to fix it is delete the
submodules directory and then re-clone the submodules::

   rm -rf docs/submodules/
   git submodule update --init

.. warning:: This will delete any local changes or information you made
             in the submodules. This should only be the case if you
             manually edited files in that directory.

Make sure you run tox -edocs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you see an error like::

   ERROR:   docs: could not install deps [-rrequirements.txt]; v = InvocationError('/Users/ckd/git-reps/docs/.tox/docs/bin/pip install -rrequirements.txt (see /Users/ckd/git-reps/docs/.tox/docs/log/docs-1.log)', 1)
   ERROR:   docs-linkcheck: could not install deps [-rrequirements.txt]; v = InvocationError('/Users/ckd/git-reps/docs/.tox/docs-linkcheck/bin/pip install -rrequirements.txt (see /Users/ckd/git-reps/docs/.tox/docs-linkcheck/log/docs-linkcheck-1.log)', 1)

It usually means you ran `tox` and not `tox -edocs`, which will result
in running jobs inside submodules which aren't supported by the
environment defined by the `requirements.txt` file in the documentation
tox setup. Just run tox -edocs and it should be fine.

Clear your tox directory and try again
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sometimes, tox will not detect when your ``requirements.txt`` file has
changed and so will try to run things without the correct dependencies.
This usually manifests as ``No module named X`` errors or
an ``ExtensionError`` and can be fixed by deleting the ``.tox``
directory and building again::

   rm -rf .tox
   tox -edocs

Builds on Read the Docs
^^^^^^^^^^^^^^^^^^^^^^^

It appears as though the Read the Docs builds don't automatically clear
the file structure between builds and clones. The result is that you
may have to clean up the state of old runs of the build script.

As an example, this patch:
https://git.opendaylight.org/gerrit/41679

Finally fixed the fact that our builds for failing because they were
taking too long by removing directories of generated javadoc that were
present from previous runs.

Project Documentation Requirements
==================================

Submitting Documentation Outlines (M3)
--------------------------------------

#. Determine the features your project will have and which ones will be
   ''user-facing''.

   * In general, a feature is user-facing if it creates functionality that a
     user would direction interact with.
   * For example, ``odl-openflowplugin-flow-services-ui`` is likely
     user-facing since it installs user-facing OpenFlow features, while
     ``odl-openflowplugin-flow-services`` is not because it provides only
     developer-facing features.

#. Determine pieces of documentation you need provide based on the features
   your project will have and which ones will be user-facing.

   * The kinds of required documentation can be found below in the
     :ref:`requirements-for-projects` section.
   * Note that you might need to create multiple different documents for the
     same kind of documentation. For example, the controller project will
     likely want to have a developer section for the config subsystem as well
     as a for the MD-SAL.

#. Clone the docs repo: ``git clone https://git.opendaylight.org/gerrit/docs``
#. For each piece of documentation find the corresponding template in the docs repo.

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

   .. note:: These naming conventions aren't set in stone, but do help. If you
             think there's a better name, use it and we'll give feedback on the
             gerrit patch.

#. Edit the template to fill in the outline of what you will provide using the
   suggestions in the template. If you feel like a section isn't needed, feel
   free to omit it.

#. Link the template into the appropriate core rst file

   * For user documentation: ``docs.git/docs/user-guide/index.rst``
   * For developer documentation: ``docs.git/docs/developer-guide/index.rst``
   * For installation documentation (if any): ``docs.git/docs/getting-started-guide/project-specific-guides/index.rst``
   * In each file, it should be pretty clear what line you need to add. In
     general if you have an rst file ``project-name.rst``, you include it by
     adding a new line ``project-name`` without the ``.rst`` at the end.

#. Make sure the documentation project still builds.

   * Run ``tox -edocs`` from the root of the cloned docs repo.

     * After that, you should be able to find the HTML version of the
       docs at ``docs.git/docs/_build/html/index.html``.
     * See :ref:`docs-rst` for more details about building the docs.

   * The :ref:`reStructuredText Troubleshooting <docs-rst-troubleshooting>`
     section provides common errors and solutions.
   * If you still have problems e-mail the documentation group at
     documentation@lists.opendaylight.org

#. Commit and submit the patch

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
   * When you resubmit the patch, it's helpful if you also post a +0 reply to
     the gerrit saying what patch set you just submitted and what you fixed in
     the patch set.
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
and the per-project/per-feature documentation provided by the projects. Note
that this is intended to be who is responsible for the documentation and should
not be interpreted as preventing people not normally in the documentation group
from helping with "front matter" nor preventing people from the documentation
group from helping with per-project/per-feature documentation.

Boron Project Documentation Requirements
----------------------------------------

.. _kinds-of-docs:

Kinds of Documentation
^^^^^^^^^^^^^^^^^^^^^^

These are the expected kinds of documentation and target audiences for each kind.

* **User/Operator:** for people looking to use the feature w/o writing code

  * Should include an overview of the project/feature
  * Should include description of availbe configuration options and what they do

* **Developer:** for people looking to use the feature in code w/o modifying it

  * Should include API documentation, e.g., enunciate for REST, Javadoc for
    Java, ??? for RESTCONF/models

* **Contributor:** for people looking to extend or modify the feature's source
  code

  .. note:

     should be documented on the wiki not in reStructuredText

* **Installation:** for people looking for instructions to install the feature
  after they have downloaded the ODL release

  .. note:

     audience is the same as User/Operator docs

  * For most projects, this will be just a list of top-level features and
    options

    * As an example, l2switch-switch as the top-level feature with the -rest
      and -ui options
    * We'd also like them to note if the options should be checkboxes (i.e.,
      they can each be turned on/off independently) or a drop down (i.e., at
      most one can be selected)
    * What other top-level features in the release are incompatible with each
      feature
    * This will likely be presented as a table in the documentation and the
      data will likely also be consumed by automated installers/configurators/downloaders

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

Projects MUST do the following

* Provide reStructuredText documentation including

  * Developer documentation for every feature

    * Most projects will want to logically nest the documentation for
      individual features under a single project-wide chapter or section
    * This can be provided as a single .rst file or multiple .rst files if
      the features fall into different groups
    * This should start with ~300 word overview of the project and include
      references to any automatically-generated API documentation as well as
      more general developer information (see
      :ref:`kinds-of-docs`).

  * User/Operator documentation for every every user-facing feature (if any)

    * ''Note: This should be per-feature, not per-project. User's shouldn't have to know which project a feature came from.''
    * Intimately related features, e.g., l2switch-switch, l2switch-switch-rest, and l2switch-switch-ui, can be documented as one noting the differences
    * This can be provided as a single .rst file or multiple .rst files if the features fall into different groups

  * Installation documentation

    * Most projects will simply provide a list of user-facing features and
      options. See :ref:`kinds-of-docs` above.

  * Release Notes (both on the wiki and reStructuredText) as part of the release review.

* This documentation will be contributed to the docs repo (or possibly imported from the project's own repo with tooling that is under development)

  * Projects MAY be ENCOURGAGED to instead provide this from their own repository if the tooling is developed
  * Projects choosing to meet the requirement this way MUST provide a patch to docs repo to import the project's documentation

* Projects MUST cooperate with the documentation group on edits and enhancements to documentation

  * Note that the documentation team will also be creating (or asking projects to create) small groups of 2-4 projects that will peer review each other's documentation. Patches which have seen a few cycles of peer review will be prioritized for review and merge by the documentation team.

Timeline for Deliverables from Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* **M3:** Documentation Started

  * Identified the kinds of documentation that will be provided and for what
    features

    * Release Notes are not required until release reviews at **RC2**

  * Created the appropriate .rst files in the docs repository (or their own
    repository if the tooling is available)
  * Have an outline for the expected documentation in those .rst files
    including the relevant (sub)sections and a sentence or two explaining what
    will go there

    * Obviusly, providing actual documentation in the (sub)sections is
      encouraged and meets this requirement

  * Milestone readout should include

    #. the list of kinds of documentation
    #. the list of corresponding .rst files and their location, e.g., repo and
       path
    #. the list of commits creating those .rst files
    #. the current word counts of those .rst files

* **M4:** Documentation Continues

  * The readout at M4 should include the word counts of all .rst files with
    links to commits
  * The goal is to have draft documentation complete so that the documentation
    group can comment on it.

* **M5:** Documentation Complete

  * All (sub)sections in all .rst files have complete, readable, usable content.
  * Ideally, there should have been some interaction with the documentation
    group about any suggested edits and enhancements

* **RC2:** Release notes

  * Projects must provide release notes as .rst pushed to integration (or
    locally in the project's repository if the tooling is developed)


.. _Sphinx: http://www.sphinx-doc.org/en/stable/
.. _reStructuredText: http://www.sphinx-doc.org/en/stable/rest.html
.. _Documentation Group: https://wiki.opendaylight.org/view/Documentation/
.. _RelEng/Builder: https://wiki.opendaylight.org/view/RelEng/Builder
.. _Pandoc: http://pandoc.org/
