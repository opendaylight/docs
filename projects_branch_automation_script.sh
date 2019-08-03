#!/bin/bash
'''
./projects_branch_automation_script.sh -d path_to_ODL_projects -l sodium -p true 
'''
publish="false" # By default disabled
while getopts ":d:l:p:" opt; do
  case $opt in
    d)
      dir=$OPTARG
      echo "-d directory path : $OPTARG" >&2;;
    p)
      publish=$OPTARG
      echo "-p publish boolean set true to publish: $OPTARG" >&2;;
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
branch=stable/$master
# Captilize Version Name
release_version="$(tr '[:lower:]' '[:upper:]' <<< "${master:0:1}")${master:1}"
cd "$ODL_DIR"/autorelease || exit
git submodule update
command='sed -i ''"s/.*version.*/version: '"$release_version"'/"'' docs/conf.yaml || true'
git submodule foreach --recursive "git checkout $branch"
git submodule foreach --recursive "$command"
if [ "$publish" == "true" ]
  then
    git submodule foreach --recursive "git add . || true"
    git submodule foreach --recursive "git commit -s -m 'Change in the version name' || true" 
    git submodule foreach --recursive "git review || true"
fi
