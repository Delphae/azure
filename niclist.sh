# CWO 2021-12-12

cmd="az network nic list \
--query '[].{Name:name, Group:resourceGroup, IP:ipConfigurations[0].privateIpAddress}' \
-o table"
echo $cmd
eval $cmd

