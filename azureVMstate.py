#!/usr/bin/env python3
# coding: utf-8
#    ____       _       _
#   |  _ \  ___| |_ __ | |__   __ _  ___
#   | | | |/ _ \ | '_ \| '_ \ / _` |/ _ \
#   | |_| |  __/ | |_) | | | | (_| |  __/
#   |____/ \___|_| .__/|_| |_|\__,_|\___|
#                |_|


# version 1.8
# date 2019-08-16
# author: Carlo van Wordragen

import requests
#import json

subscriptionId = 'a8682560-0e6b-4834-accf-21ff95b29125'
tenantId = '3089f1b6-d716-42a9-9dd5-a580cf7b4f12'
clientId = '0407876f-fcd1-4260-bfa4-4180a54beced' # application ID
clientSecret = '2gHRDZHY5SM@T-HasCFBnM:-lx6zkZD4'

url = "https://login.windows.net/%s/oauth2/token" % tenantId
resource = 'https://management.azure.com' # Azure Resource Manager
parameters = {
    'resource' : resource,
    'client_id' : clientId,
    'grant_type' : 'client_credentials',
    'client_secret': clientSecret
}

headers = {'Content-Type': 'application/x-www-form-urlencoded'}
response = requests.post(url, data=parameters, headers=headers)
jsdata = response.json()
access_token = jsdata['access_token']

headers = {'Authorization': 'Bearer ' + access_token,
           'Content-Type': 'application/json'}


# get VM's in all resource groups - reportlist
url = 'https://management.azure.com/subscriptions/'+subscriptionId+'/resourceGroups?api-version=2014-04-01'
response = requests.get(url, headers=headers, timeout=5)
jsdata = response.json()

reportList = list()
for resourceGroup in jsdata['value']:
    resourceGroupName = resourceGroup['name']

    url = 'https://management.azure.com/subscriptions/'+subscriptionId+'/resourceGroups/'+resourceGroupName+'/providers/Microsoft.Compute/virtualMachines?api-version=2018-10-01'
    response = requests.get(url, headers=headers)
    jsdata = response.json()

    if len(jsdata['value']): # resource group has VM's
        for vm in jsdata['value']:
            vmName = vm['name']
            vmState = {'resourceGroup': resourceGroupName,
                       'vmName' : vmName}

            url = 'https://management.azure.com/subscriptions/'+subscriptionId+'/resourceGroups/'+resourceGroupName+'/providers/Microsoft.Compute/virtualMachines/'+vmName+'/instanceView?api-version=2017-03-30'
            response = requests.get(url, headers=headers)
            vmdata = response.json()
            for status in vmdata['statuses']:
                statusState, statusCode = status['code'].split('/')
                vmState[statusState] = statusCode
            reportList.append(vmState)


# show reportlist
frmtstr = '{:20}{:25}{:12}{}'
print (frmtstr.format('resource group','vm name','provision','power'))
for vmState in sorted(reportList, key=lambda x: x['PowerState']!='running'):
    print (frmtstr.format(vmState['resourceGroup'],
                               vmState['vmName'],
                               vmState['ProvisioningState'],
                               vmState['PowerState']))
