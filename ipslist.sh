#!/usr/bin/bash

# CWO 2021-12-26
resourcegroup="resource-group-01"

az vm list-ip-addresses --resource-group $resourcegroup -o table
