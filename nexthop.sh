#!/usr/bin/bash
# CWO 2022-06-23
resourcegroup="resource-group-01"
vm="azure-ubuntu-13"
sourceip="172.18.1.4"
destip="172.20.1.4"
az network watcher show-next-hop -g $resourcegroup --vm $vm --source-ip $sourceip --dest-ip $destip
