Usecplugin-AAA User Guide
=========================

The Usecplugin User Guide contains information about configuration,
administration, management, using and troubleshooting the feature.

Overview
--------

AAA plugin provides authorization, authentication and accounting
services to OpenDaylight. A user logs in to OpenDaylight through the
username and password provided by AAA plugin. Usecplugin-AAA collects
and stores information about both successful and failed login attempts
to OpenDaylight.

Usecplugin-AAA Architecture
---------------------------

AAA plugin creates log messages about successful and failed login
attempts to OpenDaylight. Usecplugin-AAA continuously reads this log
file and checks for either successful and failed attempt information.
Whenever Usecpluin-AAA identifies a new attempt entry in the log file it
is stored in YANG Data Store and its own log file.

Administering or Managing Usecplugin-AAA
----------------------------------------

-  Install feature ``odl-usecplugin-aaa``

-  Enable odl-aaa log using command
   ``log:set DEBUG org.opendaylight.aaa.shiro.filters``

-  Login to the RESTCONF documentation.

-  Check operational datastore for login attempts.

-  POST URI ::
   http://localhost:8181/restconf/operations/usecpluginaaa:attemptFromIP

   -  Sample Input :: {"usecpluginaaa:input":{"ScrIP":"10.0.0.1"}}

-  POST URI ::
   http://localhost:8181/restconf/operations/usecpluginaaa:attemptOnDateTime

   -  Sample Input :: {"usecpluginaaa:input":{"dateTime":"2016-07-27
      14:11:18"}}

