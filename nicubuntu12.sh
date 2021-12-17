# CWO 2021-12-16
resourcegroup="resource-group-01"
nicname="azure-ubuntu-12323"

cmd="az network nic show-effective-route-table \
   -o table \
   --resource-group $resourcegroup \
   --name $nicname | grep -i 'virtual\|vnet' -B 10"
echo $cmd
eval $cmd


