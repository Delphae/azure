#!/usr/bin/bash
# CWO 2022-06-23
resourcegroup="azure-lab29032021"
circuit="azure-ercircuit-A"
az network express-route get-stats -g $resourcegroup -n $circuit
