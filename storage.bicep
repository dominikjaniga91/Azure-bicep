var prefix = 'prod'
var storageName = '${prefix}dominikjaniga05102021'

var regions = [
  'eastus'
  'southeastasia'
  'northeurope'
]

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = { // why do we nnned this line?
  name: storageName  //this name must globaly unique
  sku: { // what is the sku?
    name: 'Standard_LRS' // co to?
  }
  kind: 'StorageV2'
  location: first(regions)
  properties: {
    accessTier: 'Hot'
  }
}
