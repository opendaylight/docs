What is Gerrit ?
================

The Linux Foundation proposes a LF Gerrit Guide at this URL:
https://docs.releng.linuxfoundation.org/en/latest/gerrit.html Please
look at it.

You can find more details on Gerrit by itself at
https://gerrit-review.googlesource.com/Documentation/intro-quick.html

Gerrit is a web-based code review tool built on top of the Git version
control system. Gerrit makes code review easier by providing a
lightweight framework for reviewing commits before they are accepted by
the codebase i.e. project committers.

If you are not familiar with Git, please look at the `LFN Git guide <https://docs.releng.linuxfoundation.org/en/latest/git.html>`__.

Gerrit uses massively git hooks. Git hooks are commands and scripts to
add automatically specific treatments in git basic commands. **The main
hook treatment provided by Gerrit is to add a “Change-Id” tag to all
commit messages. This “Change-Id” allows Gerrit to link together
different versions of the same change being reviewed.**

If you want to look at the hooks contents, you can retrieve them
manually on the Gerrit git server with those commands.

.. code-block:: text

   $ scp -p -P 29418 <login>@git.opendaylight.org:hooks/commit-msg RecipeBook/.git/hooks/
   $ chmod u+x .git/hooks/commit-msg

Most of the time, retrieving hooks manually is useless since they are
automatically invoked by git commands. With Gerrit, it is also much
easier to use git-review that invokes those hooks. **Git-review is a
tool that helps submitting git branches to Gerrit for review, this means
it can supersede the usual git fetch, git pull and git push commands.**
The git-review package is available on most GNU/Linux distribution.

**In Gerrit, several ongoing-review branches or “changes” can coexist
without conflicts until they are merged to a mainstream branch (usually
the master).** This way, several paths for the project can be explored
simultaneously even if they implement a same feature. However, if a
change is getting too old, it may become impossible to merge because the
mainstream branch has evolved too much meanwhile. In that case, you have
to rebase the change on the mainstream branch and resolve potential
conflicts before merging it.


Guidelines and practical advice
===============================


clone a project repository and get a local copy of the code
-----------------------------------------------------------

*To access OpenDaylight repository, you need a Linux Foundation ID to log in.*
This can be done at `this URL <https://identity.linuxfoundation.org/>`__.

*Once that done, you need to generate your SSH keys pair and publish
your public on your ODL Gerrit account as described in* `this link <https://git.opendaylight.org/gerrit/Documentation/user-upload.html#ssh>`__.

To clone the current master branch of a project

.. code-block:: text

   $ git clone ssh://<login>@git.opendaylight.org:29418/<project_name>

To clone another mainstream branch

.. code-block:: text

   $ git clone -b <branch_name> ssh://< login >@git.opendaylight.org:29418/<project_name>

for example the magnesium branch of the documentation project

.. code-block:: text

   $ git clone -b stable/magnesium ssh://my_login@git.opendaylight.org:29418/docs

at that step, it is usually a good idea to run the setup commands of the repo
with git-review

.. code-block:: text

   $ cd docs/
   $ git-review -s

If needed, a particular change (i.e. a specific branch used for
staging reviews before they are merged to the master branch or another
mainstream branch) can be retrieved by using git-review

.. code-block:: text


   $ git-review -d <change_number>

This will create another local repository along the master branch copy. You
can use git branch to verify it.

prepare a change
----------------

Once you have a local copy of the repository, you can make your modifications.
Please follow the best practices given below and in :ref:`coding-guidelines`.
Remember to check what you have done.

**Be particularly careful to the license headers, the trailing blanks, the empty
lines and do not use the MSDOS file format but the UNIX file format.
Try also to remove compilation warnings.**

If you are using an IDE , it can be a good idea to use an editor profile that
implements those rule such as the Eclipse profile in this `link <https://wiki-archive.opendaylight.org/images/c/ca/Profile-Java-ODL.xml.zip>`__.

