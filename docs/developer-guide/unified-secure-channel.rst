.. _usc-dev-guide:

Unified Secure Channel
======================

Overview
--------

The Unified Secure Channel (USC) feature provides REST API, manager, and
plugin for unified secure channels. The REST API provides a northbound
api. The manager monitors, maintains, and provides channel related
services. The plugin handles the lifecycle of channels.

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

USC Channel APIs and Interfaces
-------------------------------

This section describes the APIs for interacting with the unified secure
channels.

USC Channel Topology API
~~~~~~~~~~~~~~~~~~~~~~~~

The USC project maintains a topology that is YANG-based in MD-SAL. These
models are available via RESTCONF.

-  Name: view-channel

-  URL:
   `http://${ipaddress}:8181/restconf/operations/usc-channel:view-channel <http://${ipaddress}:8181/restconf/operations/usc-channel:view-channel>`__

-  Description: Views the current state of the USC environment.

API Reference Documentation
---------------------------

Go to
`http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__,
sign in, and expand the usc-channel panel. From there, users can execute
various API calls to test their USC deployment.

