.. _documentation-guide:

Documentation Guide
===================

This guide provides details on how to contribute to the OpenDaylight
documentation. OpenDaylight currently uses a mix of AsciiDoc_ and
reStructuredText_ for documentation, although the `Documentation
Group`_ is generally trying to move toward using reStructuredText_ and
Sphinx_ to build it as it is widely-used to provide both HTML and pdf
documentation that can be easily versioned alongside the code. It also
offers similar syntax to Markdown which is familiar to large numbers of
people.

reStructuredText-based Documentation
------------------------------------

When using reStructuredText, we try to follow the python documentation
style guide. See:

    https://docs.python.org/devguide/documenting.html

To build and review the reStructuredText documentation locally you must
have installed locally:

* python
* python-tox

Which both should be available in most distribution's package managers.

Then simply run tox and open the html produced via your favourite web
browser as follows:

.. code-block:: bash

    tox -edocs
    firefox .tox/docs/tmp/html/index.html

Directory Structure
^^^^^^^^^^^^^^^^^^^

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

AsciiDoc-based Documentation
----------------------------

Information on the AsciiDoc tools and build system can be found here:

   https://wiki.opendaylight.org/view/Documentation/Tools

Directory Structure
^^^^^^^^^^^^^^^^^^^

The AsciiDoc documentation is all located in the ``manuals`` directory
of the ``docs`` ``git`` repository. An example of the directory
structure on June 28th, 2016 can be seen here::

   $ tree -L 4
   .
   ├── common
   │   └── app_support.xml
   ├── developer-guide
   │   ├── pom.xml
   │   └── src
   │       └── main
   │           ├── asciidoc
   │           └── resources
   ├── getting-started-guide
   │   ├── pom.xml
   │   └── src
   │       └── main
   │           ├── asciidoc
   │           └── resources
   ├── howto-openstack
   │   ├── pom.xml
   │   └── src
   │       └── main
   │           ├── asciidoc
   │           └── resources
   ├── pom.xml
   ├── readme
   │   ├── pom.xml
   │   └── src
   │       └── main
   │           └── asciidoc
   └── user-guide
       ├── pom.xml
       └── src
           └── main
               ├── asciidoc
               └── resources

Each of the top-level directories under ``manuals`` is a whole guide by
itself and it contains a ``pom.xml`` file saying how to build it, a
``src/main/asciidoc`` directory with AsciiDoc source files and a
``src/main/resources`` directory containing images.

Migration from AsciiDoc to ReStructuredText
-------------------------------------------

Automatically
^^^^^^^^^^^^^

In theory, Pandoc_ can convert from DocBook to reStructuredText and we
produce DocBook as part of our build chain from AsciiDoctor. In
practice, for modest-sized migrations doing things by hand works fairly
well.

By Hand
^^^^^^^

Converting from AsciiDoc to reStructuredText is usually pretty
straightforward and involves looking up the basic syntax for what you
want to do by looking it up in the reStructuredText_ guide.

The differences are usually minor and fast to change.

Also, because of how fast Sphinx builds, and how fast it is to refresh
the HTML documentation rapid iteration is very easy.

Bold/Italics/Verbatim Formatting
""""""""""""""""""""""""""""""""

This is mostly minor syntax issues. In AsciiDoc you do inline
formatting something like this::

   *bold* _italic_ +verbatim+ `verbatim`

In reStructuredText, things are slightly different::

   **bold** *italic* ``verbatim``

Images
""""""

Image formats change from something like::

   .OpenStack Architecture
   image::vtn/OpenStackDeveloperGuide.png["OpenStack Architecture",width=500]

To something like::

   .. image:: images/dlux-default.png

A helpful regular expression for automating the replacements is something like::

   search: ^( *)\.(.+)\n +image::(.+)\[(.+),width=(\d+)\]
   replace: $1.. figure:: images/dlux/$3\n$1   :width: $5\n\n$1   $2





.. _AsciiDoc: http://www.methods.co.nz/asciidoc/
.. _Sphinx: http://www.sphinx-doc.org/en/stable/
.. _reStructuredText: http://www.sphinx-doc.org/en/stable/rest.html
.. _Documentation Group: https://wiki.opendaylight.org/view/Documentation/
.. _RelEng/Builder: https://wiki.opendaylight.org/view/RelEng/Builder
.. _Pandoc: http://pandoc.org/
