#!/bin/bash

if [ $# -ne 2 ]; then
	echo "usage: $0 <vm_name> <directory/path/to/take/config/from>"
	exit 1
fi
VM=$1
DIR=$2

EDITOR="cat $DIR/$VM.conf >" virsh edit $VM >/dev/null

echo -e "\nDomain $VM config restored from $DIR/$VM.conf\n"
