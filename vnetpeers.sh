# CWO 2021-12-13
resourcegroup="azure-resourcegrp-01"
vnetname="vnet31"

az network vnet peering list --resource-group $resourcegroup --vnet-name $vnetname --output table
