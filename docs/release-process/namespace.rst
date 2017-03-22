**********
Namespaces
**********

Project namespaces in OpenDaylight are used to ensure projects do not have name
collisions in code and packages. OpenDaylight enforces namespaces in Nexus
using the following patterns:

- ^/org\.opendaylight\.PROJECT/.*
- ^/org/opendaylight/PROJECT/.*

Where PROJECT is the name of an OpenDaylight project.

In cases where a project has a sub-project we recommend adding an additional
level to the path for example `org.opendaylight.integration.test` however no
strong enforcement is currently enforced and some projects do this already
internally.

This restriction applies to all site repositories in Nexus as well in the event
that a project wishes to push a static web site into their allocated site path.

Maven / Java
============

Maven has a built in namespace routing using <groupId> field in pom files.
For example:

.. code-block:: xml

    <project>
      <groupId>org.opendaylight.odlparent</groupId>
      <artifactId>odlparent-lite</artifactId>
      <version>1.8.0-SNAPSHOT</version>
    </project>

Python
======

Python projects typically publish to artifacts to PyPi and use their shortname
for modules rather than a full path like Java projects do.
