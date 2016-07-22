egrep --color -nir --include=*.{adoc,rst} beryllium\|lithium .
egrep --color -nir --include=*.{adoc,rst} open\ ?flow . | grep -v OpenFlow | grep -v openflow: | grep -v \-openflow\- | grep -v openflowplugin | grep -v openflowjava | grep -v Openflow13 | grep -v \_OPENFLOW | grep -v OpenflowNode | grep --color -i OpenFlow
egrep --color -nir --include=*.{adoc,rst} open\ ?daylight . | grep -v OpenDaylight | grep -v \.opendaylight\. | grep -v \/opendaylight | grep -v \=opendaylight | grep --color -i OpenDaylight
