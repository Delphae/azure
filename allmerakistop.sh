# CWO 2021-12-16
cmd="deallocate"
az vm $cmd -g mrg-cisco-meraki-vmx-20211216095831 -n meraki-vmx1 --no-wait
az vm $cmd -g mrg-cisco-meraki-vmx-20211218105012 -n meraki-vmx2 --no-wait
az vm $cmd -g mrg-cisco-meraki-vmx-20211217161423 -n meraki-vmx3 --no-wait
