# VSphereAutomation::Content::ContentLibrarySubscriptionsCreateSpecSubscribedLibrary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target** | [**ContentLibrarySubscriptionsCreateSpecSubscribedLibraryTarget**](ContentLibrarySubscriptionsCreateSpecSubscribedLibraryTarget.md) |  | 
**new_subscribed_library** | [**ContentLibrarySubscriptionsCreateSpecNewSubscribedLibrary**](ContentLibrarySubscriptionsCreateSpecNewSubscribedLibrary.md) |  | [optional] 
**subscribed_library** | **String** | Identifier of the existing subscribed library to associate with the subscription. Only the subscribed libraries for which {@link SubscriptionInfo#subscriptionUrl} property is set to the {@link PublishInfo#publishUrl} of the published library can be associated with the subscription. | [optional] 
**location** | [**ContentLibrarySubscriptionsLocation**](ContentLibrarySubscriptionsLocation.md) |  | 
**vcenter** | [**ContentLibrarySubscriptionsCreateSpecVcenter**](ContentLibrarySubscriptionsCreateSpecVcenter.md) |  | [optional] 
**placement** | [**ContentLibrarySubscriptionsCreateSpecPlacement**](ContentLibrarySubscriptionsCreateSpecPlacement.md) |  | [optional] 


