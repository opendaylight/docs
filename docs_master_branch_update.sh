#!/bin/bash
# ./docs_master_branch_update.sh -l <latest_release> -n <next_release>
# eg : ./docs_master_branch_update.sh -l sodium -n magnesium
while getopts ":l:n:" opt; do
  case $opt in
    l)
      latest_release=$OPTARG
      echo "-l latest_release : $OPTARG" >&2;;
    n)
      next_release=$OPTARG
      echo "-n next_release : $OPTARG" >&2;;
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
Release_version="$(tr '[:lower:]' '[:upper:]' <<< "${latest_release:0:1}")${latest_release:1}" # Captilize Version Name
Next_version="$(tr '[:lower:]' '[:upper:]' <<< "${next_release:0:1}")${next_release:1}" # Captilize Version Name
sed -i "s/$Release_version/$Next_version/g" docs/conf.yaml # Updating version in docs/conf.yaml
sed -i "s/$latest_release/$next_release/g" docs/javadoc.rst # Updating version in docs/javadoc.rst
release_str=odl-$latest_release
next_odl_release_str=odl-$next_release
sed -i "s/$release_str/$next_odl_release_str/g" docs/conf.py
line_number_nr=$(sed -n "/$next_odl_release_str/=" docs/conf.py)
pattern=$line_number_nr"p"
odl_latest="sed -n $pattern docs/conf.py"
odl_latest_line_value=$($odl_latest)
append_odl_latest=$(echo "$odl_latest_line_value" | sed "s/latest/$release_str/g; s/$next_release/$latest_release/g" )
sed -i "$line_number_nr a $append_odl_latest" docs/conf.py
