# VSphereAutomation::Appliance::ApplianceInfraprofileConfigsProfilesSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Custom description provided by the user. If unset description will be empty. | [optional] 
**encryption_key** | **String** | Encryption Key to encrypt/decrypt profiles. If unset encryption will not be used for the profile. | [optional] 
**profiles** | **Array&lt;String&gt;** | Profiles to be exported/imported. If unset or empty, all profiles will be returned. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: infraprofile.profile. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: infraprofile.profile. | [optional] 


