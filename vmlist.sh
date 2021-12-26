#!/usr/bin/bash

# CWO 2012-12-26

resourcegroup="resource-group-01"

az vm list \
    --resource-group $resourcegroup \
    --show-details \
    --query '[*].{Name:name, Private:privateIps, Public:publicIps, ProvisioningState:provisioningState, PowerState:powerState}' \
    --output table
