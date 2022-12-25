Install Azure CLI :  https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli



https://www.blendmastersoftware.com/blog/deploying-to-azure-using-terraform-and-github-actions


az ad sp create-for-rbac --name "sp-szure-tf" --role Contributor --scopes /subscriptions/a60e14d3-9415-4783-ae22-98d895dd008c --sdk-auth

{
  "clientId": "224661aa-6f33-4c9f-91b1-265d23fcbdde",
  "clientSecret": "Rt-8Q~5r_rr4uuAe27v9o1jDpWNpONCAPVYRDdkU",
  "subscriptionId": "a60e14d3-9415-4783-ae22-98d895dd008c",
  "tenantId": "b8aef98a-c2aa-4ba7-a5c5-4e14fea34a7b",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}
