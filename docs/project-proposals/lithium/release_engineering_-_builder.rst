Name
----

Release Engineering - Builder

Repo Name
---------

releng/builder

Description
-----------

The purpose of the Release Engineering - Builder project is be a
location for all of the CI job creation configuration files. In
particular we will be using Jenkins Job Builder YAML files, Zuul
configuration files and any other CI dependent management will go here.

Please note: The repository name is being suggested specifically as a
foldered instance so that future Release Engineering projects can be
semantically grouped together in Gerrit [and the eventual GitHub
mirror(s)] cleanly.

Scope
-----

The eventual goal is to move all CI job definitions into an easily
revisioned and reviewed structure and to sumarily remove direct Jenkins
job editing as the jobs are migrated into a single CI master instance
during conversion work. All projects will eventually be impacted for CI
defintions.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Andrew Grimberg (ODLID: agrimberg / agrimberg@linuxfoundation.org /
   IRC: tykeal)
-  Thanh Ha (ODLID: tha / thanh.ha@linuxfoundation.org / IRC: zxiiro)
-  Aric Gardner (ODLID: agardner / agardner@linuxfoundation.org/ IRC:
   aricg)

Initial Committers
------------------

-  Andrew Grimberg (ODLID: agrimberg / agrimberg@linuxfoundation.org /
   IRC: tykeal)
-  Thanh Ha (ODLID: tha / thanh.ha@linuxfoundation.org / IRC: zxiiro)

Vendor Neutral
--------------

There is currently no code to bring in. All configuration and subsequent
code will be EPL from the start.

Meets Board Policy (including IPR)
----------------------------------
