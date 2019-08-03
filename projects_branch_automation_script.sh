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

# Captilize Version Name
release_version="$(tr '[:lower:]' '[:upper:]' <<< "${master:0:1}")${master:1}"
cd "$ODL_DIR"/autorelease || exit
git submodule update
command='sed -i ''"s/.*version.*/version: '"$release_version"'/"'' docs/conf.yaml || true'
git submodule foreach --recursive "$command"
git submodule foreach  "cat docs/conf.yaml || true "
