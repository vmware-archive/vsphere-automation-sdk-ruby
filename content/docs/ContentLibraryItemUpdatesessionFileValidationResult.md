# VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileValidationResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_errors** | **Boolean** | Whether the validation was succesful or not. In case of errors, the {@link #missingFiles} and {@link #invalidFiles} will contain at least one entry. | 
**invalid_files** | [**Array&lt;ContentLibraryItemUpdatesessionFileValidationError&gt;**](ContentLibraryItemUpdatesessionFileValidationError.md) | A {@term list} containing the files that have been identified as invalid and details about the error. | 
**missing_files** | **Array&lt;String&gt;** | A {@term set} containing the names of the files that are required but the client hasn&#39;t added. | 


