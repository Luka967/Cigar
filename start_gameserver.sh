#!/bin/bash
node="node"
which apt-get > /dev/null
if [ "$?" -eq "0" ]; then
	node=$(which nodejs)
	if [ "$?" -ne "0" ]; then
		echo "Could not find nodejs! Please run \"apt-get install nodejs\" to install it."
		exit 1
	fi
	echo "Debian detected. Using nodejs instead of node..."
fi
echo [BATCH] Starting Server without MasterServer
while true
do
	clear
	$node server/index.js
	echo [BATCH] Server Shutdown, waiting 15 seconds before a restart.
	sleep 15
done
