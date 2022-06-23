#!/usr/bin/bash
# CWO 2021-12-25

#resourcegroup="resource-group-01"
resourcegroup="azure-lab29032021"

az network express-route list \
-g $resourcegroup \
--query '[].{name:name, circuit:circuitProvisioningState, states:provisioningState, provider:serviceProviderProvisioningState, skey:serviceKey}' \
-o table
