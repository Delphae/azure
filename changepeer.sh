# CWO 2021-12-17

resourcegroup="resource-group-01"
routeserver="sdwan-routeserver"

# delete old peer
peer="peer-vmx3"
cmd="az network routeserver peering delete -g $resourcegroup --routeserver $routeserver -n $peer --yes"
echo $cmd
eval $cmd

# create new peer
peer="peer-vmx3"
asn="64570"
nexthop="10.84.7.4"
cmd="az network routeserver peering create -g $resourcegroup --routeserver $routeserver -n $peer --peer-asn $asn --peer-ip $nexthop"
echo $cmd
eval $cmd

