#!/usr/bin/bash
# CWO 2022-06-22
bandwidth="50 Mbps"
name="azure-expresscircuit-alpha"
#name="azure-expresscircuit-beta"
#name="azure-expresscircuit-gamma"
#name="azure-expresscircuit-delta"
resourcegroup="azure-lab29032021"
az network express-route create --bandwidth $bandwidth -n $name --peering-location "Amsterdam" -g $resourcegroup --provider "Equinix" -l "West Europe" --sku-family MeteredData --sku-tier Standard
