# CWO 2021-12-12
az network nic list \
--query '[].{Name:name, Group:resourceGroup, IP:ipConfigurations[0].privateIpAddress}' \
-o table
