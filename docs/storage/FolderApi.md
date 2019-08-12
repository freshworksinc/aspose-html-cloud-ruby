# AsposeHtml::StorageApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_folder**](FolderApi.md#copy_folder) | **PUT** /html/storage/folder/copy/{srcPath} | Copy folder
[**create_folder**](FolderApi.md#create_folder) | **PUT** /html/storage/folder/{path} | Create the folder
[**delete_folder**](FolderApi.md#delete_folder) | **DELETE** /html/storage/folder/{path} | Delete folder
[**get_files_list**](FolderApi.md#get_files_list) | **GET** /html/storage/folder/{path} | Get all files and folders within a folder
[**move_folder**](FolderApi.md#move_folder) | **PUT** /html/storage/folder/move/{srcPath} | Move folder


# **copy_folder**
> copy_folder(src_path, dest_path, opts)

Copy folder

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

src_path = "src_path_example" # String | Source folder path e.g. '/src'

dest_path = "dest_path_example" # String | Destination folder path e.g. '/dst'

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example" # String | Destination storage name
}

begin
  #Copy folder
  api_instance.copy_folder(src_path, dest_path, opts)
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->copy_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_folder**
> create_folder(path, opts)

Create the folder

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

path = "path_example" # String | Folder path to create e.g. 'folder_1/folder_2/'

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Create the folder
  api_instance.create_folder(path, opts)
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(path, opts)

Delete folder

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

path = "path_example" # String | Folder path e.g. '/folder'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  recursive: false # BOOLEAN | Enable to delete folders, subfolders and files
}

begin
  #Delete folder
  api_instance.delete_folder(path, opts)
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_files_list**
> FilesList get_files_list(path, opts)

Get all files and folders within a folder

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

path = "path_example" # String | Folder path e.g. '/folder'

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Get all files and folders within a folder
  result = api_instance.get_files_list(path, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->get_files_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesList**](FilesList.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **move_folder**
> move_folder(src_path, dest_path, opts)

Move folder

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

src_path = "src_path_example" # String | Folder path to move e.g. '/folder'

dest_path = "dest_path_example" # String | Destination folder path to move to e.g '/dst'

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example" # String | Destination storage name
}

begin
  #Move folder
  api_instance.move_folder(src_path, dest_path, opts)
rescue AsposeHtml::ApiError => e
  puts "Exception when calling StorageApi->move_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
