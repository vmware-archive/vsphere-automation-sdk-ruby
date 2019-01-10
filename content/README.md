# vsphere-automation-content

The Ruby gem for the vSphere Content API

- API version: 2.0.0
- Package version: 0.1.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vsphere-automation-content'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vsphere-automation-content

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::ConfigurationApi.new

begin
  #Retrieves the current configuration values.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ConfigurationApi->get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::Content::ConfigurationApi` | [**get**](docs/ConfigurationApi.md#get) | **POST** /com/vmware/content/configuration?~action&#x3D;get | Retrieves the current configuration values.
`VSphereAutomation::Content::ConfigurationApi` | [**update**](docs/ConfigurationApi.md#update) | **PATCH** /com/vmware/content/configuration | Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn't guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.
`VSphereAutomation::Content::LibraryApi` | [**find**](docs/LibraryApi.md#find) | **POST** /com/vmware/content/library?~action&#x3D;find | Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.
`VSphereAutomation::Content::LibraryApi` | [**get**](docs/LibraryApi.md#get) | **GET** /com/vmware/content/library/id:{library_id} | Returns a given {@link LibraryModel}.
`VSphereAutomation::Content::LibraryApi` | [**list**](docs/LibraryApi.md#list) | **GET** /com/vmware/content/library | Returns the identifiers of all libraries of any type in the Content Library.
`VSphereAutomation::Content::LibraryApi` | [**update**](docs/LibraryApi.md#update) | **PATCH** /com/vmware/content/library/id:{library_id} | Updates the properties of a library. <p> This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.
`VSphereAutomation::Content::LibraryItemApi` | [**copy**](docs/LibraryItemApi.md#copy) | **POST** /com/vmware/content/library/item/id:{source_library_item_id}?~action&#x3D;copy | Copies a library item. <p> Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. <p> If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. <p> A library item cannot be copied into a subscribed library.
`VSphereAutomation::Content::LibraryItemApi` | [**create**](docs/LibraryItemApi.md#create) | **POST** /com/vmware/content/library/item | Creates a new library item. <p> A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. <p> A library item cannot be created in a subscribed library.
`VSphereAutomation::Content::LibraryItemApi` | [**delete**](docs/LibraryItemApi.md#delete) | **DELETE** /com/vmware/content/library/item/id:{library_item_id} | Deletes a library item. <p> This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. <p> This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
`VSphereAutomation::Content::LibraryItemApi` | [**find**](docs/LibraryItemApi.md#find) | **POST** /com/vmware/content/library/item?~action&#x3D;find | Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
`VSphereAutomation::Content::LibraryItemApi` | [**get**](docs/LibraryItemApi.md#get) | **GET** /com/vmware/content/library/item/id:{library_item_id} | Returns the {@link ItemModel} with the given identifier.
`VSphereAutomation::Content::LibraryItemApi` | [**list**](docs/LibraryItemApi.md#list) | **GET** /com/vmware/content/library/item | Returns the identifiers of all items in the given library.
`VSphereAutomation::Content::LibraryItemApi` | [**update**](docs/LibraryItemApi.md#update) | **PATCH** /com/vmware/content/library/item/id:{library_item_id} | Updates the specified properties of a library item. <p> This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. <p> This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.
`VSphereAutomation::Content::LibraryItemDownloadSessionApi` | [**cancel**](docs/LibraryItemDownloadSessionApi.md#cancel) | **POST** /com/vmware/content/library/item/download-session/id:{download_session_id}?~action&#x3D;cancel | Cancels the download session. This {@term operation} will abort any ongoing transfers and invalidate transfer urls that the client may be downloading from.
`VSphereAutomation::Content::LibraryItemDownloadSessionApi` | [**create**](docs/LibraryItemDownloadSessionApi.md#create) | **POST** /com/vmware/content/library/item/download-session | Creates a new download session.
`VSphereAutomation::Content::LibraryItemDownloadSessionApi` | [**delete**](docs/LibraryItemDownloadSessionApi.md#delete) | **DELETE** /com/vmware/content/library/item/download-session/id:{download_session_id} | Deletes a download session. This removes the session and all information associated with it. <p> Removing a download session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the transfers will be able to complete). However there will no longer be a means of inspecting the status of those downloads except by seeing the effect on the library item. <p> Download sessions for which there is no download activity or which are complete will automatically be expired and then deleted after a period of time.
`VSphereAutomation::Content::LibraryItemDownloadSessionApi` | [**fail**](docs/LibraryItemDownloadSessionApi.md#fail) | **POST** /com/vmware/content/library/item/download-session/id:{download_session_id}?~action&#x3D;fail | Terminates the download session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to download a file) to the server side.
`VSphereAutomation::Content::LibraryItemDownloadSessionApi` | [**get**](docs/LibraryItemDownloadSessionApi.md#get) | **GET** /com/vmware/content/library/item/download-session/id:{download_session_id} | Gets the download session with the specified identifier, including the most up-to-date status information for the session.
`VSphereAutomation::Content::LibraryItemDownloadSessionApi` | [**keep_alive**](docs/LibraryItemDownloadSessionApi.md#keep_alive) | **POST** /com/vmware/content/library/item/download-session/id:{download_session_id}?~action&#x3D;keep-alive | Keeps a download session alive. This operation is allowed only if the session is in the {@link DownloadSessionModel.State#ACTIVE} state. <p> If there is no activity for a download session for a certain period of time, the download session will expire. The download session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of an active download session.
`VSphereAutomation::Content::LibraryItemDownloadSessionApi` | [**list**](docs/LibraryItemDownloadSessionApi.md#list) | **GET** /com/vmware/content/library/item/download-session | Lists the identifiers of the download sessions created by the calling user. Optionally may filter by library item.
`VSphereAutomation::Content::LibraryItemDownloadsessionFileApi` | [**get**](docs/LibraryItemDownloadsessionFileApi.md#get) | **POST** /com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action&#x3D;get | Retrieves file download information for a specific file.
`VSphereAutomation::Content::LibraryItemDownloadsessionFileApi` | [**list**](docs/LibraryItemDownloadsessionFileApi.md#list) | **GET** /com/vmware/content/library/item/downloadsession/file | Lists the information of all the files in the library item associated with the download session.
`VSphereAutomation::Content::LibraryItemDownloadsessionFileApi` | [**prepare**](docs/LibraryItemDownloadsessionFileApi.md#prepare) | **POST** /com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action&#x3D;prepare | Requests a file to be prepared for download.
`VSphereAutomation::Content::LibraryItemFileApi` | [**get**](docs/LibraryItemFileApi.md#get) | **POST** /com/vmware/content/library/item/file/id:{library_item_id}?~action&#x3D;get | Retrieves the information for a single file in a library item by its name.
`VSphereAutomation::Content::LibraryItemFileApi` | [**list**](docs/LibraryItemFileApi.md#list) | **GET** /com/vmware/content/library/item/file | Lists all of the files that are stored within a given library item.
`VSphereAutomation::Content::LibraryItemStorageApi` | [**get**](docs/LibraryItemStorageApi.md#get) | **POST** /com/vmware/content/library/item/storage/id:{library_item_id}?~action&#x3D;get | Retrieves the storage information for a specific file in a library item.
`VSphereAutomation::Content::LibraryItemStorageApi` | [**list**](docs/LibraryItemStorageApi.md#list) | **GET** /com/vmware/content/library/item/storage | Lists all storage items for a given library item.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**cancel**](docs/LibraryItemUpdateSessionApi.md#cancel) | **POST** /com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;cancel | Cancels the update session and sets its state to {@link UpdateSessionModel.State#CANCELED}. This {@term operation} will free up any temporary resources currently associated with the session. <p> This {@term operation} is not allowed if the session has been already completed. <p> Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**complete**](docs/LibraryItemUpdateSessionApi.md#complete) | **POST** /com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;complete | Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state. <p> Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the {@link content.library.item.updatesession.File#validate} {@term operation}. <p> Modifications are not visible to other clients unless the session is completed and all necessary files have been received.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**create**](docs/LibraryItemUpdateSessionApi.md#create) | **POST** /com/vmware/content/library/item/update-session | Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received. <p> Content Library Service allows only one single update session to be active for a specific library item.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**delete**](docs/LibraryItemUpdateSessionApi.md#delete) | **DELETE** /com/vmware/content/library/item/update-session/id:{update_session_id} | Deletes an update session. This removes the session and all information associated with it. <p> Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item. <p> Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**fail**](docs/LibraryItemUpdateSessionApi.md#fail) | **POST** /com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;fail | Terminates the update session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**get**](docs/LibraryItemUpdateSessionApi.md#get) | **GET** /com/vmware/content/library/item/update-session/id:{update_session_id} | Gets the update session with the specified identifier, including the most up-to-date status information for the session.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**keep_alive**](docs/LibraryItemUpdateSessionApi.md#keep_alive) | **POST** /com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;keep-alive | Keeps an update session alive. <p> If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of the update session.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**list**](docs/LibraryItemUpdateSessionApi.md#list) | **GET** /com/vmware/content/library/item/update-session | Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.
`VSphereAutomation::Content::LibraryItemUpdateSessionApi` | [**update**](docs/LibraryItemUpdateSessionApi.md#update) | **PATCH** /com/vmware/content/library/item/update-session/id:{update_session_id} | Updates the properties of an update session. <p> This is an incremental update to the update session. Any {@term field} in the {@link UpdateSessionModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the property {@link UpdateSessionModel#warningBehavior} of the update session. This will not, for example, update the {@link UpdateSessionModel#libraryItemId} or {@link UpdateSessionModel#state} of an update session. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state.
`VSphereAutomation::Content::LibraryItemUpdatesessionFileApi` | [**add**](docs/LibraryItemUpdatesessionFileApi.md#add) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;add | Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. <p> When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
`VSphereAutomation::Content::LibraryItemUpdatesessionFileApi` | [**get**](docs/LibraryItemUpdatesessionFileApi.md#get) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;get | Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
`VSphereAutomation::Content::LibraryItemUpdatesessionFileApi` | [**list**](docs/LibraryItemUpdatesessionFileApi.md#list) | **GET** /com/vmware/content/library/item/updatesession/file | Lists all files in the library item associated with the update session.
`VSphereAutomation::Content::LibraryItemUpdatesessionFileApi` | [**remove**](docs/LibraryItemUpdatesessionFileApi.md#remove) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;remove | Requests a file to be removed. The file will only be effectively removed when the update session is completed.
`VSphereAutomation::Content::LibraryItemUpdatesessionFileApi` | [**validate**](docs/LibraryItemUpdatesessionFileApi.md#validate) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;validate | Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.
`VSphereAutomation::Content::LibrarySubscribedItemApi` | [**evict**](docs/LibrarySubscribedItemApi.md#evict) | **POST** /com/vmware/content/library/subscribed-item/id:{library_item_id}?~action&#x3D;evict | Evicts the cached content of a library item in a subscribed library. <p> This {@term operation} allows the cached content of a library item to be removed to free up storage capacity. This {@term operation} will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set {@link ItemModel#cached} to false.
`VSphereAutomation::Content::LibrarySubscribedItemApi` | [**sync**](docs/LibrarySubscribedItemApi.md#sync) | **POST** /com/vmware/content/library/subscribed-item/id:{library_item_id}?~action&#x3D;sync | Forces the synchronization of an individual library item in a subscribed library. <p> Synchronizing an individual item will update that item's metadata from the remote source. If the source library item on the remote library has been deleted, this {@term operation} will delete the library item from the subscribed library as well. <p> The default behavior of the synchronization is determined by the {@link SubscriptionInfo} of the library which owns the library item. <ul> <li>If {@link SubscriptionInfo#onDemand} is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the {@param.name forceSyncContent} {@term parameter}.</li> <li>If {@link SubscriptionInfo#onDemand} is false, then this call will always synchronize the file content. The {@param.name forceSyncContent} {@term parameter} is ignored when the subscription is not on-demand.</li> </ul> When the file content has been synchronized, the {@link ItemModel#cached} {@term field} will be true. <p> This {@term operation} will return immediately and create an asynchronous task to perform the synchronization.
`VSphereAutomation::Content::LocalLibraryApi` | [**create**](docs/LocalLibraryApi.md#create) | **POST** /com/vmware/content/local-library | Creates a new local library.
`VSphereAutomation::Content::LocalLibraryApi` | [**delete**](docs/LocalLibraryApi.md#delete) | **DELETE** /com/vmware/content/local-library/id:{library_id} | Deletes the specified local library. <p> Deleting a local library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
`VSphereAutomation::Content::LocalLibraryApi` | [**get**](docs/LocalLibraryApi.md#get) | **GET** /com/vmware/content/local-library/id:{library_id} | Returns a given local library.
`VSphereAutomation::Content::LocalLibraryApi` | [**list**](docs/LocalLibraryApi.md#list) | **GET** /com/vmware/content/local-library | Returns the identifiers of all local libraries in the Content Library.
`VSphereAutomation::Content::LocalLibraryApi` | [**update**](docs/LocalLibraryApi.md#update) | **PATCH** /com/vmware/content/local-library/id:{library_id} | Updates the properties of a local library. <p> This is an incremental update to the local library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**create**](docs/SubscribedLibraryApi.md#create) | **POST** /com/vmware/content/subscribed-library | Creates a new subscribed library. <p> Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**delete**](docs/SubscribedLibraryApi.md#delete) | **DELETE** /com/vmware/content/subscribed-library/id:{library_id} | Deletes the specified subscribed library. <p> Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**evict**](docs/SubscribedLibraryApi.md#evict) | **POST** /com/vmware/content/subscribed-library/id:{library_id}?~action&#x3D;evict | Evicts the cached content of an on-demand subscribed library. <p> This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**get**](docs/SubscribedLibraryApi.md#get) | **GET** /com/vmware/content/subscribed-library/id:{library_id} | Returns a given subscribed library.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**list**](docs/SubscribedLibraryApi.md#list) | **GET** /com/vmware/content/subscribed-library | Returns the identifiers of all subscribed libraries in the Content Library.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**probe**](docs/SubscribedLibraryApi.md#probe) | **POST** /com/vmware/content/subscribed-library?~action&#x3D;probe | Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**sync**](docs/SubscribedLibraryApi.md#sync) | **POST** /com/vmware/content/subscribed-library/id:{library_id}?~action&#x3D;sync | Forces the synchronization of the subscribed library. <p> Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.
`VSphereAutomation::Content::SubscribedLibraryApi` | [**update**](docs/SubscribedLibraryApi.md#update) | **PATCH** /com/vmware/content/subscribed-library/id:{library_id} | Updates the properties of a subscribed library. <p> This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.


## Documentation for Models

 - [VSphereAutomation::Content::ContentConfigurationModel](docs/ContentConfigurationModel.md)
 - [VSphereAutomation::Content::ContentConfigurationResult](docs/ContentConfigurationResult.md)
 - [VSphereAutomation::Content::ContentConfigurationUpdate](docs/ContentConfigurationUpdate.md)
 - [VSphereAutomation::Content::ContentLibraryFind](docs/ContentLibraryFind.md)
 - [VSphereAutomation::Content::ContentLibraryFindResult](docs/ContentLibraryFindResult.md)
 - [VSphereAutomation::Content::ContentLibraryFindSpec](docs/ContentLibraryFindSpec.md)
 - [VSphereAutomation::Content::ContentLibraryItemCopy](docs/ContentLibraryItemCopy.md)
 - [VSphereAutomation::Content::ContentLibraryItemCopyResult](docs/ContentLibraryItemCopyResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemCreate](docs/ContentLibraryItemCreate.md)
 - [VSphereAutomation::Content::ContentLibraryItemCreateResult](docs/ContentLibraryItemCreateResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionCreate](docs/ContentLibraryItemDownloadSessionCreate.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionCreateResult](docs/ContentLibraryItemDownloadSessionCreateResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionFail](docs/ContentLibraryItemDownloadSessionFail.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionKeepAlive](docs/ContentLibraryItemDownloadSessionKeepAlive.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionListResult](docs/ContentLibraryItemDownloadSessionListResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionModel](docs/ContentLibraryItemDownloadSessionModel.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionModelState](docs/ContentLibraryItemDownloadSessionModelState.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadSessionResult](docs/ContentLibraryItemDownloadSessionResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFileEndpointType](docs/ContentLibraryItemDownloadsessionFileEndpointType.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFileGet](docs/ContentLibraryItemDownloadsessionFileGet.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFileInfo](docs/ContentLibraryItemDownloadsessionFileInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFileListResult](docs/ContentLibraryItemDownloadsessionFileListResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFilePrepare](docs/ContentLibraryItemDownloadsessionFilePrepare.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFilePrepareResult](docs/ContentLibraryItemDownloadsessionFilePrepareResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFilePrepareStatus](docs/ContentLibraryItemDownloadsessionFilePrepareStatus.md)
 - [VSphereAutomation::Content::ContentLibraryItemDownloadsessionFileResult](docs/ContentLibraryItemDownloadsessionFileResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemFileChecksumAlgorithm](docs/ContentLibraryItemFileChecksumAlgorithm.md)
 - [VSphereAutomation::Content::ContentLibraryItemFileChecksumInfo](docs/ContentLibraryItemFileChecksumInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemFileGet](docs/ContentLibraryItemFileGet.md)
 - [VSphereAutomation::Content::ContentLibraryItemFileInfo](docs/ContentLibraryItemFileInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemFileListResult](docs/ContentLibraryItemFileListResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemFileResult](docs/ContentLibraryItemFileResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemFind](docs/ContentLibraryItemFind.md)
 - [VSphereAutomation::Content::ContentLibraryItemFindResult](docs/ContentLibraryItemFindResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemFindSpec](docs/ContentLibraryItemFindSpec.md)
 - [VSphereAutomation::Content::ContentLibraryItemListResult](docs/ContentLibraryItemListResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemModel](docs/ContentLibraryItemModel.md)
 - [VSphereAutomation::Content::ContentLibraryItemResult](docs/ContentLibraryItemResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemStorageGet](docs/ContentLibraryItemStorageGet.md)
 - [VSphereAutomation::Content::ContentLibraryItemStorageInfo](docs/ContentLibraryItemStorageInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemStorageListResult](docs/ContentLibraryItemStorageListResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemStorageResult](docs/ContentLibraryItemStorageResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemTransferEndpoint](docs/ContentLibraryItemTransferEndpoint.md)
 - [VSphereAutomation::Content::ContentLibraryItemTransferStatus](docs/ContentLibraryItemTransferStatus.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdate](docs/ContentLibraryItemUpdate.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionCreate](docs/ContentLibraryItemUpdateSessionCreate.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionCreateResult](docs/ContentLibraryItemUpdateSessionCreateResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionFail](docs/ContentLibraryItemUpdateSessionFail.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionKeepAlive](docs/ContentLibraryItemUpdateSessionKeepAlive.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionListResult](docs/ContentLibraryItemUpdateSessionListResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionModel](docs/ContentLibraryItemUpdateSessionModel.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionModelState](docs/ContentLibraryItemUpdateSessionModelState.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionResult](docs/ContentLibraryItemUpdateSessionResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdateSessionUpdate](docs/ContentLibraryItemUpdateSessionUpdate.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionCertificateInfo](docs/ContentLibraryItemUpdatesessionCertificateInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileAdd](docs/ContentLibraryItemUpdatesessionFileAdd.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileAddResult](docs/ContentLibraryItemUpdatesessionFileAddResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileAddSpec](docs/ContentLibraryItemUpdatesessionFileAddSpec.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileGet](docs/ContentLibraryItemUpdatesessionFileGet.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileInfo](docs/ContentLibraryItemUpdatesessionFileInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileListResult](docs/ContentLibraryItemUpdatesessionFileListResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileRemove](docs/ContentLibraryItemUpdatesessionFileRemove.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileResult](docs/ContentLibraryItemUpdatesessionFileResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileSourceType](docs/ContentLibraryItemUpdatesessionFileSourceType.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileValidateResult](docs/ContentLibraryItemUpdatesessionFileValidateResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileValidationError](docs/ContentLibraryItemUpdatesessionFileValidationError.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileValidationResult](docs/ContentLibraryItemUpdatesessionFileValidationResult.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionPreviewInfo](docs/ContentLibraryItemUpdatesessionPreviewInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionPreviewInfoState](docs/ContentLibraryItemUpdatesessionPreviewInfoState.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionPreviewWarningInfo](docs/ContentLibraryItemUpdatesessionPreviewWarningInfo.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionWarningBehavior](docs/ContentLibraryItemUpdatesessionWarningBehavior.md)
 - [VSphereAutomation::Content::ContentLibraryItemUpdatesessionWarningType](docs/ContentLibraryItemUpdatesessionWarningType.md)
 - [VSphereAutomation::Content::ContentLibraryListResult](docs/ContentLibraryListResult.md)
 - [VSphereAutomation::Content::ContentLibraryModel](docs/ContentLibraryModel.md)
 - [VSphereAutomation::Content::ContentLibraryModelLibraryType](docs/ContentLibraryModelLibraryType.md)
 - [VSphereAutomation::Content::ContentLibraryOptimizationInfo](docs/ContentLibraryOptimizationInfo.md)
 - [VSphereAutomation::Content::ContentLibraryPublishInfo](docs/ContentLibraryPublishInfo.md)
 - [VSphereAutomation::Content::ContentLibraryPublishInfoAuthenticationMethod](docs/ContentLibraryPublishInfoAuthenticationMethod.md)
 - [VSphereAutomation::Content::ContentLibraryResult](docs/ContentLibraryResult.md)
 - [VSphereAutomation::Content::ContentLibraryStorageBacking](docs/ContentLibraryStorageBacking.md)
 - [VSphereAutomation::Content::ContentLibraryStorageBackingType](docs/ContentLibraryStorageBackingType.md)
 - [VSphereAutomation::Content::ContentLibrarySubscribedItemSync](docs/ContentLibrarySubscribedItemSync.md)
 - [VSphereAutomation::Content::ContentLibrarySubscriptionInfo](docs/ContentLibrarySubscriptionInfo.md)
 - [VSphereAutomation::Content::ContentLibrarySubscriptionInfoAuthenticationMethod](docs/ContentLibrarySubscriptionInfoAuthenticationMethod.md)
 - [VSphereAutomation::Content::ContentLibraryUpdate](docs/ContentLibraryUpdate.md)
 - [VSphereAutomation::Content::ContentLocalLibraryCreate](docs/ContentLocalLibraryCreate.md)
 - [VSphereAutomation::Content::ContentLocalLibraryCreateResult](docs/ContentLocalLibraryCreateResult.md)
 - [VSphereAutomation::Content::ContentLocalLibraryListResult](docs/ContentLocalLibraryListResult.md)
 - [VSphereAutomation::Content::ContentLocalLibraryResult](docs/ContentLocalLibraryResult.md)
 - [VSphereAutomation::Content::ContentLocalLibraryUpdate](docs/ContentLocalLibraryUpdate.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryCreate](docs/ContentSubscribedLibraryCreate.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryCreateResult](docs/ContentSubscribedLibraryCreateResult.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryListResult](docs/ContentSubscribedLibraryListResult.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryProbe](docs/ContentSubscribedLibraryProbe.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryProbeResult](docs/ContentSubscribedLibraryProbeResult.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryProbeResultStatus](docs/ContentSubscribedLibraryProbeResultStatus.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryResult](docs/ContentSubscribedLibraryResult.md)
 - [VSphereAutomation::Content::ContentSubscribedLibraryUpdate](docs/ContentSubscribedLibraryUpdate.md)
 - [VSphereAutomation::Content::VapiStdErrorsConcurrentChange](docs/VapiStdErrorsConcurrentChange.md)
 - [VSphereAutomation::Content::VapiStdErrorsConcurrentChangeError](docs/VapiStdErrorsConcurrentChangeError.md)
 - [VSphereAutomation::Content::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::Content::VapiStdErrorsInvalidArgumentError](docs/VapiStdErrorsInvalidArgumentError.md)
 - [VSphereAutomation::Content::VapiStdErrorsInvalidElementConfiguration](docs/VapiStdErrorsInvalidElementConfiguration.md)
 - [VSphereAutomation::Content::VapiStdErrorsInvalidElementConfigurationError](docs/VapiStdErrorsInvalidElementConfigurationError.md)
 - [VSphereAutomation::Content::VapiStdErrorsInvalidElementType](docs/VapiStdErrorsInvalidElementType.md)
 - [VSphereAutomation::Content::VapiStdErrorsInvalidElementTypeError](docs/VapiStdErrorsInvalidElementTypeError.md)
 - [VSphereAutomation::Content::VapiStdErrorsNotAllowedInCurrentState](docs/VapiStdErrorsNotAllowedInCurrentState.md)
 - [VSphereAutomation::Content::VapiStdErrorsNotAllowedInCurrentStateError](docs/VapiStdErrorsNotAllowedInCurrentStateError.md)
 - [VSphereAutomation::Content::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::Content::VapiStdErrorsNotFoundError](docs/VapiStdErrorsNotFoundError.md)
 - [VSphereAutomation::Content::VapiStdErrorsResourceBusy](docs/VapiStdErrorsResourceBusy.md)
 - [VSphereAutomation::Content::VapiStdErrorsResourceBusyError](docs/VapiStdErrorsResourceBusyError.md)
 - [VSphereAutomation::Content::VapiStdErrorsResourceInaccessible](docs/VapiStdErrorsResourceInaccessible.md)
 - [VSphereAutomation::Content::VapiStdErrorsResourceInaccessibleError](docs/VapiStdErrorsResourceInaccessibleError.md)
 - [VSphereAutomation::Content::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::Content::VapiStdErrorsUnauthorizedError](docs/VapiStdErrorsUnauthorizedError.md)
 - [VSphereAutomation::Content::VapiStdErrorsUnsupported](docs/VapiStdErrorsUnsupported.md)
 - [VSphereAutomation::Content::VapiStdErrorsUnsupportedError](docs/VapiStdErrorsUnsupportedError.md)
 - [VSphereAutomation::Content::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)

