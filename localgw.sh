#!/usr/bin/bash
# CWO 2021-12-19

resourcegroup="resource-group-01"
gwname="delphae-localgw"

az network local-gateway show --resource-group $resourcegroup --name $gwname

