# AsposeHtml::StorageApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_file**](FileApi.md#copy_file) | **PUT** /html/storage/file/copy/{srcPath} | Copy file
[**delete_file**](FileApi.md#delete_file) | **DELETE** /html/storage/file/{path} | Delete file
[**download_file**](FileApi.md#download_file) | **GET** /html/storage/file/{path} | Download file
[**move_file**](FileApi.md#move_file) | **PUT** /html/storage/file/move/{srcPath} | Move file
[**upload_file**](FileApi.md#upload_file) | **PUT** /html/storage/file/{path} | Upload file


# **copy_file**
> copy_file(src_path, dest_path, opts)

Copy file

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

src_path = "src_path_example" # String | Source file path e.g. '/folder/file.ext'

dest_path = "dest_path_example" # String | Destination file path

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example", # String | Destination storage name
  version_id: "version_id_example" # String | File version ID to copy
}

begin
  #Copy file
  api_instance.copy_file(src_path, dest_path, opts)
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->copy_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_file**
> delete_file(path, opts)

Delete file

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

path = "path_example" # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  version_id: "version_id_example" # String | File version ID to delete
}

begin
  #Delete file
  api_instance.delete_file(path, opts)
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->delete_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_file**
> File download_file(path, opts)

Download file

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

path = "path_example" # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  version_id: "version_id_example" # String | File version ID to download
}

begin
  #Download file
  result = api_instance.download_file(path, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->download_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **move_file**
> move_file(src_path, dest_path, opts)

Move file

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

src_path = "src_path_example" # String | Source file path e.g. '/src.ext'

dest_path = "dest_path_example" # String | Destination file path e.g. '/dest.ext'

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example", # String | Destination storage name
  version_id: "version_id_example" # String | File version ID to move
}

begin
  #Move file
  api_instance.move_file(src_path, dest_path, opts)
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->move_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_file**
> FilesUploadResult upload_file(path, file, opts)

Upload file

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

path = "path_example" # String | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             

file = File.realpath("/path/to/file.txt") # File | File to upload

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Upload file
  result = api_instance.upload_file(path, file, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->upload_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



