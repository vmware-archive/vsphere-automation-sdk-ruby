# VSphereAutomation::Content::VapiStdLocalizableMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier of the localizable string or message template. &lt;p&gt; This identifier is typically used to retrieve a locale-specific string or message template from a message catalog. | 
**default_message** | **String** | The value of this localizable string or message template in the {@code en_US} (English) locale.  If {@link #id} refers to a message template, the default message will contain the substituted arguments. This value can be used by clients that do not need to display strings and messages in the native language of the user.  It could also be used as a fallback if a client is unable to access the appropriate message catalog. | 
**args** | **Array&lt;String&gt;** | Arguments to be substituted into a message template. | 


