Authentication, Authorization and Accounting (AAA) Services
===========================================================

Overview
--------

Authentication, Authorization and Accounting (AAA) is a term for a
framework controlling access to resources, enforcing policies to use
those resources and auditing their usage. These processes are the
fundamental building blocks for effective network management and security.

Authentication provides a way of identifying a user, typically by
having the user enter a valid user name and valid password before access
is granted. The process of authentication is based on each user having a unique
set of criteria for gaining access. The AAA framework compares a user's
authentication credentials with other user credentials stored in a database.
If the credentials match, the user is granted access to the network.
If the credentials don't match, authentication fails and access is denied.

Authentication is the process of finding out what an authenticated user is
allowed to do within the system, which tasks can do, which API can call, etc.
The authorization process determines whether the user has the authority
to perform such actions.

Accounting is the process of logging the activity of an authenticated user,
for example, the amount of data a user has sent and/or received during a
session, which APIs called, etc.

Terms And Definitions
^^^^^^^^^^^^^^^^^^^^^

AAA
    Authentication, Authorization and Accounting.

Token
    A claim of access to a group of resources on the controller.

Domain
    A group of resources, direct or indirect, physical, logical, or
    virtual, for the purpose of access control.

User
    A person who either owns or has access to a resource or group of
    resources on the controller.

Role
    Opaque representation of a set of permissions, which is merely a
    unique string as admin or guest.

Credential
    Proof of identity such as user name and password, OTP, biometrics, or
    others.

Client
    A service or application that requires access to the controller.

Claim
    A data set of validated assertions regarding a user, e.g. the role,
    domain, name, etc.
Idp
    Identity Provider.
    

Quick Start
-----------

Building
^^^^^^^^
Get the code:

::

    git clone https://git.opendaylight.org/gerrit/aaa
    
Build it:

::

    cd aaa && mvn clean install


Installing
^^^^^^^^^^

AAA is automatically installed upon installation of odl-restconf, but you can
install it yourself directly from the Karaf console through the following
command:

::

    feature:install odl-aaa-shiro


AAA Framework implementations
-----------------------------

Since Boron release, the OpenDaylight's AAA services are based on the
`Apache Shiro <https://shiro.apache.org/>`_ Java Security Framework. The main
configuration file for AAA is located at “etc/shiro.ini” relative to the
OpenDaylight Karaf home directory.

Known limitations
^^^^^^^^^^^^^^^^^

The database (H2) used by ODL AAA Authentication store is not-cluster enabled.
When deployed in a clustered environment each node needs to have its AAA user
file synchronized using out of band means.


How to enable AAA
-----------------

AAA is enabled through installing the odl-aaa-shiro feature. The vast majority
of OpenDaylight's northbound APIs (and all RESTCONF APIs) are protected by AAA
by default when installing the +odl-restconf+ feature, since the odl-aaa-shiro
is automatically installed as part of them.

How to disable AAA
------------------

Edit the “etc/shiro.ini” file and replace the following:

