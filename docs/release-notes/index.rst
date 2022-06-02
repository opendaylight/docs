#############
Release Notes
#############

Execution
---------

OpenDaylight includes `Karaf <https://karaf.apache.org>`_ containers, `OSGi <https://www.osgi.org>`_
(Open Service Gateway Initiative) bundles, and Java class files, which are portable and can run on
any Java 11-compliant JVM (Java virtual machine). Any add-on project or feature of a
specific project may have additional requirements.

Development
-----------

OpenDaylight is written in Java and utilizes Maven as a build tool. Therefore,
the only requirements needed to develop projects within OpenDaylight include:

* `Java JDK 11 <https://www.oracle.com/java/technologies/javase/products-doc-jdk11certconfig.html>`_
* `Apache Maven <https://maven.apache.org>`_ 3.5.2 or later

If an application or tool is built on top of OpenDaylight’s REST APIs, it does not
have any special requirement beyond what is necessary to run the application or tool
to make REST calls.

In some instances, OpenDaylight uses the `Xtend <https://www.eclipse.org/xtend/>`_ language.
Even though Maven downloads all appropriate tools to build applications; additional plugins
may be required to support IDE.

Projects with additional requirements for execution typically have similar or
additional requirements for development. See the platforms release notes for details.

Platform Release Notes
======================

.. toctree::
   :glob:
   :maxdepth: 1

   upgrade-process

Project Release Notes
=====================

.. toctree::
   :glob:
   :maxdepth: 1

   projects/*

Service Release Notes
=====================

.. toctree::
   :glob:
   :maxdepth: 1

   release-notes-phosphorus-sr1
   release-notes-phosphorus-sr2
release-notes-phosphorus-sr3
