.. _documentation-guide:

###################
Documentation Guide
###################

This guide details how to contribute to the OpenDaylight documentation. Currently, documentation
for OpenDaylight is created and maintained via *Docs as Code*. This method refers to writing
documentation with the same tools as code. This includes, issue trackers, version control (Git),
plain text markup (reStructuredText_), code review, and doc generation (Sphinx_). Combined, these
documentation tools are used in open source communities to produce both HTML and PDF documentation,
as well as version control alongside the code.

Getting Started
===============

.. _python-intro:

Python
------

The Python programming language allows users to integrate systems more effectively.
In addition, tox automates and standardizes testing in Python. ODL uses both packages
to generate HTML documentation. Both packages are available in most distribution package.
To build and review ODL documentation locally, ensure that the following packages
are installed locally:

* `python <https://www.python.org>`_
* `python-tox <https://tox.readthedocs.io/en/latest/>`_

.. _docs-rst:

reStructuredText
----------------

reStructuredText is an easy-to-read, WSIWIG plaintext markup syntax and parser system.
It is used for in-line program documentation to create simple Web pages or standalone
docs. reStructuredText is designed for extensibility for specific application domains.
For more information on reStructuredText, refer to the following documentation:

* `reStructuredText <https://docutils.sourceforge.io/rst.html>`_
* `Python documentation <https://docs.python.org/devguide/documenting.html>`_

OpenDaylight Docs
=================

ODL documentation can be found in two locations. General docs, such as the release schedules
and release notes, are found in a central location. Project documentation can be found in the
specific project's directory.

Downloading General Docs
------------------------

The following section describes how to download the OpenDaylight's general documentation.
For a project documentation, refer to :ref:`download-projects`.

.. note:: The following steps downloads OpenDaylight docs on Ubuntu. However, the
          OpenDaylight docs can be downloaded on most Operating Systems.

#. Run the following command to install Python-tox:

   .. code-block:: shell

      sudo apt-get install python-tox

#. Run the following command to install Tox:

   .. code-block:: shell

      pip install --user tox

#. Issue the following command to clone the OpenDaylight directory:

   .. code-block:: shell

      git clone https://git.opendaylight.org/gerrit/docs

#. Change directory to the ``docs`` folder:

   .. code-block:: shell

      cd docs

#. Issue the following command to initiate ``tox.``

   .. code-block:: shell

      tox

#. Installation completes with ``build succeeded`` message. Simply navigate to the
   ``docs_build/html`` folder to launch the output in your browser.

   .. code-block:: shell

      ...
      build succeeded.

      The HTML pages are in docs/_build/html.

Directory Structure
^^^^^^^^^^^^^^^^^^^

The directory structure for OpenDaylight documentation is in the ``docs`` directory
inside a ``docs`` repository. For example:

.. code-block:: shell

   $ tree -L 2
     .
     ├── README.md
     ├── build_update_version_RTD.sh
     ├── ci-requirements.txt
     ├── docs
     │   ├── Makefile
     │   ├── _build
     │   ├── _static
     │   ├── _templates
     │   ├── conf.py
     │   ├── conf.yaml
     │   ├── developer-guide
     │   ├── documentation.rst
     │   ├── downloads.rst
     │   ├── favicon.ico
     │   ├── getting-started-guide
     │   ├── index.rst
     │   ├── javadoc.rst
     │   ├── make.bat
     │   ├── release-notes
     │   ├── release-process
     │   ├── requirements.txt
     │   ├── templates
     │   └── user-guide
     ├── docs_master_branch_update.sh
     ├── find_bad_words.sh
     ├── tools
     │   └── README
     ├── tox.ini
     ├── update_docs_version.sh
     └── web
        ├── README
        └── tsc-meetings.sh


Each guide includes an ``index.rst`` file, which uses a ``toctree``
directive that includes the other files associated with the guide. For example::

   .. toctree::
      :maxdepth: 1

      getting-started-guide/index
      opendaylight-with-openstack/index

This example creates a table of contents on that page where each heading of the
table of contents is the root of the files that are included.

.. note:: When including ``.rst`` files using the ``toctree`` directive, omit
          the ``.rst`` file extension at the end of the file name.

