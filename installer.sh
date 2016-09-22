#!/bin/sh

# include helper
. ./helper.sh

INSATALL_ALL=false

if (`eval prompt "All"`) ;then
    INSATALL_ALL=true
else
    INSATALL_ALL=false
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
