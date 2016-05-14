OpenDaylight concepts and tools
===============================

In this section we discuss some of the concepts and tools you encounter with
basic use of OpenDaylight. The guide walks you through the installation process
in a subsequent section, but for now familiarize yourself with the information
below.

* To date, OpenDaylight developers have formed more than 50 projects to address
  ways to extend network functionality. The projects are a formal structure for
  developers from the community to meet, document release plans, code, and
  release the functionality they create in an OpenDaylight release.

  *The typical OpenDaylight user will not join a project team*, but you should
  know what projects are as we refer to their activities and the functionality
  they create. The Karaf features to install that functionality often share the
  project team’s name.

* **Apache Karaf** provides a lightweight runtime to install the Karaf features
  you want to implement and is included in the OpenDaylight platform software.
  By default, OpenDaylight has no pre-installed features.
* After installing OpenDaylight, you install your selected features using the
  Karaf console to expand networking capabilities. In the Karaf feature list
  below are the ones you’re most likely to use when creating your network
  environment.

  As a short example of installing a Karaf feature, OpenDaylight Beryllium
  offers Application Layer Traffic Optimization (ALTO). The Karaf feature to
  install ALTO is odl-alto-all. On the Karaf console, the command to install it
  is:

  feature:install odl-alto-all

* **DLUX** is a web-based interface that OpenDaylight provides for you to manage
  your network. Its Karaf feature installation name is “odl-dlux-core”.

  a. DLUX draws information from OpenDaylight’s topology and host databases to
     display the following information:

     i. The network
     #. Flow statistics
     #. Host locations

  #. To enable the DLUX UI after installing OpenDaylight, run:

     feature:install odl-dlux-core

     on the Karaf console.

* **Network embedded Experience (NeXt)** is a developer toolkit that provides
  tools to draw network-centric topology UI elements that offer visualizations
  of the following:

  a. Large complex network topologies
  #. Aggregated network nodes
  #. Traffic/path/tunnel/group visualizations
  #. Different layout algorithms
  #. Map overlays
  #. Preset user-friendly interactions

  NeXt can work with DLUX to build OpenDaylight applications. Check out the
  NeXt_demo_ for more information on the interface.

* Model-Driven Service Abstraction Layer (MD-SAL) is the OpenDaylight framework
  that allows developers to create new Karaf features in the form of services
  and protocol drivers and connects them to one another. You can think of the
  MD-SAL as having the following two components:

  a. A shared datastore that maintains the following tree-based structures:

    i. The Config Datastore, which maintains a representation of the desired
       network state.
    #. The Operational Datastore, which is a representation of the actual
       network state based on data from the managed network elements.

  b. A message bus that provides a way for the various services and protocol
     drivers to notify and communicate with one another.

* If you’re interacting with OpenDaylight through DLUX or the REST APIs while
  using the the OpenDaylight interfaces, the microservices architecture allows
  you to select available services, protocols, and REST APIs.

.. _NeXt_demo: https://www.youtube.com/watch?v=gBsUDu8aucs
