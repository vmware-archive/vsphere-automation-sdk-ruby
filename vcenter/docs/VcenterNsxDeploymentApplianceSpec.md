# VSphereAutomation::VCenter::VcenterNsxDeploymentApplianceSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the appliance to deploy. Should not collide with the name of already existing VMs on the same Folder. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, system generated name will be assigned. | [optional] 
**network** | [**VcenterNsxDeploymentNetwork**](VcenterNsxDeploymentNetwork.md) |  | 
**root_password** | **String** | This password is for appliance OS root user Password must conform to the following requirements: 1. At least 8 characters. 2. No more than 20 characters. 3. At least 1 uppercase character. 4. At least 1 lowercase character. 5. At least 1 number. 6. At least 1 special character (e.g., &#39;!&#39;, &#39;(&#39;, &#39;@&#39;, etc.). 7. Only visible A-Z, a-z, 0-9 and punctuation (spaces are not allowed). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, system generated password will be used. | [optional] 
**size** | **String** | A size descriptor based on the resource requirement of the NSX appliance. Run the install-recommendation API to get the list of deployment sizes. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**thin** | **Boolean** | A thin provisioned virtual disk has space allocated and zeroed on demand as the space is used. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


