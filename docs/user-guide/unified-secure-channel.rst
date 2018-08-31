.. _usc-user-guide:

Unified Secure Channel
======================

This document describes how to use the Unified Secure Channel (USC)
feature in OpenDaylight. This document contains configuration,
administration, and management sections for the feature.

Overview
--------

In enterprise networks, more and more controller and network management
systems are being deployed remotely, such as in the cloud. Additionally,
enterprise networks are becoming more heterogeneous - branch, IoT,
wireless (including cloud access control). Enterprise customers want a
converged network controller and management system solution. This
feature is intended for device and network administrators looking to use
unified secure channels for their systems.

USC Channel Architecture
------------------------

-  USC Agent

   -  The USC Agent provides proxy and agent functionality on top of all
      standard protocols supported by the device. It initiates call-home
      with the controller, maintains live connections with with the
      controller, acts as a demuxer/muxer for packets with the USC
      header, and authenticates the controller.

-  USC Plugin

   -  The USC Plugin is responsible for communication between the
      controller and the USC agent . It responds to call-home with the
      controller, maintains live connections with the devices, acts as a
      muxer/demuxer for packets with the USC header, and provides
      support for TLS/DTLS.

-  USC Manager

   -  The USC Manager handles configurations, high availability,
      security, monitoring, and clustering support for USC.

Installing USC Channel
----------------------

To install USC, download OpenDaylight and use the Karaf console to
install the following feature:

odl-usc-channel-ui

Configuring USC Channel
-----------------------

This section gives details about the configuration settings for various
components in USC.

The USC configuration files for the Karaf distribution are located in
distribution/karaf/target/assembly/etc/usc

-  certificates

   -  The certificates folder contains the client key, pem, and rootca
      files as is necessary for security.

-  akka.conf

   -  This file contains configuration related to clustering. Potential
      configuration properties can be found on the akka website at
      http://doc.akka.io

-  usc.properties

   -  This file contains configuration related to USC. Use this file to
      set the location of certificates, define the source of additional
      akka configurations, and assign default settings to the USC
      behavior.

Administering or Managing USC Channel
-------------------------------------

After installing the odl-usc-channel-ui feature from the Karaf console,
users can administer and manage USC channels from the UI or APIDOCS
explorer.

Go to
`http://${ipaddress}:8181/index.html <http://${ipaddress}:8181/index.html>`__,
sign in, and click on the USC side menu tab. From there, users can view
the state of USC channels.

Go to
`http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__,
sign in, and expand the usc-channel panel. From there, users can execute
various API calls to test their USC deployment such as add-channel,
delete-channel, and view-channel.

Tutorials
---------

Below are tutorials for USC Channel

Viewing USC Channel
~~~~~~~~~~~~~~~~~~~

The purpose of this tutorial is to view USC Channel

Overview
^^^^^^^^

This tutorial walks users through the process of viewing the USC Channel
environment topology including established channels connecting the
controllers and devices in the USC topology.

Prerequisites
^^^^^^^^^^^^^

For this tutorial, we assume that a device running a USC agent is
already installed.

Instructions
^^^^^^^^^^^^

-  Run the OpenDaylight distribution and install odl-usc-channel-ui from
   the Karaf console.

-  Go to
   `http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__

-  Execute add-channel with the following json data:

   -  {"input":{"channel":{"hostname":"127.0.0.1","port":1068,"remote":false}}}

-  Go to
   `http://${ipaddress}:8181/index.html <http://${ipaddress}:8181/index.html>`__

-  Click on the USC side menu tab.

-  The UI should display a table including the added channel from step
   3.

