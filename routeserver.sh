# CWO 2021-12-17
routeserver="sdwan-routeserver"

cmd="az network routeserver show -g resource-group-01 -n $routeserver"
echo $cmd
eval $cmd
