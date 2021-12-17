# CWO 2021-12-17
routeserver="sdwan-routeserver"
cmd="az network routeserver peering list --routeserver $routeserver -g resource-group-01 -o table"
echo $cmd
eval $cmd
