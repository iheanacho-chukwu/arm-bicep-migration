param storageAccountNameParam string
param locationParam string = resourceGroup().location
param containerNameParam string
param tagsParam object = {}

var deploymentName = 'azureSupportCommunity'

module storageAccount 'modules/storageAccount.bicep' = {
  name: '${deploymentName}-storageAccount'
  params: {
  location: locationParam
  containerName: containerNameParam
  tags: tagsParam
  storageAccountName: storageAccountNameParam
  }
}
