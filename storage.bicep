var prefix = 'prod'
var env = 'prod'
var storageName = '${prefix}dominikjaniga05102021'

var regions = [
  'eastus'
  'southeastasia'
  'northeurope'
]

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = if (env == 'test') { // why do we nnned this line?
  name: '${storageName}${env}'  //this name must globaly unique
  sku: { // what is the sku?
    name: 'Standard_LRS' // co to?
  }
  kind: 'StorageV2'
  location: first(regions)
  properties: {
    accessTier: 'Hot'
  }
}

resource storage2 'Microsoft.Storage/storageAccounts@2021-04-01' = if (env == 'prod') { // why do we nnned this line?
  name: '${storageName}${env}'  //this name must globaly unique
  sku: { // what is the sku?
    name: 'Standard_LRS' // co to?
  }
  kind: 'StorageV2'
  location: last(regions)
  properties: {
    accessTier: 'Hot'
  }
}