Since ODL compilation process is particularly verbose, consider using
compilation logs file or piped commands such as:

.. code-block:: text

   $ time mvn clean install -DskipTests 2>&1 |tee mvn.log.0 |grep ‘WARN\|ERROR’

If you propose an update for an existing feature with tests already available,
it is a good idea to perform these tests ( e.g. “$ tox -e pre-commit”) and see
what happens. Available tests can often be found in the tox.ini file at the root
of the project folder.

Once ready, use git status to check the staging files.

.. code-block:: text

   $ git status

If you want to commit all your changes, you can skip the next 2 steps and
use directly “$ git commit” with the option “-a”

If not, add the right files to your commit.

.. code-block:: text

   $ git add [ … ]

.. note::
   You might want to remove some files from the remote repository in this
   commit.
   In that case, you should use “git rm” instead of only “rm”.

   The same way, use “git mv” if you want to rename or move a file in the
   remote repository too.

It is a good idea to check again your git status    before committing.

.. code-block:: text

   $ git status

Then commit and add a commit message. Using “-s” to sign-off your commit
is usually a good idea

.. code-block:: text

   $ git commit -s

.. note::
   Please abide by the commit messages rules given below and at `the openStack wiki <https://wiki.openstack.org/wiki/GitCommitMessages>`__.

   Be careful with the title length (50 char), the empty line after the title,
   and the body length (72 char).

   If your commit includes work from other contributors, do not hesitate to use
   the “co-authored-by” tag.

   If you are not the author of the changes, you can upload it although but you
   should use the option “--author=” with “git-commit”

At that step, you can still rework your modifications and include more
files with “git add”.
In that case, amend the commit after with the command.

.. code-block:: text

   $ git commit --amend

This command also allows you to rework your commit message too.


Upload a Change
---------------

Uploading a change to Gerrit is done by pushing a git commit to the
Gerrit origin server. The commit must be pushed to a ref in the
refs/for/ namespace which defines the target branch: refs/for/<
target-branch >. The magic refs/for/ prefix allows Gerrit to
differentiate commits that are pushed for review from commits that are
pushed directly into the repository, bypassing code review (this is
usually a bad idea). For the target branch it is sufficient to specify
the short name, e.g. master, but you can also specify the fully
qualified branch name, e.g. refs/heads/master.

Push for Code Review

.. code-block:: text

   $ git commit
   $ git push origin HEAD:refs/for/master

   // this is the same as:
   $ git commit
   $ git push origin HEAD:refs/for/refs/heads/master

It is easier to use the equivalent git-review commands.
The -T option allows to avoid sending the local branch name as default topic.

.. code-block:: text

   $ git-review -T

If you want to upload it on another mainstream branch for review, you
can add the branch name at the end.

.. code-block:: text

   $ git-review -T <branch_name>

for example magnesium

.. code-block:: text

   $ git-review -T stable/magnesium

It is also sometimes possible to push commits with bypassing Code Review.
Beware this is usually a bad idea !

.. code-block:: text

   $ git commit
   $ git push origin HEAD:master

   // this is the same as:
   $ git commit
   $ git push origin HEAD:refs/heads/master

Check your change on Gerrit
---------------------------

Each file added, modified, moved, renamed or deleted will be listed in the
Gerrit page displaying your change.
If you click on a file name, the differences with the previous version of the
file will be displayed.
Main common errors such as trailing blanks usually appears in red.
Please check every file and list those common errors. Then (or in
parallel) you can go to the next steps and correct them quickly. This is
a good idea to do it before asking other people to review your change in
Gerrit.


Upload a new Patch Set
----------------------

If there is feedback from code review and a change should be improved,
a new patch set with the reworked code should be uploaded.

This is done by amending the commit of the last patch set.

