###########################
About Copyright and License
###########################

*Note: This document is a work in progress.*

Contributors must comply with `the terms of the OpenDaylight
Technical charter <../_static/OpenDaylight-Technical-Charter-LFN-Projects-LLC-FINAL.pdf>`__.

Following are the requirements with regards to Copyright and License statements
in all source code in the OpenDaylight projects.

New Files
=========

Every file should contain a copyright statement, which at a minimum states that
the source code is available under the Eclipse Public License (EPL)
or a compatible license.
By placing the copyright in all source files, downstream consumers of
OpenDaylight can refer to their redistribution clauses.

*The OpenDaylight Project does not request or require copyright assignment to
the OpenDaylight non-profit organization, so adding the original contributor's
name or company is allowed.*

*A missing copyright statement is treated as a bug so the EPL license can
at least be added for downstream consumers.*

Possible structure of the EPL copyright header:

.. code:: text

   /**
    * Copyright (c) <Date> <Company or Individual> and others.  All rights reserved.
    *
    * This program and the accompanying materials are made available under the
    * terms of the Eclipse Public License v1.0 which accompanies this distribution,
    * and is available at http://www.eclipse.org/legal/epl-v10.html
    **/

.. note::

   If you are contributing to OpenDaylight on behalf of a company or
   organization, please check with your company's legal department
   if you need to use your company name's or if you can use your personal
   name as the copyright holder.
   Be sure to place the current date and company name in the copyright.
   If copying a copyright please make sure that you place the correct
   company's name into the copyright (i.e. if you copy an existing
   copyright statement, make sure you change the name to give credit to
   the correct people or organizations!).


Edited Files
============

If you, the editor, feel like you have made a *significant* contribution
for which you want to issue a copyright, then modify the copyright,
adding your company's name or individual name into the original header.

.. code:: text

   /**
    * Copyright (c) <Date> Existing Company One, and others.  All rights reserved.
    * Copyright (c) <Date> New Company Two
    *
    * This program and the accompanying materials are made available under the
    * terms of the Eclipse Public License v1.0 which accompanies this distribution,
    * and is available at http://www.eclipse.org/legal/epl-v10.html
    **/

In the example above, "New Company Two" was added into the copy right.
"Existing Company One" already existed and remained in the copyright header.
Whether or not you edit the existing copyright is up to you.

.. note::

   Never remove or replace the copyright on a file.
   The original author still retains the copyright on the original work.
   You retain the copyright on the new edits only.
   *Significant* is purposely left vague to be left to your best judgement.
   At the end of the day if the issue of who owns what changes ever arises
   it will be left to the lawyers and judges to determine the copyright
   ownership. Remember, all changes are logged in the git repository.
