#!/bin/bash

if [ $# -ne 2 ]; then
	echo "usage: $0 <vm_name> <multiline_sed_regex>"
	exit 1
fi
VM=$1
REGEX=$2

EDITOR="sed -z -i '$REGEX'" virsh edit $VM >/dev/null

echo
echo "Domain $VM config edited with '$REGEX'"
echo
