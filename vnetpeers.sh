# CWO 2021-12-13

resourcegroup="resource-group-01"
vnetname="azure-vnet-02"

cmd="az network vnet peering list --resource-group $resourcegroup --vnet-name $vnetname --output table"
echo $cmd
eval $cmd
