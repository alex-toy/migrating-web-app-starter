Migrating Web Applications to Azure Web App
=

The book review app is a simple HTML and jquery application with no other external dependency.

In this project, we will be migrating/deploying the application to Azure Web App after creating all the required Azure resources.

The easiest way is to simply run *commands\Configs\config.ps1* avec making all the configurations described bellow. All the resources will be automatically deployed for you on Azure and you will enjoy seeing your application at the url appearing on the command line!!! ;-)

1. Create a resource group with the following name: book-xxx-rg (xxx represent a random number of your choice)
2. Create the App Service Plan with the following settings:
    - Name: book-xxx-asp (xxx here should match the number of your resource group to keep things organized)
    - OS: Windows
    - Region: region closest to you
    - Pricing Tier: Free F1
3. Create the Azure Web App resource with the following settings:
    - name: book-xxx (xxx here should match the number of your resource group to keep things organized)
4. Publish from code (not docker container)
    - Runtime stack: ASP.NET V4.7
    - Region: same region as the app service plan
    - App Service Plan: select the plan created above
5. Deploy the web app to Azure via VS Code
6. Cleanup and delete resources : Be sure to clean up and delete resources to avoid recurring charges



