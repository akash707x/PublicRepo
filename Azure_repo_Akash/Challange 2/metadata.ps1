## Powershell Script to get Json formatted metadata from Vm

Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64



# Generated JSON Output


{
  "name": "samplevm1",
  "id": "/subscriptions/[subscriptionId]/resourceGroups/sudhaEX/providers/Microsoft.Compute/virtualMachines/samplevm1",
  "type": "Microsoft.Compute/virtualMachines",
  "location": "centralus",
  "properties": {
    "vmId": "247fe3c7-a9c8-4d14-a864-1d4923014e23",
    "availabilitySet": {
      "id": "/subscriptions/[subscriptionId]/resourceGroups/sudhaEX/providers/Microsoft.Compute/availabilitySets/SAMPLE-AS"
    },
    "hardwareProfile": {
      "vmSize": "Standard_DS1_v2"
    },
    "storageProfile": {
      "imageReference": {
        "publisher": "MicrosoftWindowsServer",
        "offer": "WindowsServer",
        "sku": "2016-Datacenter-Server-Core",
        "version": "latest",
        "exactVersion": "14393.4651.2109130103"
      },
      "osDisk": {
        "osType": "Windows",
        "name": "samplevm1_OsDisk_1_1b018d9509b1469a902c827e166a5aa0",
        "createOption": "FromImage",
        "caching": "ReadWrite",
        "managedDisk": {
          "storageAccountType": "StandardSSD_LRS",
          "id": "/subscriptions/[subscriptionId]/resourceGroups/sudhaEx/providers/Microsoft.Compute/disks/samplevm1_OsDisk_1_1b018d9509b1469a902c827e166a5aa0"
        },
        "diskSizeGB": 127
      },
      "dataDisks": []
    },
    "osProfile": {
      "computerName": "samplevm1",
      "adminUsername": "samplevm1",
      "windowsConfiguration": {
        "provisionVMAgent": true,
        "enableAutomaticUpdates": true,
        "patchSettings": {
          "patchMode": "AutomaticByOS",
          "assessmentMode": "ImageDefault",
          "enableHotpatching": false
        }
      },
      "secrets": [],
      "allowExtensionOperations": true,
      "requireGuestProvisionSignal": true
    },
    "networkProfile": {
      "networkInterfaces": [
        {
          "id": "/subscriptions/[subscriptionId]/resourceGroups/sudhaEx/providers/Microsoft.Network/networkInterfaces/samplevm1830"
        }
      ]
    },
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true
      }
    },
    "provisioningState": "Succeeded"
  }
}