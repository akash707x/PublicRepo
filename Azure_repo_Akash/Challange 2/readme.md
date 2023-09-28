# We need to write code that will query the meta data of an instance within Azure and provide a json formatted output. 


1.  API get request would look like following 

GET https://management.azure.com/subscriptions/[subscriptionId]/resourceGroups/sudhaEX/providers/Microsoft.Compute/virtualMachines/samplevm1?api-version=2021-07-01
Authorization: Bearer Token
