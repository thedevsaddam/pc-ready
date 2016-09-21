#!/bin/sh

# include helper
. ./helper.sh

p=`eval prompt "abc"`
if($p);then
    echo "yes"
else
    echo "no"
fi
# OS info
pprint "Name:"
name="lsb_release -c"
eval $name
pprint "Version:"

version="lsb_release -r -s"
eval $version
currentVersion=`eval $version`

# Switch os
case "$currentVersion" in
  "16.04")
    #   ./16.04.sh
      break;;
  *)
      pprint "not work..."
      ;;
esac
