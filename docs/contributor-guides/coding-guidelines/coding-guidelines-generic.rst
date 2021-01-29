.. _coding-guidelines-generic:

#########################
Generic Coding Guidelines
#########################

*Note: This document is a work in progress.*

Git commit message style
========================


OpenDaylight projects store code in git repositories,
so contributions to OpenDaylight code have form of git commits.
Each git commit needs a proper commit message.

The message should describe what has changed from a previous state.
Ideally this will be the preceding commit in git history.
OpenDaylight uses Gerrit to manage reviewing and merging of contributions,
so in this context "previous state" is shown as Base.

.. note::
   `Chris Beams'blog <http://chris.beams.io/posts/git-commit/>`__ is pretty
   descriptive of why formatting the commit message properly is useful.


For Git commit messages we recommend following the `OpenStack commit message
recommendations <https://wiki.openstack.org/wiki/GitCommitMessages>`__.

* Separate subject from body with a blank line
* Limit the subject line to 50 characters
* Capitalize the subject line
* Do not end the subject line with a period
* Use the imperative mood in the subject line
* Wrap the body at 72 characters
* Use the body to explain what and why vs. how

During review, reviewers will comment on current patch sets,
and contributor may add more edits into newer patch sets.
But previous patch sets are NOT the previous git state the commit message should
document against.
Contributors should respond to reviewers via Gerrit posts,
while updating commit message to track current differences from Base.


The commit message is most frequently read by people examining "git log" output,
and they usually do not have information on which files were edited.
Make sure your commit message is specific enough.
For example, write "Add option X to module Y" instead of just "Add option X".


As there are tighter limits on the first line of commit message,
the end of the line should not be marked by period.
entences in the rest of commit message should be punctuated as usual.


Some projects verify commit message formatting in automated verify-style job.
For example Releng/Builders enforces most of `Coala rules <https://github.com/coala/bear-docs/blob/master/docs/GitCommitBear.rst>`__.


General Code headers
====================

License and Copyright headers need to exist at the top of all code files.
Examples of copyright headers for each language can be seen below.

Note: In case you need multiple Copyright headers simply duplicate the
Copyright line for additional copyrights

C/C++/Java
----------

::

   /*
    * Copyright (c) 2021 <Company or Individual>.  All rights reserved.
    *
    * This program and the accompanying materials are made available under the
    * terms of the Eclipse Public License v1.0 which accompanies this distribution,
    * and is available at http://www.eclipse.org/legal/epl-v10.html
    */

Bash/Python
-----------

::

   ##############################################################################
   # Copyright (c) 2021 <Company or Individual>.  All rights reserved.
   #
   # This program and the accompanying materials are made available under the
   # terms of the Eclipse Public License v1.0 which accompanies this distribution,
   # and is available at http://www.eclipse.org/legal/epl-v10.html
   ##############################################################################

XML
---

::

   <!--
     Copyright (c) 2021 <Company or Individual>.  All rights reserved.

     This program and the accompanying materials are made available under the
     terms of the Eclipse Public License v1.0 which accompanies this distribution,
     and is available at http://www.eclipse.org/legal/epl-v10.html
   -->

General Code Style
==================

-  120 characters line length


