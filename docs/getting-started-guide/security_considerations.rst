.. _security_considerations:

***********************
Security Considerations
***********************

This document discusses the various security issues that might affect
OpenDaylight. The document also lists specific recommendations to
mitigate security risks.

This document also contains information about the corrective steps
you can take if you discover a security issue with
OpenDaylight, and if necessary, contact the Security Response Team,
which is tasked with identifying and resolving security threats.

Overview of OpenDaylight Security
=================================

There are many different kinds of security vulnerabilities that could affect
an OpenDaylight deployment, but this guide focuses on those where (a) the
servers, virtual machines or other devices running OpenDaylight have been
properly physically (or virtually in the case of VMs) secured against untrusted
individuals and (b) individuals who have access, either via remote logins or
physically, will not attempt to attack or subvert the deployment intentionally
or otherwise.

While those attack vectors are real, they are out of the scope of this
document.

What remains in scope is attacks launched from a server, virtual machine, or
device other than the one running OpenDaylight where the attack does not have
valid credentials to access the OpenDaylight deployment.

The rest of this document gives specific recommendations for deploying
OpenDaylight in a secure manner, but first we highlight some high-level
security advantages of OpenDaylight.

* Separating the control and management planes from the data plane (both
  logically and, in many cases, physically) allows possible security threats to
  be forced into a smaller attack surface.

* Having centralized information and network control gives network
  administrators more visibility and control over the entire network, enabling
  them to make better decisions faster. At the same time,
  centralization of network control can be an advantage only if access to that
  control is secure.

  .. note:: While both previous advantages improve security, they also make
            an OpenDaylight deployment an attractive target for attack making
            understanding these security considerations even more important.

* The ability to more rapidly evolve southbound protocols and how they are used
  provides more and faster mechanisms to enact appropriate security mitigations
  and remediations.

* OpenDaylight is built from OSGi bundles and the Karaf Java container. Both
  Karaf and OSGi provide some level of isolation with explicit code boundaries,
  package imports, package exports, and other security-related features.

* OpenDaylight has a history of rapidly addressing known vulnerabilities and
  a well-defined process for reporting and dealing with them.

OpenDaylight Security Resources
===============================

* If you have any security issues, you can send a mail to
  *security@lists.opendaylight.org*.

* For the list of current OpenDaylight security issues that are either being
  fixed or resolved, refer to
  https://wiki-archive.opendaylight.org/view/Security:Advisories.

* To learn more about the OpenDaylight security issues policies and procedure,
  refer to https://wiki-archive.opendaylight.org/view/Security:Main

.. _security_deployment_recommendations:

Deployment Recommendations
==========================

We recommend that you follow the deployment guidelines in setting up
OpenDaylight to minimize security threats.

* The default credentials should be changed before deploying OpenDaylight.

* OpenDaylight should be deployed in a private network that cannot be accessed
  from the internet.

* Separate the data network (that connects devices using the network) from the
  management network (that connects the network devices to OpenDaylight).

  .. note:: Deploying OpenDaylight on a separate, private management network does not
            eliminate threats, but only mitigates them. By construction, some
            messages must flow from the data network to the management network, e.g.,
            OpenFlow *packet_in* messages, and these create an attack surface even if
            it is a small one.

* Implement an authentication policy for devices that connect to both the data
  and management network. These are the devices which bridge, likely untrusted,
  traffic from the data network to the management network.

Securing OSGi bundles
=====================

OSGi is a Java-specific framework that improves the way that Java classes
interact within a single JVM. It provides an enhanced version of the
*java.lang.SecurityManager* (ConditionalPermissionAdmin) in terms of security.

Java provides a security framework that allows a security policy to grant
permissions, such as reading a file or opening a network connection, to
specific code. The code maybe classes from the jarfile loaded from a specific
URL, or a class signed by a specific key. OSGi builds on the standard Java
security model to add the following features:

* A set of OSGi-specific permission types, such as one that grants the right
  to register an OSGi service or get an OSGi service from the service registry.

* The ability to dynamically modify permissions at run-time. This includes the
  ability to specify permissions by using code rather than a text configuration
  file.

* A flexible predicate-based approach to determining which rules are
  applicable to which *ProtectionDomain*. This approach is much more powerful
  than the standard Java security policy which can only grant rights based on a
  jarfile URL or class signature. A few standard predicates are provided,
  including selecting rules based upon bundle symbolic-name.

* Support for bundle *local permissions* policies with optional further
  constraints such as *DENY* operations. Most of this functionality is accessed
  by using the *OSGi ConditionalPermissionAdmin* service which is part of the
  OSGi core and can be obtained from the OSGi service registry. The
  *ConditionalPermissionAdmin* API replaces the earlier *PermissionAdmin* API.

For more information, refer to https://www.osgi.org

.. _securing-karaf:

Securing the Karaf container
============================

Apache Karaf is a OSGi-based run-time platform which provides a lightweight
container for OpenDaylight and applications. Apache Karaf uses
either Apache Felix Framework or Eclipse Equinox OSGi frameworks, and provide
additional features on top of the framework.

Apache Karaf provides a security framework based on Java Authentication and
Authorization Service (JAAS) in compliance with OSGi recommendations,
while providing RBAC (Role-Based Access Control) mechanism for the console and
Java Management Extensions (JMX).

The Apache Karaf security framework is used internally to control the access
to the following components:

* OSGi services

* console commands

* JMX layer

