# https://zimmergren.net/azure-container-services-aks-private-repository-acr-azure-container-registry/
# https://docs.microsoft.com/sl-si/azure/aks/kubernetes-helm
# https://kubecloud.io/kubernetes-dashboard-on-arm-with-rbac-61309310a640
# https://docs.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest

# 1 install azure cli
choco install azure-cli -y
choco install kubernetes-helm
# 2 login to your azure account
az login
# 3 make private docker registry
az group create --location westeurope --name TestRegistryMHRG
az acr create --name TestRegistryMH --resource-group TestRegistryMHRG --sku Basic --admin-enabled true
# 4 make azure kubernetes service
az group create --location westeurope --name Testk8sMHRG
az aks create -g Testk8sMHRG -n Testk8sMH --location westeurope --node-vm-size Standard_F1s --generate-ssh-keys --enable-rbac 
# 5 login to dashboard
az aks install-cli
az aks get-credentials --resource-group Testk8sMHRG --name Testk8sMH
az aks browse --resource-group Testk8sMHRG --name Testk8sMH

