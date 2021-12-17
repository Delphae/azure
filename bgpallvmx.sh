# CWO 2021-12-14

resourcegroup="resource-group-01"
peer1="peer-vmx1"
peer2="peer-vmx2"
peer3="peer-vmx3"
routeserver="sdwan-routeserver"

echo "peer:" $peer1
cmd="az network routeserver peering list-learned-routes \
-n $peer1 --routeserver $routeserver -g resource-group-01 \
--query 'RouteServiceRole_IN_0' -o table"
echo $cmd
eval $cmd

echo "peer:" $peer2
cmd="az network routeserver peering list-learned-routes \
-n $peer2 --routeserver $routeserver -g resource-group-01 \
--query 'RouteServiceRole_IN_0' -o table"
echo $cmd
eval $cmd

echo "peer:" $peer3
cmd="az network routeserver peering list-learned-routes \
-n $peer3 --routeserver $routeserver -g resource-group-01 \
--query 'RouteServiceRole_IN_0' -o table"
echo $cmd
eval $cmd
