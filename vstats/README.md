# vsphere-automation-vstats

The Ruby gem for the vSphere VStats API

- API version: 2.0.0
- Package version: 0.5.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vsphere-automation-vstats'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vsphere-automation-vstats

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vsphere-automation-vstats'

# Setup authorization
VSphereAutomation.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VStats::AcqSpecsApi.new
opts = {
  request_body: VStats::VstatsAcqSpecsCreateSpec.new # VstatsAcqSpecsCreateSpec | 
}

begin
  #Create a new acquisition specification record. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AcqSpecsApi->create: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::VStats::AcqSpecsApi` | [**create**](docs/AcqSpecsApi.md#create) | **POST** /api/stats/acq-specs | Create a new acquisition specification record. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::AcqSpecsApi` | [**delete**](docs/AcqSpecsApi.md#delete) | **DELETE** /api/stats/acq-specs/{id} | Delete an acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::AcqSpecsApi` | [**get**](docs/AcqSpecsApi.md#get) | **GET** /api/stats/acq-specs/{id} | Returns information about a specific acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::AcqSpecsApi` | [**list**](docs/AcqSpecsApi.md#list) | **GET** /api/stats/acq-specs | Returns information about all acquisition specifications. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::AcqSpecsApi` | [**update**](docs/AcqSpecsApi.md#update) | **PATCH** /api/stats/acq-specs/{id} | Update an existing acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::ConfigurationApi` | [**get**](docs/ConfigurationApi.md#get) | **GET** /api/stats/configuration | Returns log level information. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::ConfigurationApi` | [**update**](docs/ConfigurationApi.md#update) | **PATCH** /api/stats/configuration | Update vStats service settings. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::CounterMetadataApi` | [**get**](docs/CounterMetadataApi.md#get) | **GET** /api/stats/counters/{cid}/metadata/{mid} | Returns information about a specific CounterMetadata. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::CounterMetadataApi` | [**get_default**](docs/CounterMetadataApi.md#get_default) | **GET** /api/stats/counters/{cid}/metadata/default | This operation returns the \"default\" CounterMetadata. A Counter has at least one related metadata object. Usually, stats providers (for example hosts) are in agreement about the default metadata. In this case the returned list has a single metadata object.   Sometimes, when providers are in \"disagreement\" about the default, then the returned list would include all the possible \"defaults\". This potential ambiguity isn't a real issue because consumers of the vStats API rarely need to specify the \"mid\" of metadata. Therefore, this API is used primarily for informational purposes. . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::CounterMetadataApi` | [**list**](docs/CounterMetadataApi.md#list) | **GET** /api/stats/counters/{cid}/metadata | Returns information about all counter metadata records for a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::CounterSetsApi` | [**get**](docs/CounterSetsApi.md#get) | **GET** /api/stats/counter-sets/{counter_set} | Returns information about a specific counter set. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::CounterSetsApi` | [**list**](docs/CounterSetsApi.md#list) | **GET** /api/stats/counter-sets | Returns information about all the counter sets. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::CountersApi` | [**get**](docs/CountersApi.md#get) | **GET** /api/stats/counters/{cid} | Returns information about a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::CountersApi` | [**list**](docs/CountersApi.md#list) | **GET** /api/stats/counters | Returns information about all counters matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::DataApi` | [**query_data_points**](docs/DataApi.md#query_data_points) | **GET** /api/stats/data/dp | Returns Data.DataPointsResult matching the filter parameters.   /vstats/data/dp?types=VM&types=VCPU    /vstats/data/dp?rsrcs=type.HOST=host-16&rsrcs=type.VM=vm-31 . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::EndpointsApi` | [**create**](docs/EndpointsApi.md#create) | **POST** /api/stats/endpoints | Creates a new endpoint record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VStats::EndpointsApi` | [**delete**](docs/EndpointsApi.md#delete) | **DELETE** /api/stats/endpoints | Deletes multiple endpoint configurations based on epids. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VStats::EndpointsApi` | [**list**](docs/EndpointsApi.md#list) | **GET** /api/stats/endpoints | Returns information about all the endpoints configured with vStats. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VStats::EndpointsApi` | [**update**](docs/EndpointsApi.md#update) | **PATCH** /api/stats/endpoints/{id} | Updates an existing endpoint configuration. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VStats::HealthApi` | [**get**](docs/HealthApi.md#get) | **GET** /api/stats/health | Returns information about service health. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::ManagementApi` | [**get**](docs/ManagementApi.md#get) | **GET** /api/stats/management | Returns the configuration information of databases. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::MetricsApi` | [**list**](docs/MetricsApi.md#list) | **GET** /api/stats/metrics | Returns list of available Metrics as supplied by the discovered providers. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::ProvidersApi` | [**list**](docs/ProvidersApi.md#list) | **GET** /api/stats/providers | Returns a list of stats providers. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::PushDataFormatsApi` | [**list**](docs/PushDataFormatsApi.md#list) | **GET** /api/stats/push-data-formats | Returns a list of vstats supported push data formats. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VStats::ResourceAddressSchemasApi` | [**get**](docs/ResourceAddressSchemasApi.md#get) | **GET** /api/stats/rsrc-addr-schemas/{id} | Returns information about a specific resource address schema. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::ResourceAddressesApi` | [**get**](docs/ResourceAddressesApi.md#get) | **GET** /api/stats/rsrc-addrs/{id} | Returns information about a specific Resource Address. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::ResourceAddressesApi` | [**list**](docs/ResourceAddressesApi.md#list) | **GET** /api/stats/rsrc-addrs | Returns the list of Resource Addresses matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::ResourceTypesApi` | [**list**](docs/ResourceTypesApi.md#list) | **GET** /api/stats/rsrc-types | Returns a list of available resource types. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::RetentionPlansApi` | [**get_default**](docs/RetentionPlansApi.md#get_default) | **GET** /api/stats/retentions/default | Returns the default retention plan. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VStats::TelemetryApi` | [**get**](docs/TelemetryApi.md#get) | **GET** /api/stats/telemetry | Returns a view to metrics internal to the vStats service instance. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