* WebConsole

The remote management capabilities are present in Apache Karaf by default,
however they can be disabled by using various configuration alterations. These
configuration options may be applied to the OpenDaylight Karaf distribution.

.. note:: Refer to the following list of publications for more information on
          implementing security for the Karaf container.

* For role-based JMX administration, refer to
  https://karaf.apache.org/manual/latest/#_monitoring_and_management_using_jmx

* For remote SSH access configuration, refer to
  https://karaf.apache.org/manual/latest/#_remote

* For WebConsole access, refer to
  https://karaf.apache.org/manual/latest/#_webconsole

* For Karaf security features, refer to
  https://karaf.apache.org/manual/latest/#_security

Disabling the remote shutdown port
----------------------------------

You can lock down your deployment post installation. Set
``karaf.shutdown.port=-1`` in ``etc/custom.properties`` to
disable the remote shutdown port.

Securing Southbound Plugins
===========================

Many individual southbound plugins provide mechanisms to secure their
communication with network devices. For example, the OpenFlow plugin supports
TLS connections with bi-directional authentication and the NETCONF plugin
supports connecting over SSH. Meanwhile, the Unified Secure Channel plugin
provides a way to form secure, remote connections for supported devices.

When deploying OpenDaylight, you should carefully investigate the secure
mechanisms to connect to devices using the relevant plugins.

Securing OpenDaylight using AAA
===============================

AAA stands for Authentication, Authorization, and Accounting.
All three of these services can help improve the security posture of an
OpenDaylight deployment.

The vast majority of OpenDaylight's northbound APIs (and all RESTCONF APIs) are
protected by AAA by default when installing the ``+odl-restconf+`` feature.
In the cases that APIs are *not* protected by AAA, this will be noted in the
per-project release notes.

By default, OpenDaylight has only one user account with the username and
password *admin*. This should be changed before deploying OpenDaylight.

Securing RESTCONF using HTTPS
=============================

Jetty
-----

To secure Jetty RESTful services, including RESTCONF, you must configure the
Jetty server to utilize SSL by performing the following steps.

#. Issue the following command sequence to create a self-signed certificate in the ``etc`` folder for
   use by the ODL deployment.

   ::

        keytool -keystore .keystore -alias jetty -genkey -keyalg RSA
         Enter keystore password:  123456
        What is your first and last name?
          [Unknown]:  odl
        What is the name of your organizational unit?
          [Unknown]:  odl
        What is the name of your organization?
          [Unknown]:  odl
        What is the name of your City or Locality?
          [Unknown]:
        What is the name of your State or Province?
          [Unknown]:
        What is the two-letter country code for this unit?
          [Unknown]:
        Is CN=odl, OU=odl, O=odl,
        L=Unknown, ST=Unknown, C=Unknown correct?
          [no]:  yes


#.  After the key has been obtained, make the following changes to
    the ``etc/org.ops4j.pax.web.cfg`` file to set a few default properties.

    ::

        org.osgi.service.http.secure.enabled=true
        org.osgi.service.http.port.secure=8443
        org.ops4j.pax.web.ssl.keystore=./etc/.keystore
        org.ops4j.pax.web.ssl.keystore.password=123456
        org.ops4j.pax.web.ssl.keystore.type=PKCS12
        org.ops4j.pax.web.ssl.key.password=123456
        org.ops4j.pax.web.ssl.key.alias=jetty


You can test that the changes have succeeded by restarting Karaf,
issuing the following ``curl`` command, and ensuring that the 2XX HTTP status
code appears in the returned message.

::

        curl -u admin:admin -v -k https://localhost:8443/rests/operations

A more advanced example of Jetty security configuration can be found in this article:
https://access.redhat.com/documentation/en-us/red_hat_jboss_fuse/6.3/html/security_guide/webconsole#idm139646384633952

Netty
-----

To secure Netty RESTful services, including RESTCONF, you must configure the
Netty server. To enable HTTPS, you must configure private key and a X509 certificate.

The following example shows how to configure the Netty server.

1. Create Certificate and Private Key.

    ::

        openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 3650 -nodes -subj "/C=SK/ST=State/L=City/O=Company/OU=Dev/CN=common"


2. Copy the certificate and private key to the karaf's etc/tls folder.

    ::
        mkdir {karaf-directory}/etc/tls
        cp key.pem {karaf-directory}/etc/tls/key.pem
        cp cert.pem {karaf-directory}/etc/tls/cert.pem


3. Configure the Netty server to use the certificate and private key in running karaf.

    ::

        feature:install odl-restconf-nb
        config:edit org.opendaylight.restconf.nb.rfc8040
        config:property-set bind-port 8443
        config:property-set tls-certificate "etc/tls/cert.pem"
        config:property-set tls-private-key "etc/tls/key.pem"
        config:update


4. Access the RESTCONF API using HTTPS.

    ::

        curl -u admin:admin -v -k https://localhost:8443/rests/operations

Security Considerations for Clustering
======================================

While OpenDaylight clustering provides many benefits including high
availability, scale-out performance, and data durability, it also opens a new
attack surface in the form of the messages exchanged between the various
instances of OpenDaylight in the cluster. In the current OpenDaylight release,
these messages are neither encrypted nor authenticated meaning that anyone with
access to the management network where OpenDaylight exchanges these clustering
messages can forge and/or read the messages. This means that if clustering is
enabled, it is even more important that the management network be kept secure
from any untrusted entities.
