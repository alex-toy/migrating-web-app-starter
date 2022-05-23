################################################################
"Admin :"

$Global:Subscription = "alexeisubscription"
$Global:Subscription = "Azure subscription 1"
"Subscription : " + $Subscription



################################################################
"resource Group :"

#southcentralus centralus francecentral westus2 eastus
$Global:RGLocation = "francecentral"
"resource Group Location : " + $RGLocation

$Global:RGName = "cosmosdb-rg"
"Resource Group Name : " + $RGName



################################################################
"General Settings :"

$Global:SSHKeyName = "mySSHKey"
"Secret key name : "  + $SSHKeyName

$Global:SAKey = "SAKey"
"Storage Account key name : "  + $SAKey

$Global:AppPath = ".\web"
"Application path : "  + $AppPath



#######################################################################
# Steps :

$script = "commands\ResourceGroup\ResourceGroup_create.ps1"
.$script

$script = "commands\WebApp\WebApp_create.ps1"
.$script

# $script = "commands\StorageAccount\StorageAccount_create.ps1"
# .$script

# $script = "commands\FunctionApp\FA_create.ps1"
# .$script

# $script = "commands\ContainerRegistry\ACR_create.ps1"
# .$script

# $script = "commands\ContainerRegistry\KubernetesCluster_create.ps1"
# .$script



