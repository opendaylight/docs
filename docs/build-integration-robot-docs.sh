#!/bin/bash

ROBOT_LIB_DIR=`pwd`/_static/integration/robot/libs
ROBOT_SUITE_DIR=`pwd`/_static/integration/robot/suites
TMP_ROBOT_LIB_DIR=`pwd`/_build/robot/libs
TMP_ROBOT_SUITE_DIR=`pwd`/_build/robot/suites

mkdir -p $ROBOT_LIB_DIR $ROBOT_SUITE_DIR $TMP_ROBOT_LIB_DIR $TMP_ROBOT_SUITE_DIR
pushd submodules/integration/test/csit/libraries
for f in $(find ./ -name '*.robot'); do python -m robot.libdoc $f $TMP_ROBOT_LIB_DIR/$(basename $f).html & done
wait
for f in $(find ./ -name '*.py'); do python -m robot.libdoc $f $TMP_ROBOT_LIB_DIR/$(basename $f).html & done
wait
popd

pushd submodules/integration/test/csit/suites
for f in $(find ./ -name '*.robot'); do python -m robot.testdoc $f $TMP_ROBOT_SUITE_DIR/$(basename $f).html & done
wait
popd

cd $TMP_ROBOT_LIB_DIR/
echo "<html><body><ul>" > $ROBOT_LIB_DIR/index.html
for f in *.html; do
    sed 's/black/orange/; s/white/black/; s/^<body>/<body><img src="..\/..\/odl.png">/' $f > $ROBOT_LIB_DIR/$f
    echo "<li><a href=\"$f\">$f</a></li>" >> $ROBOT_LIB_DIR/index.html
done
echo "</ul></body></html>" >> $ROBOT_LIB_DIR/index.html

cd $TMP_ROBOT_SUITE_DIR/
echo "<html><body><ul>" > $ROBOT_SUITE_DIR/index.html
for f in *.html; do
    sed 's/black/orange/; s/white/black/; s/^<body>/<body><img src="..\/..\/odl.png">/' $f > $ROBOT_SUITE_DIR/$f
    echo "<li><a href=\"$f\">$f</a></li>" >> $ROBOT_SUITE_DIR/index.html
done
echo "</ul></body></html>" >> $ROBOT_SUITE_DIR/index.html