.. _download-projects:

Downloading Project Docs
------------------------

Documentation for each product is in the specific project's directory. For example,
if you want AAA, download the entire AAA directory from Gerrit. Docs are found in the ``doc``
folder. Perform the following steps to download documentation for a project:

#. Log in to `Gerrit <https://git.opendaylight.org/gerrit/login/>`_.

#. Select ``Browse > Repositories``. The `ODL Repositories <https://git.opendaylight.org/gerrit/admin/repos>`_
   Web page appears.

#. Click the appropriate repository.

#. Select and copy the ``Clone with commit-msg hook`` output of the project.

#. Inside the ODL ``docs`` folder, make a directory in the ``docs`` folder. This step is optional.

   .. code-block:: shell

      mkdir aaa

#. Navigate to the new folder and enter the clone command of the project.

   .. code-block:: shell

      git clone "ssh://chdbaugher@git.opendaylight.org:29418/aaa" && scp -p -P 29418 chdbaugher@git.opendaylight.org:hooks/commit-msg "aaa/.git/hooks/"

Style Guide
===========

This section describes how to both write and review documentation.

Formatting Preferences
----------------------

When reviewing content, it is preferred to follow the preceding formatting
preferences:

* No trailing whitespace
* Reasonable line wrapping (75 to 100 characters)

Key Terms
---------

.. list-table:: Key Terms
   :widths: auto
   :header-rows: 1

   * - **Term**
     - **Description**
   * - **Functionality**
     - Used to decribe a project abstractly.
   * - **Feature**
     - Describes a Karaf feature.
   * - **Project**
     - A feature that provides ODL functionality.
   * - **ODL**
     - Use this after defining OpenDaylight. For example, OpenDaylight (ODL).
   * - **OpenDaylight**
     - Use this in place of OpenDaylight controller.

.. note:: Use **OpenDaylight Controller** if there is another controller
          project within OpenDaylight.

Common Writing Style Mistakes
-----------------------------

* In per-project user documentation, always assume users have
  downloaded and installed the controller per the `Installing OpenDaylight
  <https://docs.opendaylight.org/en/stable-neon/getting-started-guide/installing_opendaylight.html>`_.
  and have started their Karaf features (that is, ``feature:install <feature>``).
* Avoid statements that may be true about part of OpenDaylight, but not
  true. For example: "OpenDaylight is a NETCONF controller."
  It is, but there is more to OpenDaylight.
* Developer documentation must target external developers to their specific
  project, so discuss their specific APIs and how they could use them.

Grammar Preferences
-------------------

* Avoid contractions: Use "cannot" instead of "can't", "it is" instead of
  "it's", etc.

Word Choice
-----------

The following word choice guidelines applies only when using them in the
body of the text. Do not modify them if= they are used as part of a URL,
class name, or any instance where they are in an example in the code.
Use the exact capitalization and spacing associated with the URL or class
name as they are in the code.

.. list-table:: Word Choice
   :widths: auto
   :header-rows: 1

   * - **Use**
     - **Do not use**
   * - ACL
     - Not Acl nor acl
   * - API
     - Not Api nor api
   * - ARP
     - Not Arp nor arp
   * - Datastore
     - Not data store, Data Store, nor DataStore
   * - IPsec
     - Not IPSEC nor ipsec
   * - IPv4 or IPv6
     - Not Ipv4, Ipv6, ipv4, ipv6, IPV4, nor IPV6
   * - Kara
     - Not karaf
   * - Linux
     - Not LINUX nor linux
   * - NETCONF
     - Not Netconf nor netconf
   * - OSGi
     - Not osgi nor OSGI
   * - Open vSwitch
     - Not OpenvSwitch, OpenVSwitch, nor Open V Switch.
   * - OpenDaylight
     - Not Opendaylight, Open Daylight, nor OpenDayLight.
   * - OpenFlow
     - Not Openflow, Open Flow, nor openflow.
   * - OpenStack
     - Not Open Stack nor Openstack
   * - QoS
     - not Qos, QOS, nor qos
   * - RESTCONF
     - not Restconf nor restconf
   * - RPC
     - Not Rpc nor rpc
   * - URL
     - Not Url nor url
   * - VM
     - Not Vm nor vm
   * - YANG
     - Not Yang nor yang

