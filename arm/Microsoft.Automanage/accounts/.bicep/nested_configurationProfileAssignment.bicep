param vmName string
param configurationProfile string

resource configurationProfileAssignment 'Microsoft.Compute/virtualMachines/providers/configurationProfileAssignments@2021-04-30-preview' = {
  name: '${vmName}/Microsoft.Automanage/default'
  properties: {
    configurationProfile: configurationProfile
  }
}
