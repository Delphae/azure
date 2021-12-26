#!/usr/bin/bash

# CWO 2021-12-26

resourcegroup="resource-group-01"
id=$((10 + RANDOM % 90))
vmname="ubuntu-"$id
echo $vmname
vnet="azure-vnet-02"
subnet="azure-vnet-02-sub-02"
pwd="0123456789"

az vm create \
    --resource-group $resourcegroup \
    --size Standard_B1ls \
    --no-wait \
    --name $vmname \
    --location westeurope \
    --vnet-name $vnet \
    --subnet $subnet \
    --image UbuntuLTS \
    --public-ip-sku Standard \
    --admin-username localadmin \
    --admin-password $pwd


