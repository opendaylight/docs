.. _install_odl:

***********************
Installing OpenDaylight
***********************

You complete the following steps to install your networking environment, with
specific instructions provided in the subsections below.

Before detailing the instructions for these, we address the following:
Java Runtime Environment (JRE) and operating system information
Target environment
Known issues and limitations


Install OpenDaylight
====================

Downloading and installing OpenDaylight
---------------------------------------

The default distribution can be found on the OpenDaylight software
download page: http://www.opendaylight.org/software/downloads

The Karaf distribution has no features enabled by default. However, all
of the features are available to be installed.

.. note:: For compatibility reasons, you cannot enable all the features
          simultaneously. We try to document known incompatibilities in
          the `Install the Karaf features`_ section below.

Running the karaf distribution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To run the Karaf distribution:

#. Unzip the zip file.
#. Navigate to the directory.
#. run ``./bin/karaf``.

For Example::

   $ ls karaf-0.8.x-Oxygen.zip
   karaf-0.8.x-Oxygen.zip
   $ unzip karaf-0.8.x-Oxygen.zip
   Archive:  karaf-0.8.x-Oxygen.zip
      creating: karaf-0.8.x-Oxygen/
      creating: karaf-0.8.x-Oxygen/configuration/
      creating: karaf-0.8.x-Oxygen/data/
      creating: karaf-0.8.x-Oxygen/data/tmp/
      creating: karaf-0.8.x-Oxygen/deploy/
      creating: karaf-0.8.x-Oxygen/etc/
      creating: karaf-0.8.x-Oxygen/externalapps/
      ...
      inflating: karaf-0.8.x-Oxygen/bin/start.bat
      inflating: karaf-0.8.x-Oxygen/bin/status.bat
      inflating: karaf-0.8.x-Oxygen/bin/stop.bat
   $ cd distribution-karaf-0.8.x-Oxygen
   $ ./bin/karaf

       ________                       ________                .__  .__       .__     __
       \_____  \ ______   ____   ____ \______ \ _____  ___.__.\|  \| \|__\| ____ \|  \|___/  \|_
        /   \|   \\____ \_/ __ \ /    \ \|    \|  \\__  \<   \|  \|\|  \| \|  \|/ ___\\|  \|  \   __\
       /    \|    \  \|_> >  ___/\|   \|  \\|    `   \/ __ \\___  \|\|  \|_\|  / /_/  >   Y  \  \|
       \_______  /   __/ \___  >___\|  /_______  (____  / ____\|\|____/__\___  /\|___\|  /__\|
               \/\|__\|        \/     \/        \/     \/\/            /_____/      \/



* Press ``tab`` for a list of available commands
* Typing ``[cmd] --help`` will show help for a specific command.
* Press ``ctrl-d`` or type ``system:shutdown`` or ``logout`` to shutdown OpenDaylight.

.. note:: Please take a look at the :ref:`security_deployment_recommendations`
          and following sections under :ref:`security_considerations` if you're
          planning on running OpenDaylight outside of an isolated test lab
          environment.

Install the Karaf features
==========================
To install a feature, use the following command, where feature1 is the feature
name listed in the table below::

    feature:install <feature1>

You can install multiple features using the following command::


    feature:install <feature1> <feature2> ... <featureN-name>

.. note:: For compatibility reasons, you cannot enable all Karaf features
   simultaneously. The table below documents feature installation names and
   known incompatibilities.Compatibility values indicate the following:

* **all** - the feature can be run with other features.
* **self+all** - the feature can be installed with other features with a value of
  **all**, but may interact badly with other features that have a value of
  **self+all**. Not every combination has been tested.

Uninstalling features
---------------------
To uninstall a feature, you must shut down OpenDaylight, delete the data
directory, and start OpenDaylight up again.

.. important:: Uninstalling a feature using the Karaf feature:uninstall command
   is not supported and can cause unexpected and undesirable behavior.

Listing available features
--------------------------
To find the complete list of Karaf features, run the following command::

    feature:list

To list the installed Karaf features, run the following command::

    feature:list -i

The decription of these features is in the project specific
relase notes :ref:`proj_rel_notes` section.

Karaf running on Windows 10
---------------------------

Windows 10 cannot be identify by Karaf (equinox).
Issue occurs during installation of karaf features e.g.::

   opendaylight-user@root>feature:install odl-restconf
   Error executing command: Can't install feature odl-restconf/0.0.0:
   Could not start bundle mvn:org.fusesource.leveldbjni/leveldbjni-all/1.8-odl in feature(s) odl-akka-leveldb-0.7: The bundle "org.fusesource.leveldbjni.leveldbjni-all_1.8.0 [300]" could not be resolved. Reason: No match found for native code: META-INF/native/windows32/leveldbjni.dll; processor=x86; osname=Win32, META-INF/native/windows64/leveldbjni.dll; processor=x86-64; osname=Win32, META-INF/native/osx/libleveldbjni.jnilib; processor=x86; osname=macosx, META-INF/native/osx/libleveldbjni.jnilib; processor=x86-64; osname=macosx, META-INF/native/linux32/libleveldbjni.so; processor=x86; osname=Linux, META-INF/native/linux64/libleveldbjni.so; processor=x86-64; osname=Linux, META-INF/native/sunos64/amd64/libleveldbjni.so; processor=x86-64; osname=SunOS, META-INF/native/sunos64/sparcv9/libleveldbjni.so; processor=sparcv9; osname=SunOS

Workaround is to add

   org.osgi.framework.os.name = Win32

to the karaf file

   etc/system.properties

The workaround and further info are in this thread:
http://stackoverflow.com/questions/35679852/karaf-exception-is-thrown-while-installing-org-fusesource-leveldbjni

