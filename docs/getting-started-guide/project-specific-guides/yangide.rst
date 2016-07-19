YANG IDE Installation Guide
==========================

Overview
--------

The YANG IDE project provides an Eclipse plugin for viewing and editing
Yang model files. When you create a "Yang Project" using the plugin,
it creates a small Maven project with a POM file (pom.xml) that
references the appropriate OpenDaylight dependencies, along with a
sample Yang model file (acme-system.yang).

Pre Requisites for Installing YANG IDE
-------------------------------------

* YANG IDE has the same hardware requirements as the Eclipse IDE, which
  is about the same as the hardware requirements for Java 7.
* At least Java 7 is required to run Eclipse (also an obvious
  requirement), but Java 8 will be required if you are building an
  application using OpenDaylight, and Java 8 is recommended anyway.

Preparing for Installation
--------------------------

As soon as at least Java 7 (Java 8 preferred) and Eclipse are
installed, and Eclipse is running, you can install YANG IDE.

You can find the Oracle Java installer at
http://www.oracle.com/technetwork/java/javase/downloads/index.html .

The Eclipse installer can be found at
http://www.eclipse.org/downloads/ .  You should select the "Eclipse
IDE for Java Developers", and make sure you select the installer for
the correct platform (for instance, 32-bit or 64-bit).


Installing YANG IDE
------------------

The YANG IDE plugin can be installed by using the public update site URL
provided, which is http://abc.def .

While in Eclipse, select "Help" from the menu bar and select "Install
New Software ...".  On the resulting "Install" dialog, click the
"Add..." button.  In that dialog, enter the update site URL as
specified above and give it a name of "YANG IDE".  Select the provided
plugin and approve the license.

Eclipse will prompt you to restart Eclipse.  Do that.

Installation is complete at this point.

Network Connections
^^^^^^^^^^^^^^^^^^^

If the installation failed with an indication that it could not reach
the internet, then your work computer may be behind a firewall.
You will need to go to the "Network Connections" section of the Eclipse
preferences (Menubar: "Window"->"Preferences"->"General"->"Network
Connections").

Before you make these changes, you will need to know the host and port
of your outbound proxy server.

On the "Network Connections" page, you should select "Manual" in the
"Active Provider" dropdown, then edit the "HTTP" and "HTTPS" rows in
the table, setting the host and port of the outbound proxy server.

If the proxy server requires authentication, turn on the "Requires
Authentication" checkbox and enter the required userid and password
fields.  If you do not know whether your proxy server requires
authentication, it probably does not.

Verifying your Installation
---------------------------

This is not really a "usage guide", but following these steps will
verify that the plugin was properly installed.

When installation is complete, you can select "File" from the menu
bar, then "New", then "Other" (you may have a keyboard shortcut for
"Ctrl+n" for this).

In the "New" dialog, you can enter "yang" in the field under the
"Wizards" label, which starts out with the content of "type filter
text".  That will limit the list to the "YANG" folder and the two
choices of "YANG File" and "YANG Project".  Select the "YANG Project"
option and click "Next".

On the "New Yang Project" dialog, you may see a wizard page titled
"Specify YANG Code Generators Parameters".  Do not change anything on
that page and click "Next".

On the next wizard page, with the title "Select project name and
location", check the "Create a simple project" checkbox and click
"Next".

On that dialog, enter anything you want in the "Group Id" field.
Enter a project name (again, whatever you want for now) in the
"Artifact Id" field and click "Finish".  No other fields on the page
need to be changed.

The dialog will now go away and Eclipse will create the project, which
you should see in either the "Package Explorer" or "Project Explorer"
view, on the left side.

Click the arrow just left of the project name to expand the contents
of the project.

In that resulting list, there are only two entries that you will ever
care about.  One is "src/main/yang", which is where you will store the
Yang model files, and the "pom.xml" file, which is where you will enter
dependencies for Yang model files to import.  If you will not be
importing any Yang model files, or you will only be importing other Yang
model files in your own project, then you will never have to do anything
with the "pom.xml" file.

Click the arrow to the left of the "src/main/yang" entry to expand that.

You should see a "acme-system.yang" file, which the plugin created by
default.  Double-click on that entry to open the file in the editor.

Troubleshooting
^^^^^^^^^^^^^^^

If Eclipse fails to start up initially, then there is something wrong
with either the Java installation or the Eclipse installation.

You can determine whether Java is installed correctly by opening a
shell or command window and entering "java -version" and verifying
whether the output corresponds to the version of Java that you
installed.

If the Java installation seems fine, but Eclipse still fails to start
up, you can ask questions on the #eclipse IRC channel, or post
questions on the "Newcomers" forum at http://www.eclipse.org/forums/ .

If Java and Eclipse seem to be fine, but the YANG IDE is having
problems, ask questions on the "yangide-dev" mailing list.

Post Installation Configuration
-------------------------------

Setting Proxy Used For Maven
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If your work computer sits behind a firewall, you will have had to put
information about your firewall in the "Network Connections" section
of the Eclipse preferences.  That would have allowed you to at least
obtain the plugin and install it into Eclipse.

Much of the functionality of YANG IDE uses Maven internally.  You do
not need to be a Maven expert to use this functionality, but you will
need to add a few more lines of configuration so that Maven can get
through the firewall.  Maven, even when running inside Eclipse, as it
is when you are using YANG IDE, does not use the Eclipse "Network
Connection" settings to reach the internet.  You have to set the proxy
server information in a different place for Maven.

Maven looks for a file at ``$HOME/.m2/settings.xml`` (Linux) or
``%HOME%\.m2\settings.xml`` (Windows).  If the ``.m2`` folder does not
exist, you will need to create it.  If the "settings.xml" file does not
exist, you should create it with the following contents::

    <?xml version="1.0" encoding="UTF-8"?>
    <settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
      <proxies>
        <proxy>
          <id>proxy</id>
          <active>true</active>
          <protocol>http</protocol>
          <host>FULLY QUALIFIED NAME OF PROXY HOST</host>
          <port>PROXY PORT</port>
        </proxy>
        <proxy>
          <id>proxy2</id>
          <active>true</active>
          <protocol>https</protocol>
          <host>FULLY QUALIFIED NAME OF PROXY HOST</host>
          <port>PROXY PORT</port>
        </proxy>
      </proxies>
    </settings>

Replace "FULLY QUALIFIED NAME OF PROXY HOST" and "PROXY PORT" with the
host and port of your proxy server.

If the "settings.xml" file already existed, then you will need to edit
it, inserting the "proxies" element from the above sample at an
appropriate place.

Upgrading From a Previous Release
---------------------------------

If you already had the "YANG IDE" plugin from "Xored", you will need to
uninstall that plugin before you install this one.

Uninstalling YANG IDE
--------------------

Uninstalling the YANG IDE plugin is the same as uninstalling any other Eclipse plugin.

Click on the "Help" menu item and select "Installation Details".  That
list will have all the plugins you have installed (or that came with
the distribution).  To uninstall YANG IDE, you will need to select four
entries from that list:

* "m2e connector for YANG"
* "m2e connector for YANG Developer Resources"
* "YANG IDE"
* "YANG IDE Developer Resources"

Use the Control key to select multiple entries in this list.  When all
four entries are selected, click the "Uninstall" button.  The next
dialog shows what you selected and asks you to confirm with the
"Finish" button.

It will then uninstall the plugin and prompt you to restart Eclipse.
When Eclipse restarts, the uninstall process is complete.
