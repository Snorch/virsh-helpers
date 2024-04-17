#!/bin/bash

if [ $# -ne 2 ]; then
	echo "usage: $0 <vm_name> <directory/path/to/save/crashdump/to>"
	exit 1
fi
VM=$1
DIR=$2

virsh dump $VM $DIR/$VM.crashdump --memory-only
