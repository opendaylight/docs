.. _coding-guidelines-python:

############################
Coding Guidelines for Python
############################

*Note: This document is a work in progress.*

PEP8 is the Python standard that should be followed when coding any Python code
with the following exceptions.

-  120 characters line length

To automate pep8 scanning we recommend using a tox configuration as follows:

tox.ini

::

   [tox]
   envlist = pep8
   #skipsdist = true  # Command only available in tox 1.6.0

   [testenv:pep8]
   deps = flake8
   commands = flake8

   [flake8]
   max-line-length = 120

Unfortunately the version of tox installed in the Jenkins build infra does not
support the skipdist parameter which is necessary if your project does not have
a setup.py file.
A workaround is to create a minimal setup.py file as follows:

setup.py

::

   # Workaround for tox missing parameter 'skipsdist=true' which was not
   # introduced until tox 1.6.0

   import setuptools

   setuptools.setup(name='project-name')

