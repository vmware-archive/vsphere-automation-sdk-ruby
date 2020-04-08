# VSphereAutomation::VCenter::VcenterTrustSubscriptionsCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content_type** | **String** | If the optional contentType is specified, the notifcation will be sent using the data-source specific (see HEAD) content type. The default is the JSON-RPC defined \&quot;NotificationEvent\&quot;. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**notification_endpoint** | **String** | The notification endpoint url. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**query_string** | **String** | The query string is the scope of notification and it specify the vctrust id here. If no query string is provided, then it is assumed that all vctrust changes are tracked Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**send_results** | **Boolean** | If the sendResults is set, the actual change will be sent. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


