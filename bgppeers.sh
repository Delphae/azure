# CWO 2021-12-12
resourcegroup="azure-resourcegrp-01"
routeserver="sdwan-routerserver"

az network routeserver peering list --routeserver $routeserver --resource-group $resourcegroup --output table
