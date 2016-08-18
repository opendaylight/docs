############
Gerrit Guide
############

How to push to Gerrit
=====================

It is highly recommended to use ssh to push to Gerrit to push code to Gerrit.
In the event that you cannot use ssh such as corporate firewall blocking you
then falling back to pushing via https should work.

Using ssh to push to Gerrit
---------------------------

# TODO

Using https to push to Gerrit
-----------------------------

Gerrit does not allow you to use your regular account credentials when pushing
via https. Instead it requires you to first generate a http password via the
webui and use that as the password when pushing via ssh.

To do this navigate to https://git.opendaylight.org/gerrit/#/settings/http-password
and click the **Generate Password** button. Gerrit will then generate a random
password which you will need to use as your password when using git to push
code to Gerrit.
