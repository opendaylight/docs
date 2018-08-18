.. _aaa-user-guide:

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

Authorization is the process of finding out what an authenticated user is
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

Grant
    It is the entity associating a user with his role and domain.

IdP
    Identity Provider.

TLS
    Transport Layer Security

CLI
    Command Line Interface

Security Framework for AAA services
-----------------------------------

Since Boron release, the OpenDaylight's AAA services are based on the
`Apache Shiro <https://shiro.apache.org/>`_ Java Security Framework. The main
configuration file for AAA is located at “etc/shiro.ini” relative to the
OpenDaylight Karaf home directory.


How to enable AAA
-----------------

AAA is enabled through installing the odl-aaa-shiro feature. The vast majority
of OpenDaylight's northbound APIs (and all RESTCONF APIs) are protected by AAA
by default when installing the +odl-restconf+ feature, since the odl-aaa-shiro
is automatically installed as part of them. In the cases that APIs are *not*
protected by AAA, this will be noted in the per-project release notes.

How to disable AAA
------------------

Edit the “etc/shiro.ini” file and replace the following:

::

    /** = authcBasic

with

::

    /** = anon

Then restart the Karaf process.

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
      capabilities.

OpenDaylight contains five implementations:

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

-  KeystoneAuthRealm

   - This realm authenticates OpenDaylight users against the OpenStack’s
     Keystone server.

   - Disabled out of the box.

.. note::

    More than one Realm implementation can be specified. Realms are attempted
    in order until authentication succeeds or all realm sources are exhausted.
    Edit the **securityManager.realms = $tokenAuthRealm** property in shiro.ini
    and add all the realms needed separated by commas.

TokenAuthRealm
^^^^^^^^^^^^^^

How it works
~~~~~~~~~~~~

The TokenAuthRealm is the default Authorization Realm deployed in OpenDaylight.
TokenAuthRealm uses a direct authentication mechanism as shown in the following
picture:

.. figure:: ./images/aaa/direct-authentication.png
   :alt: TokenAuthRealm direct authentication mechanism

   TokenAuthRealm direct authentication mechanism

A user presents some credentials (e.g., username/password) directly to the
OpenDaylight controller token endpoint /oauth2/token and receives an access
token, which then can be used to access protected resources on the controller.

Configuring TokenAuthRealm
~~~~~~~~~~~~~~~~~~~~~~~~~~

The TokenAuthRealm stores IdM data in an h2 database on each node. Thus,
configuration of a cluster currently requires configuring the desired IdM policy
on each node. There are two supported methods to manipulate the TokenAuthRealm
IdM configuration:

-  idmtool configuration tool

-  RESTful Web Service configuration

**Idmtool**
###########

A utility script located at “etc/idmtool” is used to manipulate the
TokenAuthRealm IdM policy. idmtool assumes a single domain, the default one
(sdn), since multiple domains are not supported in the Boron release. General
usage information for idmtool is derived through issuing the following command:

::

    $ python etc/idmtool -h
    usage: idmtool [-h] [--target-host TARGET_HOST]
                   user
                   {list-users,add-user,change-password,delete-user,list-domains,list-roles,add-role,delete-role,add-grant,get-grants,delete-grant}
                   ...

    positional arguments:
      user                  username for BSC node
      {list-users,add-user,change-password,delete-user,list-domains,list-roles,add-role,delete-role,add-grant,get-grants,delete-grant}
                            sub-command help
        list-users          list all users
        add-user            add a user
        change-password     change a password
        delete-user         delete a user
        list-domains        list all domains
        list-roles          list all roles
        add-role            add a role
        delete-role         delete a role
        add-grant           add a grant
        get-grants          get grants for userid on sdn
        delete-grant        delete a grant

    optional arguments:
      -h, --help            show this help message and exit
      --target-host TARGET_HOST
                            target host node

Add a user
''''''''''

::

    python etc/idmtool admin add-user newUser
    Password:
    Enter new password:
    Re-enter password:
    add_user(admin)

    command succeeded!

    json:
    {
        "description": "",
        "domainid": "sdn",
        "email": "",
        "enabled": true,
        "name": "newUser",
        "password": "**********",
        "salt": "**********",
        "userid": "newUser@sdn"
    }

.. note::

    AAA redacts the password and salt fields for security purposes.

Delete a user
'''''''''''''

::

    $ python etc/idmtool admin delete-user newUser@sdn
    Password:
    delete_user(newUser@sdn)

    command succeeded!

List all users
''''''''''''''

::

    $ python etc/idmtool admin list-users
    Password:
    list_users

    command succeeded!

    json:
    {
        "users": [
            {
                "description": "user user",
                "domainid": "sdn",
                "email": "",
                "enabled": true,
                "name": "user",
                "password": "**********",
                "salt": "**********",
                "userid": "user@sdn"
            },
            {
                "description": "admin user",
                "domainid": "sdn",
                "email": "",
                "enabled": true,
                "name": "admin",
                "password": "**********",
                "salt": "**********",
                "userid": "admin@sdn"
            }
        ]
    }

Change a user’s password
''''''''''''''''''''''''

::

    $ python etc/idmtool admin change-password admin@sdn
    Password:
    Enter new password:
    Re-enter password:
    change_password(admin)

    command succeeded!

    json:
    {
        "description": "admin user",
        "domainid": "sdn",
        "email": "",
        "enabled": true,
        "name": "admin",
        "password": "**********",
        "salt": "**********",
        "userid": "admin@sdn"
    }

Add a role
''''''''''

::

    $ python etc/idmtool admin add-role network-admin
    Password:
    add_role(network-admin)

    command succeeded!

    json:
    {
        "description": "",
        "domainid": "sdn",
        "name": "network-admin",
        "roleid": "network-admin@sdn"
    }

Delete a role
'''''''''''''

::

    $ python etc/idmtool admin delete-role network-admin@sdn
    Password:
    delete_role(network-admin@sdn)

    command succeeded!

List all roles
''''''''''''''

::

    $ python etc/idmtool admin list-roles
    Password:
    list_roles

    command succeeded!

    json:
    {
        "roles": [
            {
                "description": "a role for admins",
                "domainid": "sdn",
                "name": "admin",
                "roleid": "admin@sdn"
            },
            {
                "description": "a role for users",
                "domainid": "sdn",
                "name": "user",
                "roleid": "user@sdn"
            }
        ]
    }

List all domains
''''''''''''''''

::

    $ python etc/idmtool admin list-domains
    Password:
    list_domains

    command succeeded!

    json:
    {
        "domains": [
            {
                "description": "default odl sdn domain",
                "domainid": "sdn",
                "enabled": true,
                "name": "sdn"
            }
        ]
    }

Add a grant
'''''''''''

::

    $ python etc/idmtool admin add-grant user@sdn admin@sdn
    Password:
    add_grant(userid=user@sdn,roleid=admin@sdn)

    command succeeded!

    json:
    {
        "domainid": "sdn",
        "grantid": "user@sdn@admin@sdn@sdn",
        "roleid": "admin@sdn",
        "userid": "user@sdn"
    }

Delete a grant
''''''''''''''

::

    $ python etc/idmtool admin delete-grant user@sdn admin@sdn
    Password:
    http://localhost:8181/auth/v1/domains/sdn/users/user@sdn/roles/admin@sdn
    delete_grant(userid=user@sdn,roleid=admin@sdn)

    command succeeded!

Get grants for a user
'''''''''''''''''''''

::

    python etc/idmtool admin get-grants admin@sdn
    Password:
    get_grants(admin@sdn)

    command succeeded!

    json:
    {
        "roles": [
            {
                "description": "a role for users",
                "domainid": "sdn",
                "name": "user",
                "roleid": "user@sdn"
            },
            {
                "description": "a role for admins",
                "domainid": "sdn",
                "name": "admin",
                "roleid": "admin@sdn"
            }
        ]
    }

**Configuration using the RESTful Web Service**
###############################################

The TokenAuthRealm IdM policy is fully configurable through a RESTful
web service. Full documentation for manipulating AAA IdM data is located
online (https://wiki.opendaylight.org/images/0/00/AAA_Test_Plan.docx),
and a few examples are included in this guide:

Get All Users
'''''''''''''

::

    curl -u admin:admin http://localhost:8181/auth/v1/users
    OUTPUT:
    {
        "users": [
            {
                "description": "user user",
                "domainid": "sdn",
                "email": "",
                "enabled": true,
                "name": "user",
                "password": "**********",
                "salt": "**********",
                "userid": "user@sdn"
            },
            {
                "description": "admin user",
                "domainid": "sdn",
                "email": "",
                "enabled": true,
                "name": "admin",
                "password": "**********",
                "salt": "**********",
                "userid": "admin@sdn"
            }
        ]
    }

Create a User
'''''''''''''

::

    curl -u admin:admin -X POST -H "Content-Type: application/json" --data-binary @./user.json http://localhost:8181/auth/v1/users
    PAYLOAD:
    {
        "name": "ryan",
        "userid": "ryan@sdn",
        "password": "ryan",
        "domainid": "sdn",
        "description": "Ryan's User Account",
        "email": "ryandgoulding@gmail.com"
    }

    OUTPUT:
    {
        "userid":"ryan@sdn",
        "name":"ryan",
        "description":"Ryan's User Account",
        "enabled":true,
        "email":"ryandgoulding@gmail.com",
        "password":"**********",
        "salt":"**********",
        "domainid":"sdn"
    }

Create an OAuth2 Token For Admin Scoped to SDN
''''''''''''''''''''''''''''''''''''''''''''''

::

    curl -d 'grant_type=password&username=admin&password=a&scope=sdn' http://localhost:8181/oauth2/token

    OUTPUT:
    {
        "expires_in":3600,
        "token_type":"Bearer",
        "access_token":"5a615fbc-bcad-3759-95f4-ad97e831c730"
    }

Use an OAuth2 Token
'''''''''''''''''''

::

    curl -H "Authorization: Bearer 5a615fbc-bcad-3759-95f4-ad97e831c730" http://localhost:8181/auth/v1/domains
    {
        "domains":
        [
            {
                "domainid":"sdn",
                "name":"sdn”,
                "description":"default odl sdn domain",
                "enabled":true
            }
        ]
    }

**Token Store Configuration Parameters**
########################################

Edit the file “etc/opendaylight/karaf/08-authn-config.xml” and edit the
following: .\ **timeToLive**: Configure the maximum time, in milliseconds,
that tokens are to be cached. Default is 360000. Save the file.

ODLJndiLdapRealm
^^^^^^^^^^^^^^^^

How it works
~~~~~~~~~~~~

LDAP integration is provided in order to externalize identity
management. This configuration allows federation with an external LDAP server.
The user’s OpenDaylight role parameters are mapped to corresponding LDAP
attributes as specified by the groupRolesMap. Thus, an LDAP operator can
provision attributes for LDAP users that support different OpenDaylight role
structures.

Configuring ODLJndiLdapRealm
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To configure LDAP parameters, modify "etc/shiro.ini"
parameters to include the ODLJndiLdapRealm:

::

    # OpenDaylight provides a few LDAP implementations, which are disabled out of the box.
    # ODLJndiLdapRealm includes authorization functionality based on LDAP elements
    # extracted through and LDAP search.  This requires a bit of knowledge about
    # how your LDAP system is setup.  An example is provided below:
    ldapRealm = org.opendaylight.aaa.shiro.realm.ODLJndiLdapRealm
    ldapRealm.userDnTemplate = uid={0},ou=People,dc=DOMAIN,dc=TLD
    ldapRealm.contextFactory.url = ldap://<URL>:389
    ldapRealm.searchBase = dc=DOMAIN,dc=TLD
    ldapRealm.ldapAttributeForComparison = objectClass
    ldapRealm.groupRolesMap = "Person":"admin"
    # ...
    # further down in the file...
    # Stacked realm configuration;  realms are round-robbined until authentication succeeds or realm sources are exhausted.
    securityManager.realms = $tokenAuthRealm, $ldapRealm

ODLJndiLdapRealmAuthNOnly
^^^^^^^^^^^^^^^^^^^^^^^^^

How it works
~~~~~~~~~~~~

This is useful for setups where all LDAP users are allowed equal access.

Configuring ODLJndiLdapRealmAuthNOnly
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Edit the "etc/shiro.ini" file and modify the following:

::

    ldapRealm = org.opendaylight.aaa.shiro.realm.ODLJndiLdapRealm
    ldapRealm.userDnTemplate = uid={0},ou=People,dc=DOMAIN,dc=TLD
    ldapRealm.contextFactory.url = ldap://<URL>:389
    # ...
    # further down in the file...
    # Stacked realm configuration;  realms are round-robbined until authentication succeeds or realm sources are exhausted.
    securityManager.realms = $tokenAuthRealm, $ldapRealm

KeystoneAuthRealm
^^^^^^^^^^^^^^^^^

How it works
~~~~~~~~~~~~

This realm authenticates OpenDaylight users against the OpenStack's Keystone
server. This realm uses the
`Keystone's Identity API v3 <https://developer.openstack.org/api-ref/identity/v3/>`_
or later.

.. figure:: ./images/aaa/keystonerealm-authentication.png
   :alt: KeystoneAuthRealm authentication mechanism

   KeystoneAuthRealm authentication/authorization mechanism

As can shown on the above diagram, once configured, all the RESTCONF APIs calls
will require sending **user**, **password** and optionally **domain** (1). Those
credentials are used to authenticate the call against the Keystone server (2) and,
if the authentication succeeds, the call will proceed to the MDSAL (3). The
credentials must be provisioned in advance within the Keystone Server. The user
and password are mandatory, while the domain is optional, in case it is not
provided within the REST call, the realm will default to (**Default**),
which is hard-coded. The default domain can be also configured through the
*shiro.ini* file (see the :doc:`AAA User Guide <../user-guide/authentication-and-authorization-services>`).

The protocol between the Controller and the Keystone Server (2) can be either
HTTPS or HTTP. In order to use HTTPS the Keystone Server's certificate
must be exported and imported on the Controller (see the :ref:`Certificate Management <certificate-management>` section).

Configuring KeystoneAuthRealm
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Edit the "etc/shiro.ini" file and modify the following:

::

    # The KeystoneAuthRealm allows for authentication/authorization against an
    # OpenStack's Keystone server. It uses the Identity's API v3 or later.
    keystoneAuthRealm = org.opendaylight.aaa.shiro.realm.KeystoneAuthRealm
    # The URL where the Keystone server exposes the Identity's API v3 the URL
    # can be either HTTP or HTTPS and it is mandatory for this realm.
    keystoneAuthRealm.url = https://<host>:<port>
    # Optional parameter to make the realm verify the certificates in case of HTTPS
    #keystoneAuthRealm.sslVerification = true
    # Optional parameter to set up a default domain for requests using credentials
    # without domain, uncomment in case you want a different value from the hard-coded
    # one "Default"
    #keystoneAuthRealm.defaultDomain = Default

Once configured the realm, the mandatory fields are the fully quallified name of
the class implementing the realm *keystoneAuthRealm* and the endpoint where the
Keystone Server is listening *keystoneAuthRealm.url*.

The optional parameter *keystoneAuthRealm.sslVerification* specifies whether the
realm has to verify the SSL certificate or not. The optional parameter
*keystoneAuthRealm.defaultDomain* allows to use a different default domain from
the hard-coded one *"Default"*.

Authorization Configuration
---------------------------

OpenDaylight supports two authorization engines at present, both of which are
roughly similar in behavior:

- Shiro-Based Authorization

- MDSAL-Based Dynamic Authorization

.. note::

    The preferred mechanism for configuring AAA Authentication is the
    MDSAL-Based Dynamic Authorization. Read the following section.

Shiro-Based Static Authorization
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

OpenDaylight AAA has support for Role Based Access Control (RBAC) based
on the Apache Shiro permissions system. Configuration of the authorization
system is done off-line; authorization currently cannot be configured
after the controller is started. The Authorization provided by this mechanism
is aimed towards supporting coarse-grained security policies, the MDSAL-Based
mechanism allows for a more robust configuration capabilities. `Shiro-based
Authorization <http://shiro.apache.org/web.html#Web-%7B%7B%5Curls%5C%7D%7D>`_
describes how to configure the Authentication feature in detail.

.. note::

    The Shiro-Based Authorization that uses the *shiro.ini* URLs section to
    define roles requirements is **deprecated** and **discouraged** since the
    changes made to the file are only honored on a controller restart.

    Shiro-Based Authorization is not **cluster-aware**, so the changes made on
    the *shiro.ini* file have to be replicated on every controller instance
    belonging to the cluster.

    The URL patterns are matched relative to the Servlet context leaving room
    for ambiguity, since many endpoints may match (i.e., "/restconf/modules" and
    "/auth/modules" would both match a "/modules/\**" rule).

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

MDSAL-Based Dynamic Authorization
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The MDSAL-Based Dynamic authorization uses the MDSALDynamicAuthorizationFilter
engine to restrict access to particular URL endpoint patterns. Users may define
a list of policies that are insertion-ordered. Order matters for that list of
policies, since the first matching policy is applied. This choice was made to
emulate behavior of the Shiro-Based Authorization mechanism.

A **policy** is a key/value pair, where the key is a **resource**
(i.e., a "URL pattern") and the value is a list of **permissions** for the
resource. The following describes the various elements of a policy:

- **Resource**: the resource is a string URL pattern as outlined by
  Apache Shiro. For more information, see http://shiro.apache.org/web.html.

- **Description**: an optional description of the URL endpoint and why it is
  being secured.

- **Permissions list**: a list of permissions for a particular policy. If more
  than one permission exists in the permissions list they are evaluated using
  logical "OR". A permission describes the prerequisites to perform HTTP
  operations on a particular endpoint. The following describes the various
  elements of a permission:

  + **Role**: the role required to access the target URL endpoint.
  + **Actions list**: a leaf-list of HTTP permissions that are allowed for a
    Subject possessing the required role.

This an example on how to limit access to the modules endpoint:

::

    HTTP Operation:
    put URL: /restconf/config/aaa:http-authorization/policies

    headers: Content-Type: application/json Accept: application/json

    body:
      { "aaa:policies":
        { "aaa:policies":
          [ { "aaa:resource": "/restconf/modules/**",
            "aaa:permissions": [ { "aaa:role": "admin",
                                   "aaa:actions": [ "get",
                                                    "post",
                                                    "put",
                                                    "patch",
                                                    "delete"
                                                  ]
                                 }
                               ]
            }
          ]
        }
      }

The above example locks down access to the modules endpoint (and any URLS
available past modules) to the "admin" role. Thus, an attempt from the OOB
*admin* user will succeed with 2XX HTTP status code, while an attempt from the
OOB *user* user will fail with HTTP status code 401, as the user *user* is not
granted the "admin" role.

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

.. _certificate-management:

Certificate Management
----------------------

The **Certificate Management Service** is used to manage the keystores and
certificates at the OpenDaylight distribution to easily provides the TLS
communication.

The Certificate Management Service managing two keystores:

1. **OpenDaylight Keystore** which holds the OpenDaylight distribution
   certificate self sign certificate or signed certificate from a root CA based
   on generated certificate request.

2. **Trust Keystore** which holds all the network nodes certificates that shall
   to communicate with the OpenDaylight distribution through TLS communication.

The Certificate Management Service stores the keystores (OpenDaylight & Trust)
as *.jks* files under configuration/ssl/ directory. Also the keystores
could be stored at the MD-SAL datastore in case OpenDaylight distribution
running at cluster environment. When the keystores are stored at MD-SAL,
the Certificate Management Service rely on the **Encryption-Service** to encrypt
the keystore data before storing it to MD-SAL and decrypted at runtime.

How to use the Certificate Management Service to manage the TLS communication
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following are the steps to configure the TLS communication:

1. After starting the distribution, the *odl-aaa-cert* feature has to get
installed. Use the following command at Karaf CLI to check.

.. code-block:: bash

  opendaylight-user@root>feature:list -i | grep aaa-cert
  odl-aaa-cert | 0.5.0-SNAPSHOT | x | odl-aaa-0.5.0-SNAPSHOT | OpenDaylight :: AAA :: aaa certificate Service

2. The initial configuration of the Certificate Manager Service exists under
the distribution directory etc/opendaylight/datastore/initial/config/aaa-cert-config.xml.

.. code-block:: xml

  <aaa-cert-service-config xmlns="urn:opendaylight:yang:aaa:cert">
    <use-config>false</use-config>
    <use-mdsal>false</use-mdsal>
    <bundle-name>opendaylight</bundle-name>
    <ctlKeystore>
      <name>ctl.jks</name>
      <alias>controller</alias>
      <store-password/>
      <dname>CN=ODL, OU=Dev, O=LinuxFoundation, L=QC Montreal, C=CA</dname>
      <validity>365</validity>
      <key-alg>RSA</key-alg>
      <sign-alg>SHA1WithRSAEncryption</sign-alg>
       <keysize>1024</keysize>
       <cipher-suites>
         <suite-name />
       </cipher-suites>
    </ctlKeystore>
    <trustKeystore>
      <name>truststore.jks</name>
      <store-password/>
    </trustKeystore>
  </aaa-cert-service-config>


Now as it is explained above, the Certificate Manager Service support two mode
of operations; cluster mode and single mode. To use the single mode change the
use-config to true and it is recommended as long as there is no need for
cluster environment. To use the cluster mode change the use-config and
use-mdsal configurations to true and the keystores will be stored and shard
across the cluster nodes within the MD-SAL datastore.

The initial password become randomly generated when the *aaa-cert* feature is
installed.

The cipher suites can be restricted by changing the **<cipher-suites>**
configuration, however, the JDK has to be upgraded by installing the `Java
Cryptography Extension
<http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html>`_
policy.

.. code-block:: xml

  <cipher-suites>
    <suite-name>TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384</suite-name>
  </cipher-suites>
    <cipher-suites>
  <suite-name>TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384</suite-name>
    </cipher-suites>
  <cipher-suites>
    <suite-name>TLS_DHE_RSA_WITH_AES_256_GCM_SHA384</suite-name>
  </cipher-suites>

3. The new configurations will take affect after restarting the distribution.

4. Now to add or get certificate to the OpenDaylight and Trust keystores, the
Certificate Manager Service provides the following RPCs.

::

  a) Set the node certificate that will communicate with OpeDaylight through TLS
  connection.
  POST /operations/aaa-cert-rpc:setNodeCertifcate
  {
    "input": {
      "node-cert": "string",
      "node-alias": "string"
    }
  }

::

  b) Get the node certificate based on node alias.
  POST /operations/aaa-cert-rpc:getNodeCertifcate
  {
    "input": {
      "node-alias": "string"
    }
  }

::

  c) Get the OpeDaylight keystore certificate.
  POST /operations/aaa-cert-rpc:getODLCertificate
  {
    output {
      odl-cert "string"
    }
  }

::

  d) Generate a certificate request from the OpeDaylight keystore to be signed
  by a CA.
  POST /operations/aaa-cert-rpc:getODLCertificateReq
  {
    output {
      odl-cert-req "string"
    }
  }

::

  e) Set the OpeDaylight certificate, the certificate should be generated
  based on a certificate request generated from the ODL keystore otherwise the
  certificated will not be added.
  POST /operations/aaa-cert-rpc:setODLCertificate
  {
    "input": {
      "odl-cert-alias": "string",
      "odl-cert": "string"
    }
  }

.. note::

  The Certificate Manager Service RPCs are allowed only to the Role Admin Users
  and it could be completely disabled through the shiro.ini config file. Check
  the URL section at the shiro.ini.

Encryption Service
------------------

The **AAA Encryption Service** is used to encrypt the OpenDaylight's users'
passwords and TLS communication certificates. This section shows how to use the
AAA Encryption Service with an OpenDaylight distribution project to encrypt data.

The following are the steps to configure the Encryption Service:

1. After starting the distribution, the *aaa-encryption-service* feature has to
   get installed. Use the following command at Karaf CLI to check.

   .. code-block:: bash

      opendaylight-user@root>feature:list -i | grep aaa-encryption-service
      odl-aaa-encryption-service | 0.5.0-SNAPSHOT | x | odl-aaa-0.5.0-SNAPSHOT | OpenDaylight :: AAA :: Encryption Service

2. The initial configuration of the Encryption Service exists under the
   distribution directory etc/opendaylight/datastore/initial/config/aaa-encrypt-service-config.xml

   .. code-block:: xml

      <aaa-encrypt-service-config xmlns="config:aaa:authn:encrypt:service:config">
        <encrypt-key/>
        <encrypt-salt/>
        <encrypt-method>PBKDF2WithHmacSHA1</encrypt-method>
        <encrypt-type>AES</encrypt-type>
        <encrypt-iteration-count>32768</encrypt-iteration-count>
        <encrypt-key-length>128</encrypt-key-length>
        <cipher-transforms>AES/CBC/PKCS5Padding</cipher-transforms>
      </aaa-encrypt-service-config>

   .. note::

      Both the initial encryption key and encryption salt become randomly generated
      when the *aaa-encryption-service* feature is installed.

3. Finally the new configurations will take affect after restarting the
   distribution.

Using the AAA Command Line Interface (CLI)
------------------------------------------
The AAA offers a CLI through the Karaf's console. This CLI allows the user to
configure and use some of the functionalities provided by AAA.

The AAA CLI exists under the **odl-aaa-cli** feature. This feature can be
installed by executing the following command.

::

  feature:install odl-aaa-cli

To check that the installation of the feature succeeded type "aaa" and press
*tab* to see the list of available commands under the *aaa* scope.

::

  opendaylight-user@root>aaa:
  aaa:add-domain           aaa:add-grant            aaa:add-role             aaa:add-user
  aaa:change-user-pwd      aaa:export-keystores     aaa:gen-cert-req         aaa:get-cipher-suites
  aaa:get-domains          aaa:get-node-cert        aaa:get-odl-cert         aaa:get-roles
  aaa:get-tls-protocols    aaa:get-users            aaa:import-keystores     aaa:remove-domain
  aaa:remove-grant         aaa:remove-role          aaa:remove-user

Add a User
^^^^^^^^^^

The *add-user* command allows for adding an OpenDaylight user. The following
user parameters can be specified.

::

  aaa:add-user --name <user name>
               --roleName <role>
               --userDescription <user description>
               --email <user email>
               --domainName <domain name>

List available Users
^^^^^^^^^^^^^^^^^^^^

The *get-users* command list all the available users within the Controller.

::

  aaa:get-users

    user
    admin

Remove a User
^^^^^^^^^^^^^

The *remove-user* command allows for removing an OpenDaylight user. The command
needs the user name as parameter.

::

  aaa:remove-user --name <user name>

Change the OpenDaylight user password
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The *change-user-pwd* command allows for changing the OpenDaylight user's
password. It takes the user name as argument then will ask for the given user
current password.

::

  aaa:change-user-pwd -user admin
    Enter current password:
    Enter new password:
    admin's password has been changed

Add a Role
^^^^^^^^^^

The *add-role* command allows for adding a role to the Controller.

::

  aaa:add-role --name <role name>
               --desc <role description>
               --domainName <domain name>

List available Roles
^^^^^^^^^^^^^^^^^^^^

The *get-roles* command list all the available roles within the controller.

::

  aaa:get-roles

    user
    admin

Remove a Role
^^^^^^^^^^^^^

The *remove-role* command allows for removing an OpenDaylight role. The command
needs the role name as parameter.  The role will be removed from those users who
have it.

::

  aaa:remove-role --name <role name>

Add a Domain
^^^^^^^^^^^^

The *add-domain* command allows for adding a domain to the Controller.

::

  aaa:add-domain --name <domain name>
                 --desc <domain description>

List available Domains
^^^^^^^^^^^^^^^^^^^^^^

The *get-domains* command list all the available domains within the controller.
The system asks for the administrator credentials to execute this command.

::

  aaa:get-domains

    sdn

Remove a Domain
^^^^^^^^^^^^^^^

The *remove-domain* command allows for removing an OpenDaylight role. The command
needs the domain name as parameter.

::

  aaa:remove-domain --name <domain name>

Add a Grant
^^^^^^^^^^^

The *add-grant* command allows for creating a grant for an existing user. The
command returns a grant id for that user.

::

  aaa:add-grant --userName <user name>
                --domainName <domain name>
                --roleName <role name>

Remove a Grant
^^^^^^^^^^^^^^

The *remove-grant* command allows for removing an OpenDaylight grant. This command
needs the user name, domain and and role as parameters.

::

  aaa:remove-grant --userName <user name>
                   --domainName <domain name>
                   --roleName <role name>

Generate Certificate Request
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Generate certificate request command will generate a certificate request based
on the generated OpenDaylight keystore and print it on the Karaf CLI. The system
asks for the keystore password.

::

  aaa:gen-cert-req

  -----BEGIN CERTIFICATE REQUEST-----
  MIIBlzCCAQACAQAwWTELMAkGA1UEBhMCQ0ExFDASBgNVBAcMC1FDIE1vbnRyZWFsMRgwFgYDVQQKDA
  9MaW51eEZvdW5kYXRpb24xDDAKBgNVBAsMA0RldjEMMAoGA1UEAwwDT0RMMIGfMA0GCSqGSIb3DQEB
  AQUAA4GNADCBiQKBgQCCmLW6j+JLYJM5yAMwscw/CHqPnp5elPa1YtQsHKEAvp1I+mLVtHKZeXeteA
  kyp6ORxw6KQ515fcDyQVrRJiSM15jUd27UaFq5ku0+qJeG+Qh2btx+cvNSE7/+cgUWWosKz4Aff5F5
  FqR62jLUTNzqCvoaTbZaOnLYVq+O2dYyZwIDAQABMA0GCSqGSIb3DQEBBQUAA4GBADhDr4Jm7gVm/o
  p861/FShyw1ZZscxOEl2TprJZiTO6sn3sLptQZv8v52Z+Jm5dAgr7L46c97Xfa+0j6Y4LXNb0f88lL
  RG8PxGbk6Tqbjqc0WS+U1Ibc/rcPK4HEN/bcYCn+Na1gLBaFXUPg08ozG6MwqFNeS5Z0jz1W0D9/oiao
  -----END CERTIFICATE REQUEST-----

Get OpenDaylight Certificate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The *get-odl-certificate* command will print the OpenDaylight certificate at the
Karaf CLI. The system asks for the keystore password.

::

  aaa:get-odl-cert -storepass <store_password>

  -----BEGIN CERTIFICATE-----
  MIICKTCCAZKgAwIBAgIEI75RWDANBgkqhkiG9w0BAQUFADBZMQwwCgYDVQQDDANPREwxDDAKBgNVBA
  sMA0RldjEYMBYGA1UECgwPTGludXhGb3VuZGF0aW9uMRQwEgYDVQQHDAtRQyBNb250cmVhbDELMAkG
  A1UEBhMCQ0EwHhcNMTYxMTMwMTYyNDE3WhcNMTcxMTMwMTYyNDE3WjBZMQwwCgYDVQQDDANPREwxDD
  AKBgNVBAsMA0RldjEYMBYGA1UECgwPTGludXhGb3VuZGF0aW9uMRQwEgYDVQQHDAtRQyBNb250cmVh
  bDELMAkGA1UEBhMCQ0EwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAIKYtbqP4ktgkznIAzCxzD
  8Ieo+enl6U9rVi1CwcoQC+nUj6YtW0cpl5d614CTKno5HHDopDnXl9wPJBWtEmJIzXmNR3btRoWrmS
  7T6ol4b5CHZu3H5y81ITv/5yBRZaiwrPgB9/kXkWpHraMtRM3OoK+hpNtlo6cthWr47Z1jJnAgMBAA
  EwDQYJKoZIhvcNAQEFBQADgYEAL9DK/P/yEBre3Mg3bICAUAvSvZic+ydDmigWLsY4J3UzKdV2f1jI
  s+rQTEgtlHShBf/ed546D49cp3XEzYrcxgILhGXDziCrUK0K1TiYqPTp6FLijjdydGlPpwuMyyV5Y0
  iDiRclWuPz2fHbs8WQOWNs6VQ+WaREXtEsEC4qgSo=
  -----END CERTIFICATE-----

Get Cipher Suites
^^^^^^^^^^^^^^^^^

The *get-cipher-suites* command shows the cipher suites supported by the
JVM used by the OpenDaylight controller in TLS communication. For example, here
are the `Default Ciphers Suites in JDK 8 <http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites>`_.

::

  aaa:get-cipher-suites

    TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
    TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
    TLS_DHE_RSA_WITH_AES_256_GCM_SHA384

Get TLS Protocols
^^^^^^^^^^^^^^^^^

The *get-tls-protocols* command shows the TLS protocols supported by the
JVM used by the OpenDaylight controller. For example, the JDK 8 supports the
following TLS protocols: TLSv1.2 (default), TLSv1.1, TLSv1 and SSLv3.

::

  aaa:get-tls-protocols

    TLS_KRB5_WITH_RC4_128_SHA
    TLS_KRB5_WITH_RC4_128_MD5
    TLS_KRB5_WITH_3DES_EDE_CBC_SHA
    TLS_KRB5_WITH_3DES_EDE_CBC_MD5
    TLS_KRB5_WITH_DES_CBC_SHA

Get Node Certificate
^^^^^^^^^^^^^^^^^^^^

The *get-node-cert* command prints a certificate for a given network node alias.
This command is useful to check if the network node certificate has been added
properly to the truest keystore. It takes the certificate alias as arguments.

::

  aaa:get-node-cert -alias ovs1
  -----BEGIN CERTIFICATE-----
  MIICKTCCAZKgAwIBAgIEI75RWDANBgkqhkiG9w0BAQUFADBZMQwwCgYDVQQDDANPREwxDDAKBgNVBA
  sMA0RldjEYMBYGA1UECgwPTGludXhGb3VuZGF0aW9uMRQwEgYDVQQHDAtRQyBNb250cmVhbDELMAkG
  A1UEBhMCQ0EwHhcNMTYxMTMwMTYyNDE3WhcNMTcxMTMwMTYyNDE3WjBZMQwwCgYDVQQDDANPREwxDD
  AKBgNVBAsMA0RldjEYMBYGA1UECgwPTGludXhGb3VuZGF0aW9uMRQwEgYDVQQHDAtRQyBNb250cmVh
  bDELMAkGA1UEBhMCQ0EwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAIKYtbqP4ktgkznIAzCxzD
  8Ieo+enl6U9rVi1CwcoQC+nUj6YtW0cpl5d614CTKno5HHDopDnXl9wPJBWtEmJIzXmNR3btRoWrmS
  7T6ol4b5CHZu3H5y81ITv/5yBRZaiwrPgB9/kXkWpHraMtRM3OoK+hpNtlo6cthWr47Z1jJnAgMBAA
  EwDQYJKoZIhvcNAQEFBQADgYEAL9DK/P/yEBre3Mg3bICAUAvSvZic+ydDmigWLsY4J3UzKdV2f1jI
  s+rQTEgtlHShBf/ed546D49cp3XEzYrcxgILhGXDziCrUK0K1TiYqPTp6FLijjdydGlPpwuMyyV5Y0
  iDiRclWuPz2fHbs8WQOWNs6VQ+WaREXtEsEC4qgSo=
  -----END CERTIFICATE-----

Export Keystores
^^^^^^^^^^^^^^^^

The *export-keystores* command exports the default MD-SAL Keystores to .jks
files in the default directory for keystores (configuration/ssl/).

::

  aaa:export-keystores

    Default directory for keystores is configuration/ssl/

Import Keystores
^^^^^^^^^^^^^^^^

The *import-keystores* command imports the default MD-SAL Keystores. The
keystores (odl and trust) should exist under default SSL directory
(configuration/ssl/).

.. code-block:: bash

  aaa:import-keystores --trustKeystoreName <name of the trust keystore>
                       --trustKeystorePwd <password for the trust keystore>
                       --odlKeystoreName <name of the ODL keystore>
                       --odlKeystorePwd <password for the ODL keystore>
                       --odlKeystoreAlias <alias of the ODL keystore>
                       --tlsProtocols <list of TLS protocols separated by ','>
                       --cipherSuites <list of Cipher suites separated by ','>

.. warning::

  It is strongly recommended to run the history clear command after you execute
  all the AAA CLI commands so Karaf logs stay clean from any adversary.

  ::

    history -c
