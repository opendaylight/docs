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
    

TokenAuthRealm Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The TokenAuthRealm is the default Authorization Realm deployed in OpenDaylight.
TokenAuthRealm stores IdM data in an h2 database on each node. Thus, 
configuration of a cluster currently requires configuring the desired IdM policy
on each node. There are two supported methods to manipulate the TokenAuthRealm
IdM configuration:

-  idmtool configuration tool

-  RESTful Web Service configuration

TokenAuthRealm Configuration using the idmtool
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A utility script located at “etc/idmtool” is used to manipulate the
TokenAuthRealm IdM policy. idmtool assumes a single domain, the default one (sdn),
since multiple domains are not supported in the Boron release. General usage
information for idmtool is derived through issuing the following command:

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

TokenAuthRealm configuration using the RESTful Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

ODLJndiLdapRealm Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

LDAP integration is provided in order to externalize identity
management. To configure LDAP parameters, modify "etc/shiro.ini"
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

This configuration allows federation with an external LDAP server, and
the user’s OpenDaylight role parameters are mapped to corresponding LDAP
attributes as specified by the groupRolesMap. Thus, an LDAP operator can
provision attributes for LDAP users that support different OpenDaylight role
structures.

ODLJndiLdapRealmAuthNOnly Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Edit the "etc/shiro.ini" file and modify the following:

::

    ldapRealm = org.opendaylight.aaa.shiro.realm.ODLJndiLdapRealm
    ldapRealm.userDnTemplate = uid={0},ou=People,dc=DOMAIN,dc=TLD
    ldapRealm.contextFactory.url = ldap://<URL>:389
    # ...
    # further down in the file...
    # Stacked realm configuration;  realms are round-robbined until authentication succeeds or realm sources are exhausted.
    securityManager.realms = $tokenAuthRealm, $ldapRealm

This is useful for setups where all LDAP users are allowed equal access.

Token Store Configuration Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Edit the file “etc/opendaylight/karaf/08-authn-config.xml” and edit the
following: .\ **timeToLive**: Configure the maximum time, in
milliseconds, that tokens are to be cached. Default is 360000. Save the
file.

Authorization Configuration
---------------------------

Shiro-Based Authorization
^^^^^^^^^^^^^^^^^^^^^^^^^

OpenDaylight AAA has support for Role Based Access Control based on the
Apache Shiro permissions system. Configuration of the authorization
system is done offline; authorization currently cannot be configured
after the controller is started. Thus, Authorization in this
release is aimed towards supporting coarse-grained security policies,
with the aim to provide more robust configuration capabilities in the
future. Shiro-based Authorization is documented on the Apache Shiro
website (http://shiro.apache.org/web.html#Web-%7B%7B%5Curls%5C%7D%7D).

Enable “admin” Role Based Access to the IdMLight RESTful web service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Edit the “etc/shiro.ini” configuration file and add “/auth/v1/\ **=
authcBasic, roles[admin]” above the line “/** = authcBasic” within the
“urls” section.

::

    /auth/v1/** = authcBasic, roles[admin]
    /** = authcBasic

This will restrict the idmlight rest endpoints so that a grant for admin
role must be present for the requesting user.

.. note::

    The ordering of the authorization rules above is important!

AuthZ Broker Facade
^^^^^^^^^^^^^^^^^^^

OpenDaylight includes an experimental Authorization Broker Facade, which allows
finer grained access control for REST endpoints. Since this feature was
not well tested in the Boron release, it is recommended to use the
Shiro-based mechanism instead, and rely on the Authorization Broker
Facade for POC use only.

AuthZ Broker Facade Feature Installation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To install the authorization broker facade, please issue the following
command in the karaf shell:

::

    feature:install odl-restconf odl-aaa-authz

Add an Authorization Rule
~~~~~~~~~~~~~~~~~~~~~~~~~

The following shows how one might go about securing the controller so
that only admins can access restconf.

::

    curl -u admin:admin -H “Content-Type: application/xml” --data-binary @./rule.json http://localhost:8181/restconf/config/authorization-schema:simple-authorization/policies/RestConfService/
    cat ./rule.json
    {
        "policies": {
            "resource": "*",
            "service":"RestConfService",
            "role": "admin"
        }
    }

Accounting Configuration
------------------------

All AAA logging is output to the standard karaf.log file.

::

    log:set TRACE org.opendaylight.aaa

This Karaf's CLI command enables the most verbose level of logging for AAA
components.
