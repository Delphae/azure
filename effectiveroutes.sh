# CWO 2023-12-04
resourceid='/subscriptions/ab77c205-f58a-4d29-ba81-36b98262ca89/resourceGroups/azure-virtualwan/providers/Microsoft.Network/virtualHubs/az-virtualbub-westeurope/hubRouteTables/defaultRouteTable'
vhubname='az-virtualbub-westeurope'
resgrp='azure-virtualwan'
az network vhub get-effective-routes --resource-type RouteTable --resource-id $resourceid -g $resgrp -n $vhubname

