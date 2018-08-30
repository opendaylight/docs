Name
----

Dlux Apps

Repo Name
---------

dluxapps

Description
-----------

Project Proposal slides: |Project Proposal Slides|

Dlux is UI built with Angular JS and few other libraries. It consists of
two main logical parts - **Core** and **Applications**.

.. figure:: DluxBlockArchitecture.png
   :alt: DluxBlockArchitecture.png
      :width: 824px


**Core** is a framework providing basic functionality such as
navigation, authentication, etc.

**Applications** are built on top of the Core. These applications are
not belonging to any particular project, like GBP UI or SFC UI, which
are residing in their own repositories with backend code.

Now we have hosting these applications in the Dlux project:

-  **YangUI** - simple UI for interaction with Controller. Based on Yang
   models, renders a form, so user can read/write data without knowledge
   of models.
-  **Yangman** - advanced and more user friendly YangUI replacement.
-  **Yang Visualizer** - provides visualization of Yang models in graph
-  **Node** - very simple Inventory node manager
-  **Topology** - very simple OpenFlow topology visualizer

Reasons for Project Split
-------------------------

Active commiters in Dlux project contributed only to Core functionality
and don't have the knowledge of Applications. They can review code only
from code style perspective, but not from the perspective of
functionality. Splitting the project into two parts, introducing new
commiters with knowledge of current applications we can speed up the
review process and avoid complications like we had during Boron release.

New project will be in same offset like Dlux - Offset 1 and will share
mailing list (dlux-dev@lists.opendaylight.org) and weekly meeting.

Scope
-----

-  Home for UI Applications with broader domain than one project (f.e.
   topology visualization)
-  Simple UI for data manipulation in controller
-  Set of tools which can be used in other Dlux based Applications

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Daniel Kuzma <daniel.kuzma@webcreation.sk>
-  Daniel Malachovsky <dmalacho@cisco.com>
-  Dasa Simkova <dsimkova@cisco.com>
-  Juraj Sebin <sebin.juraj@gmail.com>
-  Lubomir Balogh <lubalogh@cisco.com>
-  Maxime Millette-Coulombe <mmcoulombe@inocybe.com>
-  Michal Kovacik <mikovaci@cisco.com>
-  Stanislav Jamrich <sjamrich@cisco.com>

Initial Committers
------------------

-  Daniel Kuzma, Gerrit ID: dakuzma, <daniel.kuzma@webcreation.sk>
-  Daniel Malachovsky, Gerrit ID: malachovsky, <dmalacho@cisco.com>
-  Juraj Sebin, Gerrit ID: jsebin, <sebin.juraj@gmail.com>
-  Maxime Millette-Coulombe, Gerrit ID: , <mmcoulombe@inocybe.com>
-  Stanislav Jamrich, Gerrit ID: sjamrich, <sjamrich@cisco.com>

Vendor Neutral
--------------

-  Completely agnostic.
-  Built from the ground up as an open source project.

Meets Board Policy (including IPR)
----------------------------------

The Initial code is being pulled from the Dlux project, which has met
board policy.



.. `|Project Proposal Slides| <https://wiki.opendaylight.org/view/File:DluxApps_Split_Project_Proposal.pptx>`_
