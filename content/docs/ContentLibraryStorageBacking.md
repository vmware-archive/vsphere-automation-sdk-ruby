# VSphereAutomation::Content::ContentLibraryStorageBacking

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**ContentLibraryStorageBackingType**](ContentLibraryStorageBackingType.md) |  | [optional] 
**datastore_id** | **String** | Identifier of the datastore used to store the content in the library. | [optional] 
**storage_uri** | **String** | URI identifying the location used to store the content in the library. &lt;p&gt; The following URI formats are supported: &lt;p&gt; vSphere 6.5 &lt;ul&gt; &lt;li&gt;nfs://server/path?version&#x3D;4 (for vCenter Server Appliance only) - Specifies an NFS Version 4 server.&lt;/li&gt; &lt;li&gt;nfs://server/path (for vCenter Server Appliance only) - Specifies an NFS Version 3 server. The nfs://server:/path format is also supported.&lt;/li&gt; &lt;li&gt;smb://server/path - Specifies an SMB server or Windows share.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt; vSphere 6.0 Update 1 &lt;ul&gt; &lt;li&gt;nfs://server:/path (for vCenter Server Appliance only)&lt;/li&gt; &lt;li&gt;file://unc-server/path (for vCenter Server for Windows only)&lt;/li&gt; &lt;li&gt;file:///mount/point (for vCenter Server Appliance only) - Local file URIs are supported only when the path is a local mount point for an NFS file system. Use of file URIs is strongly discouraged. Instead, use an NFS URI to specify the remote file system.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt; vSphere 6.0 &lt;ul&gt; &lt;li&gt;nfs://server:/path (for vCenter Server Appliance only)&lt;/li&gt; &lt;li&gt;file://unc-server/path (for vCenter Server for Windows only)&lt;/li&gt; &lt;li&gt;file:///path - Local file URIs are supported but strongly discouraged because it may interfere with the performance of vCenter Server.&lt;/li&gt; &lt;/ul&gt; | [optional] 