::

    /** = authcBasic

with

::

    /** = anon

Then, restart the Karaf process.

How application developers can leverage AAA to provide servlet security
-----------------------------------------------------------------------

In order to provide security to a servlet, add the following to the
servlet’s web.xml file as the first filter definition:

::

    <context-param>
      <param-name>shiroEnvironmentClass</param-name>
      <param-value>org.opendaylight.aaa.shiro.web.env.KarafIniWebEnvironment</param-value>
    </context-param>

    <listener>
        <listener-class>org.apache.shiro.web.env.EnvironmentLoaderListener</listener-class>
    </listener>

    <filter>
        <filter-name>ShiroFilter</filter-name>
        <filter-class>org.opendaylight.aaa.shiro.filters.AAAShiroFilter</filter-class>
    </filter>

    <filter-mapping>
        <filter-name>AAAShiroFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>

.. note::

    It is very important to place this AAAShiroFilter as the first
    javax.servlet.Filter, as Jersey applies Filters in the order they
    appear within web.xml. Placing the AAAShiroFilter first ensures
    incoming HTTP/HTTPS requests have proper credentials before any
    other filtering is attempted.

AAA Realms
----------

AAA plugin utilizes the Shiro Realms to support pluggable authentication &
authorization schemes. There are two parent types of realms:

-  AuthenticatingRealm

   -  Provides no Authorization capability.

   -  Users authenticated through this type of realm are treated
      equally.

-  AuthorizingRealm

   -  AuthorizingRealm is a more sophisticated AuthenticatingRealm,
      which provides the additional mechanisms to distinguish users
      based on roles.

   -  Useful for applications in which roles determine allowed
      cabilities.

OpenDaylight contains four implementations:

-  TokenAuthRealm

   -  An AuthorizingRealm built to bridge the Shiro-based AAA service
      with the h2-based AAA implementation.

   -  Exposes a RESTful web service to manipulate IdM policy on a
      per-node basis. If identical AAA policy is desired across a
      cluster, the backing data store must be synchronized using an out
      of band method.

   -  A python script located at “etc/idmtool” is included to help
      manipulate data contained in the TokenAuthRealm.

   -  Enabled out of the box. This is the realm configured by default.

-  ODLJndiLdapRealm

   -  An AuthorizingRealm built to extract identity information from IdM
      data contained on an LDAP server.

   -  Extracts group information from LDAP, which is translated into
      OpenDaylight roles.

   -  Useful when federating against an existing LDAP server, in which
      only certain types of users should have certain access privileges.

   -  Disabled out of the box.

-  ODLJndiLdapRealmAuthNOnly

   -  The same as ODLJndiLdapRealm, except without role extraction.
      Thus, all LDAP users have equal authentication and authorization
      rights.

   -  Disabled out of the box.

-  ODLActiveDirectoryRealm

   - Wraps the generic ActiveDirectoryRealm provided by Shiro. This allows for
     enhanced logging as well as isolation of all realms in a single package,
     which enables easier import by consuming servlets.

.. note::

    More than one Realm implementation can be specified. Realms are attempted
    in order until authentication succeeds or all realm sources are exhausted.

Authorization Configuration
---------------------------

Shiro-Based Authorization
^^^^^^^^^^^^^^^^^^^^^^^^^

OpenDaylight AAA has support for Role Based Access Control (RBAC) based
on the Apache Shiro permissions system. Configuration of the authorization
system is done off-line; authorization currently cannot be configured
after the controller is started. Thus, Authorization in this
release is aimed towards supporting coarse-grained security policies,
with the aim to provide more robust configuration capabilities in the
future. `Shiro-based Authorization <http://shiro.apache.org/web.html#Web-%7B%7B%5Curls%5C%7D%7D>`_
describes how to configure the Authentication feature in detail.

Enable “admin” Role Based Access to the IdMLight RESTful web service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Edit the “etc/shiro.ini” configuration file and add “/auth/v1/\**=
authcBasic, roles[admin]” above the line “/\** = authcBasic” within the
“urls” section.

::

    /auth/v1/** = authcBasic, roles[admin]
    /** = authcBasic

This will restrict the idmlight rest endpoints so that a grant for admin
role must be present for the requesting user.

.. note::

    The ordering of the authorization rules above is important!

Accounting Configuration
------------------------

Accounting is handled through the standard slf4j logging mechanisms used by the
rest of OpenDaylight. Thus, one can control logging verbosity through 
manipulating the log levels for individual packages and classes directly through
the Karaf console, JMX, or etc/org.ops4j.pax.logging.cfg. In normal operations,
the default levels exposed do not provide much information about AAA services;
this is due to the fact that logging can severely degrade performance.

All AAA logging is output to the standard karaf.log file. For debugging purposes
(i.e., to enable maximum verbosity), issue the following command:

::

    log:set TRACE org.opendaylight.aaa

Enable Successful/Unsuccessful Authentication Attempts Logging
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

By default, successful/unsuccessful authentication attempts are NOT logged. This
is due to the fact that logging can severely decrease REST performance.
To enable logging of successful/unsuccessful REST attempts, issue the following
command in Karaf's console:

::

    log:set DEBUG org.opendaylight.aaa.shiro.filters.AuthenticationListener

It is possible to add custom AuthenticationListener(s) to the Shiro-based
configuration, allowing different ways to listen for successful/unsuccessful
authentication attempts. Custom AuthenticationListener(s) must implement
the org.apache.shiro.authc.AuthenticationListener interface.
