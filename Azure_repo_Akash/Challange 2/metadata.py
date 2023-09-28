# This code sends an HTTP GET request to the Azure Metadata Service endpoint, 
# retrieves the metadata, and provide a json formatted output if request succeeded else failed. 
# The metadata includes information about the VM instance, such as its ID, name, location, and more.




import requests
import json

# Metadata endpoint URL
metadata_url = "http://xxx.xxx.169.254/metadata/instance?api-version=2021-02-01"

# Request headers to specify the metadata API version
headers = {
    "Metadata": "true"
}

try:
    # Send a GET request to the metadata service
    response = requests.get(metadata_url, headers=headers)

    # Check if the request was successful
    if response.status_code == 200:
        # Parse the JSON response
        metadata = json.loads(response.text)
        
        # Format the output as JSON
        formatted_output = json.dumps(metadata, indent=4)

        # Print the formatted JSON output
        print(formatted_output)

    else:
        print(f"Failed. Status code: {response.status_code}")

except requests.exceptions.RequestException as other :
    print(f"Error: {other}")








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