## Documentation for Models

 - [VSphereAutomation::VStats::VapiStdErrorsError](docs/VapiStdErrorsError.md)
 - [VSphereAutomation::VStats::VapiStdErrorsErrorType](docs/VapiStdErrorsErrorType.md)
 - [VSphereAutomation::VStats::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::VStats::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::VStats::VapiStdErrorsUnauthenticated](docs/VapiStdErrorsUnauthenticated.md)
 - [VSphereAutomation::VStats::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::VStats::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)
 - [VSphereAutomation::VStats::VapiStdLocalizationParam](docs/VapiStdLocalizationParam.md)
 - [VSphereAutomation::VStats::VapiStdLocalizationParamDateTimeFormat](docs/VapiStdLocalizationParamDateTimeFormat.md)
 - [VSphereAutomation::VStats::VapiStdNestedLocalizableMessage](docs/VapiStdNestedLocalizableMessage.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsCounterSpec](docs/VstatsAcqSpecsCounterSpec.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsCreate](docs/VstatsAcqSpecsCreate.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsCreateSpec](docs/VstatsAcqSpecsCreateSpec.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsFilterSpec](docs/VstatsAcqSpecsFilterSpec.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsInfo](docs/VstatsAcqSpecsInfo.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsListResult](docs/VstatsAcqSpecsListResult.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsStatus](docs/VstatsAcqSpecsStatus.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsUpdate](docs/VstatsAcqSpecsUpdate.md)
 - [VSphereAutomation::VStats::VstatsAcqSpecsUpdateSpec](docs/VstatsAcqSpecsUpdateSpec.md)
 - [VSphereAutomation::VStats::VstatsCidMid](docs/VstatsCidMid.md)
 - [VSphereAutomation::VStats::VstatsConfigurationInfo](docs/VstatsConfigurationInfo.md)
 - [VSphereAutomation::VStats::VstatsConfigurationLogLevel](docs/VstatsConfigurationLogLevel.md)
 - [VSphereAutomation::VStats::VstatsConfigurationUpdate](docs/VstatsConfigurationUpdate.md)
 - [VSphereAutomation::VStats::VstatsConfigurationUpdateSpec](docs/VstatsConfigurationUpdateSpec.md)
 - [VSphereAutomation::VStats::VstatsCounterMetadataCounterEditionStatus](docs/VstatsCounterMetadataCounterEditionStatus.md)
 - [VSphereAutomation::VStats::VstatsCounterMetadataFilterSpec](docs/VstatsCounterMetadataFilterSpec.md)
 - [VSphereAutomation::VStats::VstatsCounterMetadataInfo](docs/VstatsCounterMetadataInfo.md)
 - [VSphereAutomation::VStats::VstatsCounterMetadataMetricUnits](docs/VstatsCounterMetadataMetricUnits.md)
 - [VSphereAutomation::VStats::VstatsCounterMetadataSampleType](docs/VstatsCounterMetadataSampleType.md)
 - [VSphereAutomation::VStats::VstatsCounterMetadataUnitsFactor](docs/VstatsCounterMetadataUnitsFactor.md)
 - [VSphereAutomation::VStats::VstatsCounterSetsInfo](docs/VstatsCounterSetsInfo.md)
 - [VSphereAutomation::VStats::VstatsCountersFilterSpec](docs/VstatsCountersFilterSpec.md)
 - [VSphereAutomation::VStats::VstatsCountersInfo](docs/VstatsCountersInfo.md)
 - [VSphereAutomation::VStats::VstatsDataDataPoint](docs/VstatsDataDataPoint.md)
 - [VSphereAutomation::VStats::VstatsDataDataPointsResult](docs/VstatsDataDataPointsResult.md)
 - [VSphereAutomation::VStats::VstatsDataFilterSpec](docs/VstatsDataFilterSpec.md)
 - [VSphereAutomation::VStats::VstatsEndpointsAuthSpec](docs/VstatsEndpointsAuthSpec.md)
 - [VSphereAutomation::VStats::VstatsEndpointsBasicAuth](docs/VstatsEndpointsBasicAuth.md)
 - [VSphereAutomation::VStats::VstatsEndpointsCreate](docs/VstatsEndpointsCreate.md)
 - [VSphereAutomation::VStats::VstatsEndpointsCreateSpec](docs/VstatsEndpointsCreateSpec.md)
 - [VSphereAutomation::VStats::VstatsEndpointsFilterSpec](docs/VstatsEndpointsFilterSpec.md)
 - [VSphereAutomation::VStats::VstatsEndpointsInfo](docs/VstatsEndpointsInfo.md)
 - [VSphereAutomation::VStats::VstatsEndpointsStatus](docs/VstatsEndpointsStatus.md)
 - [VSphereAutomation::VStats::VstatsEndpointsUpdate](docs/VstatsEndpointsUpdate.md)
 - [VSphereAutomation::VStats::VstatsEndpointsUpdateSpec](docs/VstatsEndpointsUpdateSpec.md)
 - [VSphereAutomation::VStats::VstatsHealthInfo](docs/VstatsHealthInfo.md)
 - [VSphereAutomation::VStats::VstatsManagementDbsConfig](docs/VstatsManagementDbsConfig.md)
 - [VSphereAutomation::VStats::VstatsManagementDbsConfigs](docs/VstatsManagementDbsConfigs.md)
 - [VSphereAutomation::VStats::VstatsManagementInfo](docs/VstatsManagementInfo.md)
 - [VSphereAutomation::VStats::VstatsManagementTsdbSizeInfo](docs/VstatsManagementTsdbSizeInfo.md)
 - [VSphereAutomation::VStats::VstatsMetricsSummary](docs/VstatsMetricsSummary.md)
 - [VSphereAutomation::VStats::VstatsProvidersSummary](docs/VstatsProvidersSummary.md)
 - [VSphereAutomation::VStats::VstatsPushDataFormatsSummary](docs/VstatsPushDataFormatsSummary.md)
 - [VSphereAutomation::VStats::VstatsQueryPredicate](docs/VstatsQueryPredicate.md)
 - [VSphereAutomation::VStats::VstatsResourceAddressSchemasInfo](docs/VstatsResourceAddressSchemasInfo.md)
 - [VSphereAutomation::VStats::VstatsResourceAddressSchemasQueryCapabilities](docs/VstatsResourceAddressSchemasQueryCapabilities.md)
 - [VSphereAutomation::VStats::VstatsResourceAddressSchemasResourceIdDefinition](docs/VstatsResourceAddressSchemasResourceIdDefinition.md)
 - [VSphereAutomation::VStats::VstatsResourceAddressesFilterSpec](docs/VstatsResourceAddressesFilterSpec.md)
 - [VSphereAutomation::VStats::VstatsResourceAddressesInfo](docs/VstatsResourceAddressesInfo.md)
 - [VSphereAutomation::VStats::VstatsResourceAddressesListResult](docs/VstatsResourceAddressesListResult.md)
 - [VSphereAutomation::VStats::VstatsResourceTypesSummary](docs/VstatsResourceTypesSummary.md)
 - [VSphereAutomation::VStats::VstatsRetentionPlansInfo](docs/VstatsRetentionPlansInfo.md)
 - [VSphereAutomation::VStats::VstatsRetentionPlansMaxAgesInfo](docs/VstatsRetentionPlansMaxAgesInfo.md)
 - [VSphereAutomation::VStats::VstatsRsrcId](docs/VstatsRsrcId.md)
 - [VSphereAutomation::VStats::VstatsTelemetryFilterSpec](docs/VstatsTelemetryFilterSpec.md)
 - [VSphereAutomation::VStats::VstatsTelemetryInfo](docs/VstatsTelemetryInfo.md)
 - [VSphereAutomation::VStats::VstatsTelemetryTelemetryCounter](docs/VstatsTelemetryTelemetryCounter.md)
 - [VSphereAutomation::VStats::VstatsTelemetryTelemetryGauge](docs/VstatsTelemetryTelemetryGauge.md)
 - [VSphereAutomation::VStats::VstatsTelemetryTelemetryHistogram](docs/VstatsTelemetryTelemetryHistogram.md)
 - [VSphereAutomation::VStats::VstatsTelemetryTelemetryMeter](docs/VstatsTelemetryTelemetryMeter.md)
 - [VSphereAutomation::VStats::VstatsTelemetryTelemetryTimer](docs/VstatsTelemetryTelemetryTimer.md)
 - [VSphereAutomation::VStats::VstatsTelemetryTelemetryType](docs/VstatsTelemetryTelemetryType.md)
 - [VSphereAutomation::VStats::VstatsUserInfo](docs/VstatsUserInfo.md)

