#!/bin/bash
'''
./projects_branch_automation_script.sh -d path_to_ODL_projects -l sodium 
'''
while getopts ":d:l:" opt; do
  case $opt in
    d)
      dir=$OPTARG
      echo "-d directory path : $OPTARG" >&2;;
    l)
      latest_release=$OPTARG
      echo "-l latest_release : $OPTARG" >&2;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
ODL_DIR=$dir
master=$latest_release
branch="stable/"$master

# Captilize Version Name
release_version="$(tr '[:lower:]' '[:upper:]' <<< "${master:0:1}")${master:1}"
mapfile -t odl_projects < <(grep -oP '(?<=module>)[^<]+' "$ODL_DIR""/autorelease/pom.xml")

for i in ${!odl_projects[*]}
do
	odl_project=${odl_projects[$i]##*/}
	path_project=$ODL_DIR"/${odl_project}"
	git checkout master
	cd "$path_project" || exit
	sed -i "s/.*version.*/version: $release_version/" docs/conf.yaml
	git checkout -b "$branch" master # create new branch using master as base
	git checkout "$branch" 
	cat docs/conf.yaml
done
