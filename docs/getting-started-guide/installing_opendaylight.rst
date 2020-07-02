.. _install_odl:

***********************
Installing OpenDaylight
***********************

OpenDaylight (ODL) is a modular open platform that is designed to customize and automate networks
of any size and scale. It addresses a variety of use cases in any existing network environment.
This document describes how to install ODL.

Karaf
^^^^^

Apache Karaf provides an OSGi ecosystem for Java applications. Basically,
Karaf provides a user-friendly CLI, Web console, and remote shell to help
install, provision, and deploy OpenDaylight. For information on Karaf, refer to
`Apache Karaf <https://karaf.apache.org>`_.


Hardware Prerequisites
^^^^^^^^^^^^^^^^^^^^^^

The following table lists the minimum hardware prerequisites required before installing ODL.

.. list-table:: Hardware Prerequisites
   :widths: auto
   :header-rows: 1

   * - **Component**
     - **Minimum**
   * - **RAM**
     - 4 GB
   * - **Network**
     - 1 GE
   * - **CPU**
     - 2 cores
   * - **Storage**
     - 2 GB

Recommended Software
^^^^^^^^^^^^^^^^^^^^

The following table lists the software recommended before installing ODL.
Java 11 is mandatory starting from the Magnesium release; however, earlier
ODL releases support Java 8 (or later). In addition, ODL runs on any OS
that supports Java. However, ODL has been tested on Ubuntu, CentOS, and
Red Hat Enterprise Linux (RHEL).

.. list-table:: Software Recommendations
   :widths: 20 50
   :header-rows: 1

   * - **Component**
     - **Recommended**
   * - **Tested Operating Systems**
     - * Ubuntu (18.0)
       * CentOS/RHEL (7.X)
   * - **Software**
     - * Java JDK (11.0)

OpenJDK
^^^^^^^

OpenJDK Java provides prompts during installation. OpenJDK Java is standard
on most systems; however, Java 11 is required to install and run ODL starting
with the Magnesium release. For information on OpenJDK, refer to `OpenJDK <https://openjdk.java.net>`_.
The following subsection describes how to install OpenJDK.

Installing OpenJDK Java for CentOS/RHEL
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Perform the following steps to install OpenJDK Java for CentOS/RHEL:

#. Enter the following command to check the installed version of OpenJDK.
   Update OpenJDK to release 11 if the command returns a version earlier than 11.

   .. code-block:: shell

      java -version

#. Enter the following command to install OpenJDK Java 11for CentOS/RHEL:

   .. code-block:: shell

      sudo yum install java-11-openjdk-devel

Installing OpenJDK Java for Ubuntu
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Perform the following steps to install OpenJDK Java for Ubuntu:

#. Enter the following command to check the installed version of OpenJDK. Update
   OpenJDK to release 11 if the command returns a version earlier than 11.

   .. code-block:: shell

      java -version


#. Enter the following command to install OpenJDK Java 11 for Ubuntu:

   .. code-block:: shell

      sudo apt-get install openjdk-11-jdk

Java Confirmation
~~~~~~~~~~~~~~~~~

Java 11 is required to install and run ODL. However, there are instances when
there is more than one version of Java installed, so you must switch versions.

**CentOS/RHEL**

Run the following commands to switch versions of Java versions for CentOS/RHEL:

#. Display the Java versions:

   .. code-block:: shell

      sudo alternatives --config java

      There are 2 programs which provide 'java'.

      Selection    Command
      -----------------------------------------------
      * 1   java-1.8.0-openjdk.x86_64 (/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.el7_8.x86_64/jre/bin/java)
      + 2   java-11-openjdk.x86_64 (/usr/lib/jvm/java-11-openjdk-11.0.7.10-4.el7_8.x86_64/bin/java)

      Enter to keep the current selection[+], or type selection number:

#. Select the Java 11 version.

**Ubuntu**

Run the following commands to switch Java versions for Ubuntu:

