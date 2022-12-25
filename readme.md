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


az storage account create -n pathologyazuretf -g StorageRG -l northcentralus --sku Standard_LRS

{
  "accessTier": "Hot",
  "allowBlobPublicAccess": true,
  "allowCrossTenantReplication": null,
  "allowSharedKeyAccess": null,
  "allowedCopyScope": null,
  "azureFilesIdentityBasedAuthentication": null,
  "blobRestoreStatus": null,
  "creationTime": "2022-12-25T05:00:45.579793+00:00",
  "customDomain": null,
  "defaultToOAuthAuthentication": null,
  "dnsEndpointType": null,
  "enableHttpsTrafficOnly": true,
  "enableNfsV3": null,
  "encryption": {
    "encryptionIdentity": null,
    "keySource": "Microsoft.Storage",
    "keyVaultProperties": null,
    "requireInfrastructureEncryption": null,
    "services": {
      "blob": {
        "enabled": true,
        "keyType": "Account",
        "lastEnabledTime": "2022-12-25T05:00:46.158132+00:00"
      },
      "file": {
        "enabled": true,
        "keyType": "Account",
        "lastEnabledTime": "2022-12-25T05:00:46.158132+00:00"
      },
      "queue": null,
      "table": null
    }
  },
  "extendedLocation": null,
  "failoverInProgress": null,
  "geoReplicationStats": null,
  "id": "/subscriptions/a60e14d3-9415-4783-ae22-98d895dd008c/resourceGroups/StorageRG/providers/Microsoft.Storage/storageAccounts/pathologyazuretf",
  "identity": null,
  "immutableStorageWithVersioning": null,
  "isHnsEnabled": null,
  "isLocalUserEnabled": null,
  "isSftpEnabled": null,
  "keyCreationTime": {
    "key1": "2022-12-25T05:00:45.673558+00:00",
    "key2": "2022-12-25T05:00:45.673558+00:00"
  },
  "keyPolicy": null,
  "kind": "StorageV2",
  "largeFileSharesState": null,
  "lastGeoFailoverTime": null,
  "location": "northcentralus",
  "minimumTlsVersion": "TLS1_0",
  "name": "pathologyazuretf",
  "networkRuleSet": {
    "bypass": "AzureServices",
    "defaultAction": "Allow",
    "ipRules": [],
    "resourceAccessRules": null,
    "virtualNetworkRules": []
  },
  "primaryEndpoints": {
    "blob": "https://pathologyazuretf.blob.core.windows.net/",
    "dfs": "https://pathologyazuretf.dfs.core.windows.net/",
    "file": "https://pathologyazuretf.file.core.windows.net/",
    "internetEndpoints": null,
    "microsoftEndpoints": null,
    "queue": "https://pathologyazuretf.queue.core.windows.net/",
    "table": "https://pathologyazuretf.table.core.windows.net/",
    "web": "https://pathologyazuretf.z14.web.core.windows.net/"
  },
  "primaryLocation": "northcentralus",
  "privateEndpointConnections": [],
  "provisioningState": "Succeeded",
  "publicNetworkAccess": null,
  "resourceGroup": "StorageRG",
  "routingPreference": null,
  "sasPolicy": null,
  "secondaryEndpoints": null,
  "secondaryLocation": null,
  "sku": {
    "name": "Standard_LRS",
    "tier": "Standard"
  },
  "statusOfPrimary": "available",
  "statusOfSecondary": null,
  "storageAccountSkuConversionStatus": null,
  "tags": {},
  "type": "Microsoft.Storage/storageAccounts"
}



az storage container create -n terraform-state --account-name pathologyazuretf