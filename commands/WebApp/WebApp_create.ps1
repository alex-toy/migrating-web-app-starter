"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"Web App :"

$Global:WAName = "alexeiwa"
"Web app name : " + $WAName

$Global:WALocation = $RGLocation
"Web App location : " + $WALocation

# Linux Windows
$Global:WAOSType = "Windows"
"Web App OS Type : " + $WAOSType

# Replace | with : when entering the runtime stack!!!
$Global:WARuntime = "aspnet:V4.8"
"Web App Runtime : " + $WARuntime

$Global:SKU = "F1"
"SKU : " + $SKU



################################################################
"CREATE AND DEPLOY AN APP SERVICE :"

#cd to web directory
$init_path = $pwd
Set-Location $AppPath

az webapp up `
    --resource-group $RGName `
    --location $WALocation `
    --name $WAName `
    --sku $SKU `
    --os-type $WAOSType `
    --runtime $WARuntime `
    --verbose

#Go back to root folder
Set-Location $init_path

"Open a browser and navigate to the app URL (http://<myAppName>.azurewebsites.net) and verify the app is running"
$url = "http://${WAName}.azurewebsites.net"
$url