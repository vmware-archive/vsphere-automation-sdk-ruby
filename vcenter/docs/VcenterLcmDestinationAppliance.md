# VSphereAutomation::VCenter::VcenterLcmDestinationAppliance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appliance_disk_size** | [**VcenterLcmStorageSize**](VcenterLcmStorageSize.md) |  | [optional] 
**appliance_name** | **String** | The name of the appliance to deploy. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**appliance_size** | [**VcenterLcmApplianceSize**](VcenterLcmApplianceSize.md) |  | [optional] 
**appliance_type** | [**VcenterLcmApplianceType**](VcenterLcmApplianceType.md) |  | 
**network** | [**VcenterLcmNetwork**](VcenterLcmNetwork.md) |  | 
**ova_location** | **String** | The location of the OVA file. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**ova_location_ssl_thumbprint** | **String** | SSL thumbprint of ssl verification. If provided, ssl_verify can be omitted or set to true. If omitted, ssl_verify must be false. If omitted and ssl_verify is true, an error will occur. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If ova_location_ssl_verify is False, this field can be omitted | [optional] 
**ova_location_ssl_verify** | **Boolean** | A flag to indicate whether the ssl verification is required. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If DestinationAppliance.ova-location-ssl-thumbprint is provided, this field can be omitted If unset, defaults to True | [optional] 
**ovftool_arguments** | [**Array&lt;VcenterLcmDestinationApplianceOvftoolArguments&gt;**](VcenterLcmDestinationApplianceOvftoolArguments.md) | The OVF Tool arguments to be included. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Not required when no OVF Tool argument to pass through | [optional] 
**ovftool_location** | **String** | The location of the OVF Tool. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**ovftool_location_ssl_thumbprint** | **String** | SSL thumbprint of OVF Tool location to be verified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When ovftoolLocationSslVerify is set to False, this field can be omitted. | [optional] 
**ovftool_location_ssl_verify** | **Boolean** | Flag to indicate whether or not to verify the SSL thumbprint of OVF Tool location. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if unset, Default to be True. | [optional] 
**root_password** | **String** | Password must conform to the following requirements: 1. At least 8 characters. 2. No more than 20 characters. 3. At least 1 uppercase character. 4. At least 1 lowercase character. 5. At least 1 number. 6. At least 1 special character (e.g., &#39;!&#39;, &#39;(&#39;, &#39;@&#39;, etc.). 7. Only visible A-Z, a-z, 0-9 and punctuation (spaces are not allowed). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**services** | [**VcenterLcmDestinationApplianceService**](VcenterLcmDestinationApplianceService.md) |  | 
**thin_disk_mode** | **Boolean** | Whether to deploy the appliance with thin mode virtual disks. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**time** | [**VcenterLcmTime**](VcenterLcmTime.md) |  | 
**vcsa_embedded** | [**VcenterLcmVcsaEmbedded**](VcenterLcmVcsaEmbedded.md) |  | [optional] 
**vmc** | [**VcenterLcmExternalVcsa**](VcenterLcmExternalVcsa.md) |  | [optional] 


