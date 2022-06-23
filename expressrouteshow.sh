# CWO 2022-06-22
resourcegroup="azure-lab29032021"
name="azure-ercircuit-A"
#az network express-route show --resource-group $resourcegroup --name $name
az network express-route show -g $resourcegroup --name $name --query "{azure:provisioningState, circuit:circuitProvisioningState, provider:serviceProviderProvisioningState}"
#az network express-route show -g $resourcegroup --name $name --query "{azure:provisioningState, provider:serviceProviderProvisioningState}"
