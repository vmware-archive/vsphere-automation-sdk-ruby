# VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileValidationResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_errors** | **BOOLEAN** | Whether the validation was succesful or not. In case of errors, the {@link #missingFiles} and {@link #invalidFiles} will contain at least one entry. | 
**missing_files** | **Array&lt;String&gt;** | A {@term set} containing the names of the files that are required but the client hasn&#39;t added. | 
**invalid_files** | [**Array&lt;ContentLibraryItemUpdatesessionFileValidationError&gt;**](ContentLibraryItemUpdatesessionFileValidationError.md) | A {@term list} containing the files that have been identified as invalid and details about the error. | 


