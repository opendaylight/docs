YangIDE Installation Guide
==========================

Overview
--------

The YangIDE project provides an Eclipse plugin for viewing and editing
Yang model files. When you create a "Yang Project" using the plugin,
it creates a small Maven project with a POM file (pom.xml) that
references the appropriate OpenDaylight dependencies, along with a
sample Yang model file (acme-system.yang).

Pre Requisites for Installing YangIDE
-------------------------------------

* YangIDE has the same hardware requirements as the Eclipse IDE, which
  is about the same as the hardware requirements for Java 7.
* At least Java 7 is required to run Eclipse (also an obvious
  requirement), but Java 8 will be required if you're building an
  application using OpenDaylight, and Java 8 is recommended anyway.

Preparing for Installation
--------------------------

As soon as at least Java 7 (Java 8 preferred) and Eclipse are
installed, and Eclipse is running, you can install YangIDE.

You can find the Oracle Java installer at
http://www.oracle.com/technetwork/java/javase/downloads/index.html .

The Eclipse installer can be found at
http://www.eclipse.org/downloads/ .  You should select the "Eclipse
IDE for Java Developers", and make sure you select the installer for
the correct platform (for instance, 32-bit or 64-bit).


Installing YangIDE
------------------

The YangIDE plugin can be installed by using the public update site URL
provided, which is http://abc.def .

While in Eclipse, select "Help" from the menu bar and select "Install
New Software ...".  On the resulting "Install" dialog, click the
"Add..." button.  In that dialog, enter the update site URL as
specified above and give it a name of "YangIDE".  Select the provided
plugin and approve the license.

Eclipse will prompt you to restart Eclipse.  Do that.

Installation is complete at this point.

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
"Specify YANG Code Generators Parameters".  Don't change anything on
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
care about.  One is "src/main/yang", which is where you'll store the
Yang model files, and the "pom.xml" file, which is where you'll enter
dependencies for Yang model files to import.  If you won't be
importing any Yang model files, or you'll only be importing other Yang
model files in your own project, then you'll never have to do anything
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

If Java and Eclipse seem to be fine, but the YangIDE is having
problems, ask questions on the "yangide-dev" mailing list.

Post Installation Configuration
-------------------------------

No post-installation steps are required.

Upgrading From a Previous Release
---------------------------------

If you already had the "Yang IDE" plugin from "Xored", you'll need to
uninstall that plugin before you install this one.

Uninstalling YangIDE
--------------------

Uninstalling the YangIDE plugin is the same as uninstalling any other Eclipse plugin.

Click on the "Help" menu item and select "Installation Details".  That
list will have all the plugins you have installed (or that came with
the distribution).  To uninstall YangIDE, you'll need to select four
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