*If you have no more a local copy of your change, you can use “git
clone” and “git-review -d” to retrieve it (just as described in the
first section "*
The commit can also be fetched from Gerrit by using the fetch commands
available from the download commands in the change screen (right top corner).

.. code-block:: text

   // fetch and checkout the change
   // (checkout command can be copied from change screen, right top corner in download)
   $ git fetch "https://git.opendaylight.org/gerrit/docs" refs/changes/86/93386/2
     && git checkout FETCH_HEAD

   // or with git-review
   $ git-review -d 93386
   // provided 2 is the latest Patch Set, otherwise if there is a Patch Set 3,
   $ git-review -d 93386,2
   // specifying a Patch-Set number only works with newer git-review versions

Then you can start working on it just as you will do for a new commit with “git
add/rm/mv etc…”. Once ready, instead of simply doing “$ git commit -s”
type instead “$ git commit --amend”


.. code-block:: text

   // rework the change
   $ git add < path-of-reworked-file > [ … ]

   // amend commit
   $ git commit --amend

   // push patch set
   $ git push origin HEAD:refs/for/master
   // or with git-review
   $ git-review -T


It is important that the commit message contains the Change-Id of the
change that should be updated as a footer (last paragraph). Normally the
commit message already contains the correct Change-Id and the Change-Id
is preserved when the commit is amended.

Thanks to the Change-Id in the commit message, Gerrit will detect that
the change was already there and that you want to create a new Patch Set
to amend it. The new Patch Set should now appear in the Gerrit web
interface.

.. note::
   Never amend a commit that is already part of a central branch.

   Pushing a new patch set will trigger an email notification to the reviewers
   who subscribed to the project notifications.

   The option -T is used to avoid adding a topic to the change. If no topic
   is specified, git-review will add the change number or the local branch name
   as a topic in Gerrit web interface.
   You can force another topic with the -t option.


Submitting simultaneously several changes for review
----------------------------------------------------

Sometimes, it can be interesting to push simultaneously several
interdependent changes for review. This can be done this way.

.. code-block:: text

   $ git add […]

   $ git commit -s

   [ … ]

   $ git add […]

   $ git commit -s

   $ git-review

Here is a simple example that modifies an existing change and proposes a new
change on top of it.

.. code-block:: text

   $ git clone https://git.opendaylight.org/gerrit/docs
   $ git-review -s
   $ git-review -d 93386

   // rework the change 93386
   [..]
   $ git add < path-of-reworked-file > [ … ]

   // amend commit
   $ git commit –amend

   // add a new change/commit
   $ git add < path-of-worked-file > [ … ]
   // add a new commit
   $ git commit

   // repeat the operation as much time as necessary
   [..]

   // upload the changes to Gerrit
   $ git-review -T

git-review usually displays a warning and ask confirmation when doing this.
The option -y avoids this message.

If the changes are accepted, the Gerrit web interface will display information
a.k.a. relation chain on changes submitted together when looking at one of them.

.. note::
   When cascading more changes, the first call “git-review” may fail
   because of the absence of a Change-Id in the git commit message logs.

   Retry “git-review” in that case or try to run git hook manually to
   modify the git log history (not so easy).

   If you do not have Gerrit git hooks pre-installed, this only works for the
   absence of Change-Id in the last commit.
   In that case, you can use interactive rebase with reword to edit the N
   previous commit messages (“git-rebase -i HEAD~N”).


Modify several changes
----------------------

While they have not been merged in the remote repository, it is still possible
to rework the changes that were posted simultaneously. If you have no more
a local copy of them, just retrieve the latest change in you git history
from the Gerrit remote repo. Check the history with

.. code-block:: text

   $ git log

It should display all the commits posted.

*“git commit --amend”* only allows to rework the last commit. You must
use another method to rework the previous commits.

The easiest way to do that is to use interactive rebase 2 syntaxes can
be used:

.. code-block:: text

   $ git rebase -i < commit >

where is the commit hash reference used by “git log”

or

.. code-block:: text

   $ git rebase -i HEAD~< number of commits >
   // e.g. to rework the five previous commits
   $ git rebase-i HEAD~5

you should now see commits short descriptions in a text editor (usually
vim) It should look like this.

.. code-block:: text

   pick 239da71 Renderer and OLM update
   pick f85398e Bugs correction in Portmapping
   pick 6cb0144 Minor checkstyle corrections
   pick e51e0b9 Network topology and inventory init
   pick f245366 Bugs correction in NetworkModelService

   # Rebase afe9fcf..f245366 onto afe9fcf
   #
   # Commands:
   #  p, pick = use commit
   #  r, reword = use commit, but edit the commit message
   #  e, edit = use commit, but stop for amending
   #  s, squash = use commit, but meld into previous commit
   #  f, fixup = like "squash", but discard this commit's log message
   #  x, exec = run command (the rest of the line) using shell
   #
   # These lines can be re-ordered; they are executed from top to bottom.
   #
   # If you remove a line here THAT COMMIT WILL BE LOST.
   #
   # However, if you remove everything, the rebase will be aborted.
   #
   # Note that empty commits are commented out

The editor allows you to proceed to several actions on the git history:

- remove a commit from the history: just delete its line
- rework dependencies: swap line orders
- meld several commits into one: replace “pick” by “squash” or “fixup”
- rework only a specific commit message: replace “pick” by “reword”
- rework a specific commit: replace “pick” by “edit” then “git add/rm/mv …”,
  “git commit --amend”, “git rebase --continue”

Beware you may have to deal with potential conflicts when doing this.

Note that alternate methods exist.
For example, you can use cherry-picks described in the next section.
You can also use non-interactive git rebase , i.e without the option “-i”.
But you must keep a copy of the original “git log” history.
Most people create a new local branch with a copy via "git checkout -b" to that
purpose.
Once the copy made, use

.. code-block:: text

   $ git checkout <commit_hash>

where < commit_hash > is the hash of a previous commit, let’ say N
commits before the last one. Do your modifications:

.. code-block:: text

   $ git add/rm/mv […]
   $ git commit --amend

A new commit hash (<newhash>) will be generated. Keep it.

.. code-block:: text

   $ git checkout <commit_hash-1>

where < commit_hash-1 > is the hash of the previous commit, N-1 commits
before the last one. If you look at “git log”, the history has not
changed and the old hash is still there. you need to rebase to apply the
modifications made in the previous commit.

.. code-block:: text

   $ git log
   $ git rebase <newhash>
   $ git log

Conflicts may appear but should be solvable. Proceed the same way with
the N-2 previous commits up to the last commit. Then upload

.. code-block:: text

   $ git-review

Cherry-picks / backports
------------------------

Cherry-pick consist in importing the content of a specific change (or
commit) from another (review) branch into your own local branch.

The basic git cherry-pick method is described in the `LFN Git Guide <https://docs.releng.linuxfoundation.org/en/latest/git.html#cherry-pick-a-commit>`__.

The principle remains the same with Gerrit but you have to deal with the
Gerrit branch review system. You can use the “git cherry-pick” classical
command. In that case, you’d better to copy/paste it from the right-top
corner of the change review page. The easiest option is to use
git-review with the option “-x” instead.

.. code-block:: text

   $ git-review -x < change_number >"

*You can use also “-X” to keep a trace of the cherry-pick operation in
the git log. The “-N” option prepare the cherry-pick but the commit
message is not imported.*

Several cherry-picks can be cascaded this way.

Once the change appears in your local branch, you can upload it to the
Gerrit remote repository as usual with git-review.

Cherry-pick can also be used to backport changes between several
mainstream branches of the Gerrit remote repository. The procedure is the
same. Here is an example.

.. code-block:: text

   $ git clone -b stable/aluminium ssh://< login >@git.opendaylight.org:29418/docs
   $ git-review -x 94257
   //Change 94257 is on the magnesium branch and not the aluminium branch
   $ git-review [–P] [stable/aluminium]


Resolving conflicts
-------------------

Conflict resolution in Gerrit is not different from Git.
You can also refer to the `LFN Git Guide <https://docs.releng.linuxfoundation.org/en/latest/git.html#git-merge-conflicts>`__.

Conflict can occur during Git merges, pushes or rebases.

For example, if two or more members make changes on the same part of a file in a
remote and a local branch that are being merged, Git will not be able to
automatically merge them and you will get a merge conflict. When this
happens, conflicting files will be listed in the resulting messages as
in the example below.

.. code-block:: text

   $ git merge issue3
   Auto-merging my_shopping_list.txt CONFLICT (content): Merge conflict in my_shopping_list.txt
   Automatic merge failed; fix conflicts and then commit the result.

And Git will add some standard conflict-resolution markers to those
conflicting files. The markers act as an indicator to help us figure out
sections in the content of the conflicting file that needs to be
manually resolved.

Example of a conflict occurrence

.. code-block:: text

   My Shopping list

   Apples
   <<<<<<< HEAD
   Bread
   Pancakes
   =======
   Banana
   Soda
   >>>>>>> issue3
   Tomatoes

Each conflicting section in the file is delimited by lines alike
“<<<<<<< HEAD” and “>>>>>>> issue3” .
When merging remote code into your local branch, everything above " ======== "
is your local content, and everything below it comes from the remote branch.
Before going further, we need to resolve the conflicting parts and removes those
markers as shown in the example below.

.. code-block:: text

   My Shopping list

   Apples
   Banana
   Bread
   Pancakes
   Soda
   Tomatoes

Once we are done with resolving the conflict, you can commit the change
(git commit -m) , or pursue a rebase if you were in a rebasing process.



OpenDaylight and common Best Practices
======================================

All details on OpenDaylight best practices are available at
`this URL on the old wiki <https://wiki-archive.opendaylight.org/view/BestPractices>`__.

Implicit rules
--------------

**The first rule is that the author or at least the owner(=uploader) of
the change is responsible for the code posted on the Gerrit server. This
means that the author or the owner has to be responsive to questions and
comments or to make all the adaptations asked by the committers in
Gerrit comments.**
Committers are in charge of making the mainstream branch clean and conform to
the project rules before merging it in the mainstream branch.
Other reviews from non-committers are also welcome.

It may sound a little awkward but **many developers consider a “-1” review as
good news as a “+1” review .Both mean someone has looked at their code and
posted useful comments, potentially reusable elsewhere.**

There can be several interpretations of what to do in some case and Gerrit
comments can be very useful to clarify points in case of disagreements.
If possible, the change uploader/owner must be the code author so that the
review is more interactive and responsive.

**The second rule is to keep the code posted reviewable. The change
should not bring regression nor new compilation errors and warnings.**
It is a good idea to look at the Gerrit interface editor once your code
has been posted for review. Most common errors are colored in red.
Those errors pollutes the review process, not least because they generate many
warnings during the compilation process.
Posting a quick fix for those most common issues in a new Patch Set will ease
the reviewers and committers work.
If you are not confident of what you have done, you can test your change in
Gerrit by using the private  before making it public or by using the
Work-in-Progress mode to clearly state it is an ongoing work.

**Huge amounts of code are also generally difficult to review. Gerrit
changes dashboard has a size indicator on the right.**
There is no strict rule about this but if you receive a XL size, you probably
should consider to split your change into several smaller ones.

Coding Guidelines and common issues
-----------------------------------

More details at :ref:`coding-guidelines`.

Commit message
~~~~~~~~~~~~~~

More details at https://wiki.openstack.org/wiki/GitCommitMessages

**The commit message should reflect the feature or improvements posted
in the change.** The message must give a good idea of what have been
done. **It must be understood by anybody with a sufficient knowledge on
the topic, not necessarily someone taking part to the project.**
External references are welcome to point out to more details, but they
should not be a substitute to a correct description.

Here is a summary of Git commit message structure as described in
`the OpenStack wiki <https://wiki.openstack.org/wiki/GitCommitMessages#Summary_of_Git_commit_message_structure>`__.

-  Provide a brief description of the change in the first line.
-  Insert a single blank line after the first line.
-  Provide a detailed description of the change in the following lines,
   breaking paragraphs where needed.
-  The first line should be limited to 50 characters and should not end
   with a period.
-  Subsequent lines should be wrapped at 72 characters. There are some
   exceptions to this rule: for example, URL should not be wrapped. Vim
   (the default $EDITOR on most distros) can wrap automatically lines
   for you. In most cases you just need to copy the example vimrc file
   (which can be found somewhere like
   /usr/share/vim/vim74/vimrc_example.vim) to ~/.vimrc if you don’t have
   one already. After editing a paragraph, you can re-wrap it by
   pressing escape, ensuring the cursor is within the paragraph and
   typing gqip. Put the ‘Change-id’, ‘Closes-Bug #NNNNN’ and ‘blueprint
   NNNNNNNNNNN’ lines at the very end.


.. note::
   It is common practice across many open source projects using Git
   to include a one or several “Signed-off-by” tags (generated by ‘git
   commit -s’).
   If the change has several authors, you are encouraged to use the
   ‘Co-authored-by’ tag.
   Relate tickets, tasks and bug issues are pointed in the commit message using
   the JIRA tag.

Files formatting
~~~~~~~~~~~~~~~~

**Files posted for review should use the UNIX/linux file format.**
This means that their line terminator is “\\n” aka LF or LineFeed.
**Other format such as MSDOS (with “\\r\n” aka CRLF aka Carriage Return Line
Feed terminators) should be avoided.**
Encoding formats commonly accepted are Unicode and ASCII.

You can use the “file” linux command to check the actual status of your
files.

.. code-block:: text

   $ file *
   activate-projects-rtd-branch.sh: Bourne-Again shell script, ASCII text executable
   branch-cutting-checklist.txt:    ASCII text
   ci-requirements.txt:             ASCII text
   docs:                            directory
   find_bad_words.sh:               ASCII text
   INFO.yaml:                       ASCII text
   README.md:                       ASCII text
   tox.ini:                         ASCII text
   web:                             directory


and combine it with find and xargs + grep to detect MSDOS file

.. code-block:: text

   $ find . | xargs file | grep CRLF
    ./tox.ini:  ASCII text, with CRLF line terminators
    ./docs/make.bat:  DOS batch file, ASCII text, with CRLF line terminators


then create a script with sed to remove the “\\r” special character and
convert them in the UNIX format.

.. code-block:: text

   $ find . | xargs file | grep CRLF  |grep -v make.bat | cut -d’:’ -f1 | xargs sed -i 's/\\r//'

More easily, the vim editor can convert MSDOS file to UNIX format with
‘:set ff=unix’ If you are on windows, do not use notepad since it only
uses the MSDOS format. Consider using textpad++ or another advanced
editor.

**The ODL Java style guide limits the Java files line length to 120
characters and 72 or 80 chars for javadoc.** It prohibits also the use
of tabs. They should be replaced with 4 whitespaces. Below is a shell
script to automate the operation inside a folder.

.. code-block:: text

   $ for file in * ; do sed -i 's/\\t/ /g' $file; done

Trailing blanks should be avoided too. Below is a shell script to remove
trailing whitespaces inside a folder.

.. code-block:: text

   $ for file in * ; do sed -i 's/ \*//' $file;done

Useless empty lines must also be avoided.

.. note::
   If you are using an operating system with another default version of sed than
   GNU sed, for example BSD sed on MAC OS X, you must adapt the examples given
   here since the -i option takes a mandatory parameter.

License issues
~~~~~~~~~~~~~~

The EPL license or a compatible license should be present on all
projects code file in the header. The maven java checkstyle plugin will
check the presence of this license.

More details in the :ref:`coding-guidelines`.

License issues are considered particularly sensible by the opensource
communities.

