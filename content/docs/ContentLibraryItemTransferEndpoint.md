# VSphereAutomation::Content::ContentLibraryItemTransferEndpoint

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | Transfer endpoint URI. The supported URI schemes are: {@code http}, {@code https}, {@code file}, and {@code ds}. &lt;p&gt; An endpoint URI with the {@code ds} scheme specifies the location of the file on the datastore. The format of the datastore URI is: &lt;ul&gt; &lt;li&gt;ds:///vmfs/volumes/uuid/path&lt;/li&gt; &lt;/ul&gt; &lt;p&gt; Some examples of valid file URI formats are: &lt;ul&gt; &lt;li&gt;file:///path&lt;/li&gt; &lt;li&gt;file:///C:/path&lt;/li&gt; &lt;li&gt;file://unc-server/path&lt;/li&gt; &lt;/ul&gt; &lt;p&gt; When the transfer endpoint is a file or datastore location, the server can import the file directly from the storage backing without the overhead of streaming over HTTP. | 
**ssl_certificate_thumbprint** | **String** | Thumbprint of the expected SSL certificate for this endpoint. Only used for HTTPS connections. The thumbprint is the SHA-1 hash of the DER encoding of the remote endpoint&#39;s SSL certificate. If set, the remote endpoint&#39;s SSL certificate is only accepted if it matches this thumbprint, and no other certificate validation is performed. | [optional] 


