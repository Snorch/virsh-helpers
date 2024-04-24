### Usage examples ###

1. Save configs of all VMs to $DIR:
```
./for-each-vm.sh ./save-vm-config.sh VM $DIR
```

2. Save crashdumps of all VMs to $DIR:
```
./for-each-vm.sh ./save-vm-crashdump.sh VM $DIR
```

3. Stop all VMs:
```
./for-each-vm.sh virsh shutdown VM
```

4. Start all VMs:
```
./for-each-vm.sh virsh start VM
```

5. Edit VM config for all vms (e.g. bulk removal of cputune section):
```
./for-each-vm.sh ./edit-vm-config.sh VM 's/  <cputune>\n.*\n.*\n  <\/cputune>//'
```

6. Restore VM config for all vms:
```
./for-each-vm.sh ./restore-vm-config.sh VM $DIR
```
