#!/bin/bash

if [ $# -ne 2 ]; then
	echo "usage: $0 <vm_name> <directory/path/to/save/config/to>"
	exit 1
fi
VM=$1
DIR=$2

EDITOR="cat >$DIR/$VM.conf" virsh edit $VM >/dev/null

echo -e "\nDomain $VM config dumped to $DIR/$VM.conf\n"
