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
Web U and use that as the password when pushing via https.

.. figure:: images/gerrit-https-password-setup.png

   Setting up an https password to push using https instead of ssh.

To do this:

1. navigate to https://git.opendaylight.org/gerrit/#/settings/http-password
   (Steps 1, 2 and 3 in the image above.)
2. click the **Generate Password** button.

Gerrit will then generate a random password which you will need to use as your
password when using git to push code to Gerrit via https.

Signing Gerrit Commits
======================

1. Generate your GPG key.

   The following instructions work on a Mac, but the general approach
   should be the same on other OSes.

   .. code-block:: bash

      brew install gpg2  # If you don't have homebrew, get that here: http://brew.sh/
      gpg2 --gen-key
      # pick 1 for "RSA and RSA"
      # enter 4096 to creat a 4096-bit key
      # enter an expiration time, I picked 2y for 2 years
      # enter y to accept the expiration time
      # pick O or Q to accept your name/email/comment
      # enter a pass phrase twice. it seems like backspace doesn't work, so type carefully
      gpg2 --fingerprint
      # you'll get something like this:
      # spectre:~ ckd$ gpg2 --fingerprint
      # /Users/ckd/.gnupg/pubring.gpg
      # -----------------------------
      # pub   4096R/F566C9B1 2015-04-06 [expires: 2017-04-05]
      #       Key fingerprint = 7C37 02AC D651 1FA7 9209  48D3 5DD5 0C4B F566 C9B1
      # uid       [ultimate] Colin Dixon <colin at colindixon.com>
      # sub   4096R/DC1497E1 2015-04-06 [expires: 2017-04-05]
      # you're looking for the part after 4096R, which is your key ID
      gpg2 --send-keys $KEY_ID
      # in the above example, the $KEY_ID would be F566C9B1
      # you should see output like this:
      # gpg: sending key F566C9B1 to hkp server keys.gnupg.net

   If you're trying to participate in an OpenDaylight keysigning, then
   send the output of ``gpg2 --fingerprint $KEY_ID`` to
   keysigning@opendaylight.org

   .. code-block:: bash

      gpg2 --fingerprint $KEY_ID
      # in the above example, the $KEY_ID would be F566C9B1
      # in my case, the output was:
      # pub   4096R/F566C9B1 2015-04-06 [expires: 2017-04-05]
      #       Key fingerprint = 7C37 02AC D651 1FA7 9209  48D3 5DD5 0C4B F566 C9B1
      # uid       [ultimate] Colin Dixon <colin at colindixon.com>
      # sub   4096R/DC1497E1 2015-04-06 [expires: 2017-04-05]

2. Install gpg, instead of or addition to gpg2. It appears as though
   gpg2 has annoying things that it does when asking for your
   passphrase, which I haven't debugged yet.

   .. note:: you can tell git to use gpg by doing:
     ``git config --global gpg.program gpg2``
     but that then will seem to struggle asking for your
     passphrase unless you have your gpg-agent set up right.

3. Add you GPG to Gerrit

   a. Run the following at the CLI:

      .. code-block:: bash

         gpg --export -a $FINGER_PRINT
         # e.g., gpg --export -a F566C9B1
         # in my case the output looked like:
         # -----BEGIN PGP PUBLIC KEY BLOCK-----
         # Version: GnuPG v2
         #
         # mQINBFUisGABEAC/DkcjNUhxQkRLdfbfdlq9NlfDusWri0cXLVz4YN1cTUTF5HiW
         # ...
         # gJT+FwDvCGgaE+JGlmXgjv0WSd4f9cNXkgYqfb6mpji0F3TF2HXXiVPqbwJ1V3I2
         # NA+l+/koCW0aMReK
         # =A/ql
         # -----END PGP PUBLIC KEY BLOCK-----

   b. Browse to https://git.opendaylight.org/gerrit/#/settings/gpg-keys
   c. Click Add Key...
   d. Copy the output from the above command, paste it into the box,
      and click Add

4. Set up your git to sign commits and push signatures

   .. code-block:: bash

      git config commit.gpgsign true
      git config push.gpgsign true
      git config user.signingkey $FINGER_PRINT
      # e.g., git config user.signingkey F566C9B1

   .. note:: you can do this instead with ``git commit -S``
      You can use ``git commit -S`` and ``git push --signed``
      on the CLI instead of configuring it in config if you
      want to control which commits use your signature.

5. Commit and push a change

   a. change a file
   b. ``git commit -asm "test commit"``

      .. note:: this should result in git asking you for your passphrase

   c. ``git review``

      .. note:: this should result in git asking you for your passphrase

      .. note:: annoyingly, the presence of a gpgp signature or pushing
        of a gpg signature isn't recognized as a "change" by
        Gerrit, so if you forget to do either, you need to change
        something about the commit to get Gerrit to accept the
        patch again. Slightly tweaking the commit message is a
        good way.

      .. note:: this assumes you have git review set up and push.gpgsign
        set to true. Otherwise:

        ``git push --signed gerrit HEAD:refs/for/master``

        .. note:: this assumes you have your gerrit remote set up, if
            not it's something like:
            ``ssh://ckd@git.opendaylight.org:29418/<repo>.git``
            where repo is something like docs or controller

6. Verify that your commit is signed by going to the change in Gerrit
   and checking for a green check (instead of a blue ?) next to your
   name.


Setting up gpg-agent on a Mac
-----------------------------

#. Install ``gpg-agent`` and ``pinentry-mac`` using ``brew``::

      brew install gpg-agent pinentry-mac

#. Edit your ``~/.gnupg/gpg.conf`` contain the line::

      use-agent

#. Edit your ``~/.gnupg/gpg-agent.conf`` to something like::

      use-standard-socket
      enable-ssh-support
      default-cache-ttl 600
      max-cache-ttl 7200
      pinentry-program /usr/local/bin/pinentry-mac

#. Edit your ``.bash_profile`` or equivalent file to contain the
   following:

   .. code-block:: bash

      [ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
      if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
        export GPG_AGENT_INFO
      else
        eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
      fi

#. Kill any stray ``gpg-agent`` daemons running::

      sudo killall gpg-agent

#. Restart your terminal (or log in and out) to reload the your
   ``.bash_profile`` or equivalent file

#. The next time a git operation makes a call to gpg, it should use
   your gpg-agent to run a GUI window to ask for your passphrase and
   give you an option to save your passphrase in the keychain.

   .. figure:: images/pinentry-mac.png
