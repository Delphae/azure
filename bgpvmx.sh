# CWO 2021-12-12
resourcegroup="azure-resourcegrp-01"
routeserver="sdwan-routerserver"
peername="peer-vmx1-64533"

az network routeserver peering list-learned-routes --name $peername --routeserver $routeserver --resource-group $resourcegroup --output jsonc
