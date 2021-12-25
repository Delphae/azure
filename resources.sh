#!/usr/bin/bash
# CWO 2012-12-25
resourcegroup="resource-group-01"

az resource list -g $resourcegroup -o table
#az resource list -g $resourcegroup -o table --query "[?type=='Microsoft.Compute/disks'].{name:name}"
#az resource list -g $resourcegroup -o table --query "[?type=='Microsoft.Network/publicIPAddresses'].{name:name}"
