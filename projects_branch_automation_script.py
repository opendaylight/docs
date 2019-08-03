import os
import argparse
import subprocess

#python projects_branch_automation_script.py -dir opendaylight -nr magnesium -lr sodium -pr neon

parser = argparse.ArgumentParser()

parser.add_argument("-dir", "--directory", type=str, required=True)
parser.add_argument("-nr", "--next_release", type=str, required=True)
parser.add_argument("-lr", "--latest_release", type=str, required=True)
parser.add_argument("-pr", "--previous_release", type=str, required=True)

args = parser.parse_args()

ODL_DIR=args.directory #Path to all ODL Projects
master = args.latest_release
branch = "stable/" + master
release_version=master.capitalize()
odl_projects=['aaa','bgpcep','controller','coe','daexim','genius','infrautils','distribution','lispflowmapping','netconf','neutron','openflowplugin','ovsdb','serviceutils','sfc']

for projects in odl_projects :
	os.chdir( ODL_DIR + "/" + projects)
	command = "git checkout -b " + str(branch) + " master"
	os.system(command)
for projects in odl_projects:
	command = "git checkout " + "master"
	os.system(command)
	os.chdir( ODL_DIR + "/" + projects)
	change_conf_yaml="sed -i 's/.*version.*/version: "+release_version+"/' docs/conf.yaml"
	os.system(change_conf_yaml)
	command = "git checkout " + str(branch)
	os.system(command)







