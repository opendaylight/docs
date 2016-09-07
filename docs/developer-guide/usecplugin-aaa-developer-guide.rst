Usecplugin-AAA Developer Guide
==============================

Overview
--------

Usecplugin-AAA provides security related information for the AAA
northbound interface.

Usecplugin-AAA Architecture
---------------------------

AAA plugin creates log messages about successful and failed login
attempts to OpenDaylight. Usecplugin-AAA continuously reads this log
file and checks for either successful and failed attempt information.
Whenever Usecpluin-AAA identifies a new attempt entry in the log file it
is stored in YANG Data Store and its own log file.

Usecplugin-AAA is implemented with the help of a few java classes.

UsecpluginAAAProvider
    Provider class for Usecplugin-AAA feature implementation.

UsecpluginAAANotifImpl
    Logs notification information which can be seen by log:display at
    the Karaf terminal

UsecpluginAAARPCImpl
    Implements Usecplugin RPCs

UsecpluginAAAParsingLog
    Parses OpenDaylight log information for identifying login attempts.

UsecpluginAAAPublishNotif
    Publishes failed login attempt notification.

UsecpluginAAAStore
    Creates login information at the YANG Data Store.

Key APIs and Interfaces
-----------------------

-  RPC APIs

   Login Attempt from IP
       Returns Time and Type of Attempts (Success or Failure)

   Login Attempt at Time
       Returns Attempter IP Address and Type of Attempts (Success or
       Failure)

-  Notification APIs

   On Invalid Login Attempt
       Notification generated on Invalid Login Attempt

-  YANG Data Store APIs

   Get Login Attempts
       Returns Source IP address of Attempter with Time of Attempts and
       Type of Attempts (Success or Failure)

