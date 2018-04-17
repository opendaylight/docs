*******************************
OpenDaylight concepts and tools
*******************************

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

  Features and feature repositories can be managed in the Karaf configuration
  file  ``etc/org.apache.karaf.features.cfg`` using the ``featuresRepositories``
  and ``featuresBoot`` variables.

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