#. Display the Java versions:

   .. code-block:: shell

      sudo update-alternatives --config java

      There are 2 programs which provide 'java'.

      Selection    Command
      -----------------------------------------------
      * 1   java-1.8.0-openjdk.x86_64 (/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.el7_8.x86_64/jre/bin/java)
      + 2   java-11-openjdk.x86_64 (/usr/lib/jvm/java-11-openjdk-11.0.7.10-4.el7_8.x86_64/bin/java)

      Enter to keep the current selection[+], or type selection number:

#. Select the Java 11 version.

.. note:: For best results, it is recommended to set JAVA_HOME. Refer to
          `JDK Java Home <https://docs.oracle.com/cd/E19182-01/820-7851/inst_cli_jdk_javahome_t/>`_.

Downloading and Installing OpenDaylight
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Perform the following steps to download and install ODL:

#. Go to the `ODL download page <http://www.opendaylight.org/software/downloads>`_
   to download the ODL ``opendaylight-x.x.x.tar`` file.

#. Enter the following command to expand the ``tar`` file:

   .. code-block:: shell

      tar -xvf <distribution>.tar

#. Navigate to the ``opendaylight-x.x.x`` directory.

#. Run the following command:

   .. code-block:: shell

      ./bin/karaf
      karaf: JAVA_HOME not set; results may vary
      Apache Karaf starting up. Press Enter to open the shell now...
      100% [========================================================================]

      Karaf started in 0s. Bundle stats: 12 active, 12 total

      ________                       ________                .__  .__       .__     __
      \_____  \ ______   ____   ____ \______ \ _____  ___.__.|  | |__| ____ |  |___/  |_
       /   |   \\____ \_/ __ \ /    \ |    |  \\__  \<   |  ||  | |  |/ ___\|  |  \   __\
      /    |    \  |_> >  ___/|   |  \|    `   \/ __ \\___  ||  |_|  / /_/  >   Y  \  |
      \_______  /   __/ \___  >___|  /_______  (____  / ____||____/__\___  /|___|  /__|
              \/|__|        \/     \/        \/     \/\/            /_____/      \/


      Hit '<tab>' for a list of available commands
      and '[cmd] --help' for help on a specific command.
      Hit '<ctrl-d>' or type 'system:shutdown' or 'logout' to shutdown OpenDaylight.

      opendaylight-user@root>


.. note:: Please refer to the :ref:`security_deployment_recommendations`
          and the  sections under :ref:`security_considerations` if you plan
          to run OpenDaylight outside of an isolated test lab environment.

Karaf Features
^^^^^^^^^^^^^^

The Karaf distribution does not have any features enabled after installation completes.
However, all features are available to be installed. Run the following command to list
all of the Karaf features:

.. code-block:: shell

   feature:list

Find the description of these features is in the project's specific
release notes :ref:`proj_rel_notes` section.

Installing a Feature
~~~~~~~~~~~~~~~~~~~~

Perform the following steps to install a feature:

#. Run the following command to find the complete list of Karaf features:

   .. code-block:: shell

      feature:list

#. Run the following command to install a Karaf feature:

   .. code-block:: shell

      feature:install <feature>

#. Run the following command to install multiple Karaf features:

   .. code-block:: shell

      feature:install <feature1> <feature2> <feature3>

Uninstalling a Feature
~~~~~~~~~~~~~~~~~~~~~~

Perform the following steps to uninstall a feature:

#. Run the following command to shutdown OpenDaylight:

   .. code-block:: shell

      opendaylight-user@root>system:shutdown
      Confirm: halt instance root (yes/no): yes

#. Delete the ``data,`` ``snapshots`` and ``journal`` directories.

   .. code-block:: shell

      rm -r data/
      rm -r snapshots/
      rm -r journal/

#. Restart OpenDaylight.

.. important:: Uninstalling a feature using the Karaf ``feature:uninstall`` command
   is not supported and can cause unexpected and undesirable behavior.

