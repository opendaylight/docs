.. figure:: Spectrometer-diagram.png
   :alt: Spectrometer

   Spectrometer

Name
----

Spectrometer

Repo Name
---------

git clone https://git.opendaylight.org/gerrit/p/spectrometer.git

or

git clone ssh://\ @git.opendaylight.org:29418/spectrometer.git

Description
-----------

The main purpose of Spectrometer is to deliver transparent statistics of
contributions to OpenDaylight Project. It collects activity data such as
1. commits and number of code lines changed from ODL Git repositories,
2. reviews from Gerrit, or 3. activities related to each project from
mailing lists and presents the statistics in a user-friendly manner.

.. figure:: Spectrometer-diagram.png
   :alt: Spectrometer-diagram.png
   :width: 500px

   Spectrometer-diagram.png

Git commits history
~~~~~~~~~~~~~~~~~~~

In first version of Spectrometer, Git history is acquired using
following command:

::

   git log --pretty="commit_id:'%H%ndate:%at%nauthor:%an%nauthor_email:%ae%nsubject:%s%nmessage:%b%n'" --shortstat -M --no-merges

which produces output like:

::

   commit_id:b5a416ac344160512f95751ae16e6612aefd4a57
   date:1369119386
   author:Akihiro MOTOKI
   author_email:motoki@da.jp.nec.com
   subject:Remove class-based import in the code repo
   message:Fixes bug 1167901 This commit also removes backslashes for line break. Change-Id: Id26fdfd2af4862652d7270aec132d40662efeb96
   diff_stat: 21 files changed, 340 insertions(+), 408 deletions(-)
   This commit changes 21 files and 340 + 408 = 748 LOC (Line Of Code). I.e. LOC is a sum of insertions and deletions.

The same status can be acquired using Gitpython library.

Gerrit History
~~~~~~~~~~~~~~

Gerrit provides a command line interface for retrieval of review source
data.

::

   gerrit query --all-approvals --patch-sets --format JSON module branch:master limit:100

This command outputs a list of the latest reviews on the module.

Spectrometer provides the following analytics for reviews:

-  Number of reviews
-  Statistics of positive and negative reviews
-  Ratio of positive to negative reviews.

Mailing list activity
~~~~~~~~~~~~~~~~~~~~~

-  Mailing list activity is polled via the web-based OpenDaylight
   archives.
-  Spectrometer searches the following places to choose the module to
   which an email is related, in order:
-  Module name in brackets in email subject
-  Module name without brackets in email subject

If none of the above locations yields a known module, the email is
attributed to the 'unknown' module.

The list of tracked web pages with mail archives is managed in
default_data.json under the section marked 'mail_lists'.

Corrections
~~~~~~~~~~~

LOC is an unreliable metric as it can be easily skewed by large scale
renaming and refactoring. Spectrometer provides a framework for a
community-driven correction process. It works as follows: Corrections
are stored in the corrections.json JSON file.

These corrections look something like this:

::

   "corrections": [
     {
       "commit_id": "ee3fe4e836ca1c81e50a8324a9b5f982de4fa97f",
       "correction_comment": "Reset LOC to 0",
       "lines_added": 0,
       "lines_deleted": 0
     }
   ]

Updates to original Spectrometer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Start with a new code base
-  Spectrometer will support only one version of Python, this will
   result in simplification of the code and ease of maintenance
-  A code base that is viewable/accessible easily to the people working
   on the project.
-  Spectrometer will be developed on ODL infrastructure so it can have a
   real time update of working version, consequently real time access to
   updated results and Testing using ODL CI infrastructure with real
   data

Scope
-----

-  Collecting stats from repositories, mailing list interface, and
   Gerrit
-  Web UI shows stats by: Module, company, contributor, ...
-  Documentation for the code and installation guide
-  Testing Spectrometer using ODL CI infrastructure with real data

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Tom Nadeau (tnadeau@brocade.com, login: tnadeaubrocade)
-  Mohammad Hassan Zahraee (moh_zahraee@yahoo.com, login: zahraee)
-  An Ho (An.Ho@huawei.com, login: )
-  Vasu Srinivasan {vsriniv@Brocade.com, login: vsriniv }

Initial Committers
------------------

-  Tom Nadeau (tnadeau@brocade.com, login: tnadeaubrocade)
-  Mohammad Hassan Zahraee (moh_zahraee@yahoo.com, login: zahraee)
-  Thanh Ha (thanh.ha@linuxfoundation.org, login: tha)
-  An Ho (an.ho@huawei.com, login: anipbu)

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

Yes.