# VSphereAutomation::VCenter::NamespaceManagementSupportBundleApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](NamespaceManagementSupportBundleApi.md#create) | **POST** /api/vcenter/namespace-management/clusters/{cluster}/support-bundle | Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes&#39; bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response&#39;s Content-Disposition header. 


# **create**
> VcenterNamespaceManagementSupportBundleLocation create(cluster)

Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes' bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response's Content-Disposition header. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::NamespaceManagementSupportBundleApi.new
cluster = 'cluster_example' # String | Identifier of cluster for which the Namespaces-related support bundle should be generated. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes' bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response's Content-Disposition header. 
  result = api_instance.create(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementSupportBundleApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster for which the Namespaces-related support bundle should be generated. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNamespaceManagementSupportBundleLocation**](VcenterNamespaceManagementSupportBundleLocation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



