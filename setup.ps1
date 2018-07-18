# https://zimmergren.net/azure-container-services-aks-private-repository-acr-azure-container-registry/
# https://docs.microsoft.com/sl-si/azure/aks/kubernetes-helm
choco install azure-cli -y
az login
az group create --location westeurope --name TestRegistryMHRG
az acr create --name TestRegistryMH --resource-group TestRegistryMHRG --sku Basic --admin-enabled true
az group create --location westeurope --name Testk8sMHRG
az aks create -g MyResourceGroupName -n MyAksClusterName --location westeurope --node-vm-size Standard_D2_v2

