#!/usr/bin/bash
# CWO 2021-12-19

resourcegroup="resource-group-01"
gwname="azure-vpngw1"

az network vnet-gateway show --resource-group $resourcegroup --name $gwname --query '[provisioningState, bgpSettings]'
