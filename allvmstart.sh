# CWO 2021-12-16
cmd="start"
#az vm $cmd -g resource-group-01 -n azure-ubuntu-08 --no-wait
#az vm $cmd -g resource-group-01 -n azure-ubuntu-12 --no-wait
az vm $cmd -g mrg-cisco-meraki-vmx-20211216095831 -n meraki-vmx1 --no-wait
az vm $cmd -g mrg-cisco-meraki-vmx-20211216122232 -n meraki-vmx2 --no-wait
