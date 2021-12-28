#!/usr/bin/bash

# CWO 2012-12-28

resourcegroup="resource-group-01"

vmnames=$(az vm list -g $resourcegroup --query '[][name]' -o tsv)
#echo $vmnames

for name in $vmnames
do
    cmd="az vm deallocate -g $resourcegroup -n $name --no-wait"
    echo $cmd
    eval $cmd
done

