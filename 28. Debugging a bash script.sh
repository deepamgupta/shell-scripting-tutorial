#! /bin/bash -x #"-x" int the left is for debugging the whole script

set -x #Start Debugging

COUNT=0

set +x #End Debugging

while ((COUNT < 7)); do
	echo $COUNT
	((COUNT++))
	sleep 1
done
