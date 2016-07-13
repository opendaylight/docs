VTN Installation Guide
======================

Overview
--------

OpenDaylight Virtual Tenant Network (VTN) is an application that provides multi-tenant virtual network on an SDN controller.

Conventionally, huge investment in the network systems and operating expenses are needed because the network is configured as a silo for each department and system. Therefore various network appliances must be installed for each tenant and those boxes cannot be shared with others. It is a heavy work to design, implement and operate the entire complex network.

The uniqueness of VTN is a logical abstraction plane. This enables the complete separation of logical plane from physical plane. Users can design and deploy any desired network without knowing the physical network topology or bandwidth restrictions.

VTN allows the users to define the network with a look and feel of conventional L2/L3 network. Once the network is designed on VTN, it will automatically be mapped into underlying physical network, and then configured on the individual switch leverage SDN control protocol. The definition of logical plane makes it possible not only to hide the complexity of the underlying network but also to better manage network resources. It achieves reducing reconfiguration time of network services and minimizing network configuration errors. OpenDaylight Virtual Tenant Network (VTN) is an application that provides multi-tenant virtual network on an SDN controller. It provides API for creating a common virtual network irrespective of the physical network.

It is implemented as two major components

* :ref:`vtn_manager`
* :ref:`vtn_coordinator`

.. _vtn_manager:

VTN Manager
^^^^^^^^^^^

An OpenDaylight Plugin that interacts with other modules to implement the components of the VTN model. It also provides a REST interface to configure VTN components in OpenDaylight. VTN Manager is implemented as one plugin to the OpenDaylight. This provides a REST interface to create/update/delete VTN components. The user command in VTN Coordinator is translated as REST API to VTN Manager by the OpenDaylight Driver component. In addition to the above mentioned role, it also provides an implementation to the OpenStack L2 Network Functions API.

.. _vtn_coordinator:

VTN Coordinator
^^^^^^^^^^^^^^^

The VTN Coordinator is an external application that provides a REST interface for an user to use OpenDaylight VTN Virtualization. It interacts with VTN Manager plugin to implement the user configuration. It is also capable of multiple OpenDaylight orchestration. It realizes VTN provisioning in OpenDaylight instances. In the OpenDaylight architecture VTN Coordinator is part of the network application, orchestration and services layer. VTN Coordinator will use the REST interface exposed by the VTN Manger to realize the virtual network using OpenDaylight. It uses OpenDaylight APIs (REST) to construct the virtual network in OpenDaylight instances. It provides REST APIs for northbound VTN applications and supports virtual networks spanning across multiple OpenDaylight by coordinating across OpenDaylight.

Preparing for Installation
--------------------------

VTN Manager
^^^^^^^^^^^

Follow the instructions in :ref:`install_odl`.

VTN Coordinator
^^^^^^^^^^^^^^^

#. Arrange a physical/virtual server with any one of the supported 64-bit OS environment.

   * RHEL 7
   * CentOS 7
   * Fedora 20 / 21 / 22

#. Install these packages::

      yum install perl-Digest-SHA uuid libxslt libcurl unixODBC json-c bzip2
      rpm -ivh http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-redhat93-9.3-1.noarch.rpm
      yum install postgresql93-libs postgresql93 postgresql93-server postgresql93-contrib postgresql93-odbc

Installing VTN
--------------

VTN Manager
^^^^^^^^^^^

Install Feature::

   feature:install odl-vtn-manager-neutron odl-vtn-manager-rest

.. note:: The above command will install all features of VTN Manager.
          You can install only REST or Neutron also.

VTN Coordinator
^^^^^^^^^^^^^^^

* Enter into the externalapps directory in the top directory of Beryllium::

     cd distribution-karaf-0.4.0-Beryllium/externalapps

* Run the below command to extract VTN Coordinator from the tar.bz2 file in the externalapps directory::

     tar –C/ -jxvf distribution.vtn-coordinator-6.2.0-Beryllium-bin.tar.bz2

This will install VTN Coordinator to /usr/local/vtn directory.
The name of the tar.bz2 file name varies depending on the version. Please give the same tar.bz2 file name which is there in your directory.

* Configuring database for VTN Coordinator::

     /usr/local/vtn/sbin/db_setup

* To start the Coordinator::

     /usr/local/vtn/bin/vtn_start

Using VTN REST API:

Get the version of VTN REST API using the below command, and make sure the setup is working::

   curl --user admin:adminpass -H 'content-type: application/json' -X GET http://<VTN_COORDINATOR_IP_ADDRESS>:8083/vtn-webapi/api_version.json

The response should be like this, but version might differ::

   {"api_version":{"version":"V1.2"}}

Verifying your Installation
---------------------------

VTN Manager
^^^^^^^^^^^

* In the karaf prompt, type the below command to ensure that vtn packages are installed::

     feature:list | grep vtn

* Run any VTN Manager REST API::

     curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X GET http://localhost:8181/restconf/operational/vtn:vtns

VTN Coordinator
^^^^^^^^^^^^^^^

.. code-block:: shell

   ps –ef | grep unc will list all the vtn apps
   Run any REST API for VTN Coordinator version

Uninstalling VTN
----------------

VTN Manager
^^^^^^^^^^^

.. code-block:: shell

   feature:uninstall odl-vtnmanager-all

VTN Coordinator
^^^^^^^^^^^^^^^

#. Stop VTN::

      /usr/local/vtn/bin/vtn_stop

#. Remove the ``usr/local/vtn`` folder
