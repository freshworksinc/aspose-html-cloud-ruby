# AsposeHtml::StorageApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_disc_usage**](StorageApi.md#get_disc_usage) | **GET** /html/storage/disc | Get disc usage
[**get_file_versions**](StorageApi.md#get_file_versions) | **GET** /html/storage/version/{path} | Get file versions
[**object_exists**](StorageApi.md#object_exists) | **GET** /html/storage/exist/{path} | Check if file or folder exists
[**storage_exists**](StorageApi.md#storage_exists) | **GET** /html/storage/{storageName}/exist | Check if storage exists


# **get_disc_usage**
> DiscUsage get_disc_usage(opts)

Get disc usage

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::StorageApi.new CONFIG

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Get disc usage
  result = api_instance.get_disc_usage(opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->get_disc_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**DiscUsage**](DiscUsage.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_file_versions**
> FileVersions get_file_versions(path, opts)

Get file versions

### Example
```ruby
require 'aspose_html_cloud'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::StorageApi.new CONFIG

path = "path_example" # String | File path e.g. '/file.ext'

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Get file versions
  result = api_instance.get_file_versions(path, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->get_file_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FileVersions**](FileVersions.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **object_exists**
> ObjectExist object_exists(path, opts)

Check if file or folder exists

### Example
```ruby
require 'aspose_html_cloud'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::StorageApi.new CONFIG

path = "path_example" # String | File or folder path e.g. '/file.ext' or '/folder'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  version_id: "version_id_example" # String | File version ID
}

begin
  #Check if file or folder exists
  result = api_instance.object_exists(path, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->object_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

### Return type

[**ObjectExist**](ObjectExist.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **storage_exists**
> StorageExist storage_exists(storage_name)

Check if storage exists

### Example
```ruby
require 'aspose_html_cloud'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::StorageApi.new CONFIG

storage_name = "storage_name_example" # String | Storage name


begin
  #Check if storage exists
  result = api_instance.storage_exists(storage_name)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->storage_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
