# VSphereAutomation::VCenter::VcenterLcmDiscoveryProduct

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto** | **Boolean** | Indicates if the product is auto-detected by the system or manually added. If it is set to true it means it is auto-detected. | 
**deployments** | **Array&lt;String&gt;** | The list of hostname/IPs of the instances of the VMware products deployed in the environment. This field would be empty for manually added products. | [optional] 
**installed_product** | **String** | Identifies a product and a version uniquely.  The identifier consists of product internal name and version.  When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: PRODUCT. When operations return a value of this structure as a result, the field will be an identifier for the resource type: PRODUCT. | 
**name** | **String** | A public official product name. | 
**target_version** | **String** | Future version of the product after upgrade. Product.target-version may not be applicable. | [optional] 
**version** | **String** | Current product version. | 


