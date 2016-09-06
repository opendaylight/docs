egrep --color -nir --include=*.rst beryllium\|lithium docs
egrep --color -nir --include=*.rst open\ ?flow docs | grep -v OpenFlow | grep -v openflow: | grep -v \-openflow\- | grep -v openflowplugin | grep -v openflowjava | grep -v Openflow13 | grep -v \_OPENFLOW | grep -v OpenflowNode | grep --color -i OpenFlow
egrep --color -nir --include=*.rst open\ ?daylight docs | grep -v OpenDaylight | grep -v \.opendaylight\. | grep -v \/opendaylight | grep -v \=opendaylight | grep --color -i OpenDaylight
egrep --color -nir --include=*.rst [^-]acl[^-_\":] docs | grep -v ACL | grep -vi maclearn | grep -vi oracle | grep --color -i acl
#the ovs[db] search seemed to produce only false positives
#egrep --color -nir --include=*.rst [^-/_\"\']ovs[^-:k_] docs | grep -v OVS | egrep -v ovsdb[:-] | grep --color -i ovs
