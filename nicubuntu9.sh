# CWO 2021-12-13
resourcegroup="ubuntu9"
nicname="ubuntu9851"

az network nic show-effective-route-table \
   --output table \
   --resource-group $resourcegroup \
   --name $nicname | grep -i "virtual\|vnet" -B 10