Documentation Layout and Style
==============================

OpenDaylight docs follows the `Python style guidelines <https://devguide.python.org/documenting/>`_,
which defines the following section types.

``#``: This is used with an overline and underline at the top of each file to indicate that the file is a part.

.. code-block:: shell

   #######
   NETCONF
   #######

``*``: This indicates each chapter.

.. code-block:: shell

   ********
   Overview
   ********

``=``: This indicates a section.

.. code-block:: shell

   New Section
   ===========

``-``: This indicates a subsection.

.. code-block:: shell

   New Subsection
   --------------

``^``: This indicates a subsubsections.

.. code-block:: shell

   New subsubsection
   ^^^^^^^^^^^^^^^^^

.. important:: Ensure that the heading character must be as long or longer than the text.
               Also, the hierarchy must follow each level of heading. Otherwise, you will
               encounter a build error.

Doc Structure
-------------

OpenDaylight docs is organized per the following structure:

.. code-block:: shell

   docs/index.rst                 -> entry point
   docs/____-guide/index.rst      -> part
   docs/____-guide/<chapter>.rst  -> chapter

Doc References
--------------

This section provides a guide to follow when creating references
in OpenDaylight documentation. For more information, refer to
`Cross-referencing documents
<https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html>`_.
Within a document, reference another section by adding an underline to the
end of the text.

.. code-block:: shell

   This is a reference to `Title of a section`_

Ensure that the target destination has the exact title as what is being referenced.

.. code-block:: shell

   Title of a section
   ^^^^^^^^^^^^^^^^^^

You can also use a target and ``:ref:`` syntax to provide links within a document.
To do so, perform the following steps:

#. Create a label.

   .. code-block:: shell

      .. _title-section:

      Title of a Section
      ^^^^^^^^^^^^^^^^^^

#. Add a reference to the section anywhere in the doc.

   .. code-block:: shell

      This is a reference to :ref:`title-section`

Ensure that each label is unique. The best practice is to prefix the labels with the
project name; for example, use ``sfc-user-guide`` instead of just ``user-guide``.

.. _docs-rst-troubleshooting:

Troubleshooting
===============

Nested formatting does not work
-------------------------------

Inline markup for bold, italic, and fixed-width font cannot be nested. Furthermore,
inline markup cannot be mixed with hyperlinks, so you cannot have a link with bold text.
This is tracked in a `Docutils FAQ question
<http://docutils.sourceforge.net/FAQ.html#is-nested-inline-markup-possible>`_.

Reimport your tox directory
---------------------------

The tox app will not work if your ``requirements.txt`` has changed or removed.
To fix this issue, remove the current tox environment and reimport tox.
To do so, perform the following steps:

.. code-block:: shell

   rm -rf .tox
   tox

Commit Message Errors
---------------------

Pre-commit checks that git commit messages adhere to the following rules:

* Shortlog (1st line of commit message) is less than 50 characters
* Shortlog (1st line of commit message) is in the imperative mood. For example,
  "Add foo unit test" is good, but "Adding foo unit test is bad""
* Body (all lines but 1st line of commit message) are less than 72 characters.
  Some exceptions seem to exist, such as for long URLs.

Some examples of those being logged are:

.. code-block:: none

   Project wide:
   |    | [NORMAL] GitCommitBear:
   |    | Shortlog of HEAD commit isn't in imperative mood! Bad words are 'Adding'


.. code-block:: none

   Project wide:
   |    | [NORMAL] GitCommitBear:
   |    | Body of HEAD commit contains too long lines. Commit body lines should not exceed 72 characters.

Error in "code-block" directive
-------------------------------

If you see an error like this:

.. code-block:: shell

   docs/gerrit.rst
   |  89| ···..·code-block::·bash
   |    | [MAJOR] RSTcheckBear:
   |    | (ERROR/3) Error in "code-block" directive:

It means that the relevant code-block is not valid for the
language specified, in this case ``bash``. Use ``shell`` or ``none``.

