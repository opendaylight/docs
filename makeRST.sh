#!/bin/bash
cwd=$(pwd)

docs='getting-started-guide howto-openstack developer-guide user-guide'
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
sphinx-build -b html $cwd/docs_autotranslation $cwd/docs_autotranslation/html


