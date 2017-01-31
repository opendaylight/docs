####################
<Feature> User Guide
####################

Refer to this template to identify the required sections and information
that you should  provide for a User Guide. The user guide should contain
configuration, administration, management, using, and troubleshooting
sections for the feature.

Overview
========

Provide an overview of the feature and the use case. Also include the
audience who will use the feature. For example, audience can be the
network administrator, cloud administrator, network engineer, system
administrators, and so on.

<Feature> Architecture
======================

Provide information about feature components and how they work together.
Also include information about how the feature integrates with
OpenDaylight. An architecture diagram could help.

.. note:: Please *do not* include detailed internals that somebody
          using the feature wouldn't care about. For example, the fact
          that there are four layers of APIs between a user command and
          a message being sent to a device is probably not useful to
          know unless they have some way to influence how those layers
          work and a reason to do so.


Configuring <feature>
=====================

Describe how to configure the feature or the project after installation.
Configuration information could include day-one activities for a project
such as configuring users, configuring clients/servers and so on.

Administering or Managing <feature>
===================================

Include related command reference or  operations that you could perform
using the feature. For example viewing network statistics, monitoring
the network, generating reports, and so on.

.. note: Ensure that you create a step procedure whenever required and
         avoid concepts.

For example:

To configure L2switch components perform the following steps.

#. Step 1:
#. Step 2:
#. Step 3:

Tutorials
=========

*optional*

If there is only one tutorial, you skip the "Tutorials" section and
instead just lead with the single tutorial's name. If you do, also
increase the header level by one, i.e., replace the carets (^^^) with
dashes (- - -) and the dashes with equals signs (===).

<Tutorial Name>
---------------

Ensure that the title starts with a gerund. For example using,
monitoring, creating, and so on.

Overview
^^^^^^^^

An overview of the use case.

Prerequisites
^^^^^^^^^^^^^

Provide any prerequisite information, assumed knowledge, or environment
required to execute the use case.

Target Environment
^^^^^^^^^^^^^^^^^^

Include any topology requirement for the use case. Ideally, provide
visual (abstract) layout of network diagrams and any other useful visual
aides.

Instructions
^^^^^^^^^^^^

Use case could be a set of configuration procedures. Including
screenshots to help demonstrate what is happening is especially useful.
Ensure that you specify them separately. For example:

Setting up the VM
"""""""""""""""""

To set up a VM perform the following steps.

#. Step 1
#. Step 2
#. Step 3

Installing the feature
""""""""""""""""""""""

To install the feature perform the following steps.

#. Step 1
#. Step 2
#. Step 3

Configuring the environment
"""""""""""""""""""""""""""

To configure the system perform the following steps.

#. Step 1
#. Step 2
#. Step 3