.. note:: If you still have problems, e-mail the documentation group at
          documentation@lists.opendaylight.org

Project Documentation Requirements
==================================

The following section describes the steps to initiate a documentation project.

Determine the Doc Type
----------------------

First step is to determine the features your project and if it will be user-facing.
For example, the ``odl-openflowplugin-flow-services-ui`` is a user-facing, since it
is installed as a user-facing OpenFlow features. However, ``odl-openflowplugin-flow
-services`` is not because it provides only developer-facing features.
Determine the type of documentation that you need to provide based on the project's
features. The kinds of required documentation can be found in the
:ref:`requirements-for-projects` section.

Documenation Templates
----------------------

You might need to create multiple documents for the same project. For example, the
AAA project has a developer guide and a users guide. For each type of documentation,
you can find the corresponding template in the docs repo.

* For user documentation: ``docs.git/docs/templates/template-user-guide.rst``
* For developer documentation: ``docs.git/docs/templates/template-developer-guide.rst``
* For installation documentation: ``docs/templates/template-install-guide.rst``

Copy the template into the appropriate directory for your project.

* For user documentation: ``docs.git/docs/user-guide/${feature-name}-user-guide.rst``
* For developer documentation: ``docs.git/docs/developer-guide/${feature-name}-developer-guide.rst``
* For installation documentation (if any): ``docs.git/docs/getting-started-guide/project-specific-guides/${project-name}.rst``

Naming Conventions
------------------

The naming conventions are used to maintain a consistent document taxonomy. However, if the
naming convention is are not appropriate or do not make sense for a document in development,
use a convention that you think is more appropriate. Edit the template to fill in the outline
of what you will provide using the suggestions in the template. If you feel like a section is
not needed, omit it.

Index File
----------

Link the new file into its associated ``index.rst`` file. In general, include the file by adding
a new line ``project-name`` without the ``.rst`` at the end.

Building the documentation
--------------------------

Ensure the documentation project builds HTML files. Run ``tox`` from the project's docs repository.
If successful, you can find the HTML version of the docs at ``/docs/_build/html/index.html``.
Refer to :ref:`docs-rst` for more details about building the docs.

Add, Commit, and Review
-----------------------

Perform the following steps When you are ready to submit your documentation:

#. Issue the following command to add your changes:

   .. code-block:: bash

      git add --all

#. Issue the following command to commit your changes:

   .. code-block:: bash

       Commit -sm "Documentation outline for ${project-shortname}"

#. Issue the following command to push your changes to Gerrit:

   .. code-block:: bash

      git review

   .. note:: Refer to the `Git-review Workflow <https://wiki.opendaylight.org/view/Git-review_Workflow>`_
      page if you do not have git-review installed.

#. You should get an email on the progress of your build. Go the location of the build on Gerrit
   and `ADD REVIEWERS.``

#. When you get feedback from the reviewers, add your changes on the branch and do the following.
   Read your changes:

   .. code-block:: bash

      git add --all

#. Issue the following command to recommit your changes. This time, you will add to the initial commit
   with an ammend.

   .. code-block:: bash

       Commit --amend

#. Issue the following command to push your changes back to Gerrit:

   .. code-block:: bash

      git review

Documentation Project Output
============================

All projects will have at least two HTML files: release notes and users guide.
Occasionally, a feature will have a developer guide and/or installation guide.
Typically, docs consist of the following:

User Guide
----------

This guide is for users who are looking to use the feature, along with some basic
or no code. It should include an overview of the feature and a description of
all available configuration options.
Developers Guide
----------------

This guide is for users who are looking to use the feature, along with some
more complex code. It includes detail descriptions of the feature's APIs,
including description, usage, and example. All projects are logically nested
in the project's repository.

Installation Guide
------------------

This guide is for people looking for instructions to install the feature.

Release Notes
-------------

Release notes are required as part of each project's release formal review.


Additional Doc References
=========================

.. _Sphinx: http://www.sphinx-doc.org/en/stable/
.. _Documentation Group: https://wiki.opendaylight.org/view/Documentation/
.. _RelEng/Builder: https://wiki.opendaylight.org/view/RelEng/Builder
.. _Pandoc: http://pandoc.org/
