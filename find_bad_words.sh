#Search for older releases
egrep --color -nir --include=*.rst beryllium\|lithium docs

#Search for misspellings and miss-capitalizations of OpenFlow
egrep --color -nir --include=*.rst open\ ?flow docs | grep -v OpenFlow | grep -v openflow: | grep -v \-openflow\- | grep -v openflowplugin | grep -v openflowjava | grep -v Openflow13 | grep -v \_OPENFLOW | grep -v OpenflowNode | grep --color -i OpenFlow

#Search for misspellings and miss-capitalizations of OpenDaylight
egrep --color -nir --include=*.rst open\ ?daylight docs | grep -v OpenDaylight | grep -v \.opendaylight\. | grep -v \/opendaylight | grep -v \=opendaylight | grep --color -i OpenDaylight

#Search for misspellings and miss-capitalizations of ACL
egrep --color -nir --include=*.rst [^-]acl[^-_\":] docs | grep -v ACL | grep -vi maclearn | grep -vi oracle | grep --color -i acl

#the ovs[db] search seemed to produce only false positives
#egrep --color -nir --include=*.rst [^-/_\"\']ovs[^-:k_] docs | grep -v OVS | egrep -v ovsdb[:-] | grep --color -i ovs

#Search for git.opendaylight.org links to the next release as opposed the current release
#   Note that past releases are caught above
egrep --color -nir --include=*.rst hb=HEAD docs
egrep --color -nir --include=*.rst hb=master docs

#Search for links to jenkins.opendaylight.org and logs.opendaylight.org, which are temporary
egrep --color -nir --include=*.rst jenkins\.opendaylight\.org docs
egrep --color -nir --include=*.rst logs\.opendaylight\.org docs
