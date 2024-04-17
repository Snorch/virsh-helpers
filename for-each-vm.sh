#!/bin/bash

if [ $# -lt 2 ]; then
	echo "usage: $0 <comm> <arg1> [... <argN>]"
	echo "This will run for each VM:"
	echo "<comm> <arg1> [... <argN>]"
	echo "The argument containing \"VM\" string will be replaced to VM name"
	exit 1
fi

COMM=$1

ARGS=("${@:2}")
LEN=${#ARGS[@]}
INDEX=""
for (( i=0; i<${LEN}; i++ )); do
	if [ "${ARGS[$i]}" == "VM" ]; then
		INDEX=$i
		break;
	fi
done

if [ -z "$INDEX" ]; then
	echo "usage: $0 <comm> <arg1> [... <argN>]"
	echo "One of argX must contain \"VM\" string"
	exit 1
fi

VMS=$(virsh list --all | sed '1d;2d;$d' | awk '{print $2}')

for VM in $VMS; do
	ARGS[$INDEX]="$VM"
	"$COMM" "${ARGS[@]}"
done
