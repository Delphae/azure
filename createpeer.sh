# CWO 2021-12-17

resourcegroup="resource-group-01"
routeserver="sdwan-routeserver"
peer="peer4"
asn="65005"
nexthop="172.56.1.1"

az network routeserver peering create -g $resourcegroup --routeserver $routeserver -n $peer --peer-asn $asn --peer-ip $nexthop
