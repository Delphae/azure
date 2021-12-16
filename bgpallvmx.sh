# CWO 2021-12-16

resourcegroup="resource-group-01"
peer1="peer-vmx1"
peer2="peer-vmx2-spoke"
routeserver="sdwan-routeserver"

echo "peer:" $peer1
az network routeserver peering list-learned-routes \
-n $peer1 --routeserver $routeserver -g resource-group-01 \
--query 'RouteServiceRole_IN_0' -o table

echo "peer:" $peer2
az network routeserver peering list-learned-routes \
-n $peer2 --routeserver $routeserver -g resource-group-01 \
--query 'RouteServiceRole_IN_0' -o table
