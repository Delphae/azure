# CWO 2021-12-17
resourcegroup="resource-group-01"
peer="peer-vmx1"
routeserver="sdwan-routeserver"

cmd="az network routeserver peering list-learned-routes \
-n $peer --routeserver $routeserver -g resource-group-01 \
--query 'RouteServiceRole_IN_0' -o table"
echo $cmd
eval $cmd
