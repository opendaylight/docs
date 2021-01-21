.. _coding-guidelines-yang:

##########################
Coding Guidelines for YANG
##########################

*Note: This document is a work in progress.*

-  Do not use underscores ('_') in identifiers.
   JDK 9 is on track to making underscores forbidden in identifiers, which means
   we will need to map them and it is not going to be pleasant :-(
-  Each declaration needs to have either a description or a reference to a
   defintion document (like an IETF draft)
-  Use typedefs to declare concepts. An UUID is typeless, so each instance
   should have its scope, so we know its applicability domain.
   'type string' should only be used to things like free-form comments and
   similar. Please attach a 'units' statement whenever possible.
-  TBD
