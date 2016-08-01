#!/bin/bash

# This script compiles documenatation from asciidoc source by
# converting  asciidoc to reStructedText automatically using
# asciidoctor maven plug in and pandoc (http://www.pandoc.org/).
#
# Please make sure you have pandoc (http://www.pandoc.org/), sphinx
# (http://www.sphinx-doc.org/) and sphinx-bootstrap-theme(https://ryan-roemer.github.io/sphinx-bootstrap-theme/) installed.

cwd=$(pwd)
cp -r $cwd/docs/getting-started-guide $cwd/docs_autotranslation/getting-started-guide
cp -r $cwd/docs/opendaylight-with-openstack $cwd/docs_autotranslation/opendaylight-with-openstack
cp -r $cwd/docs/_static $cwd/docs_autotranslation/_static
docs='developer-guide user-guide'
for i in $docs
do
    echo "Translating $i ..."
    cd $cwd/manuals/$i
    mvn clean compile
    cp -r $cwd/manuals/$i/target/generated-docs $cwd/docs_autotranslation/$i
    mvn clean
    cd $cwd/docs_autotranslation/$i
    pandoc -f docbook -t rst -s *.xml -o index.rst
done

cd $cwd/docs_autotranslation
./split.py -i developer-guide/index.rst
./split.py -i user-guide/index.rst

sphinx-build -b html $cwd/docs_autotranslation $cwd/docs_autotranslation/html


