# AsposeHtml::StorageApi

All URIs are relative to *https://api.aspose.cloud/v4.0*

| Method                                        | HTTP request          | Description   |
|-----------------------------------------------|-----------------------|---------------|
| [**delete_file**](FileApi.md#delete_file)     | **DELETE** /html/file | Delete file   |
| [**download_file**](FileApi.md#download_file) | **GET** /html/file    | Download file |
| [**upload_file**](FileApi.md#upload_file)     | **POST** /html/file   | Upload file   |


# **delete_file**
> delete_file(path, opts)

Delete file

### Example
```ruby
require 'aspose_html_cloud'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
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

| Name             | Type        | Description                               | Notes      |
|------------------|-------------|-------------------------------------------|------------|
| **path**         | **String**  | File path e.g. &#39;/folder/file.ext&#39; |            |
| **storage_name** | **String**  | Storage name                              | [optional] | 
| **version_id**   | **String**  | File version ID to delete                 | [optional] |

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
    "basePath":"https://api.aspose.cloud/v4.0",
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

| Name              | Type       | Description                               | Notes      |
|-------------------|------------|-------------------------------------------|------------|
| **path**          | **String** | File path e.g. &#39;/folder/file.ext&#39; |            |
| **storage_name**  | **String** | Storage name                              | [optional] | 
| **version_id**    | **String** | File version ID to download               | [optional] | 


### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **upload_file**
> FilesUploadResult upload_file(path, file, opts)

Upload file

### Example
```ruby
require 'aspose_html_cloud'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::StorageApi.new CONFIG

path = "path_example" # String | Directory where to upload file e.g. / or /Folder1             

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

| Name             | Type       | Description                                  | Notes      |
|------------------|------------|----------------------------------------------|------------|
| **path**         | **String** | Directory where to upload e.g. / or /Folder1 |            |
| **file**         | **File**   | File to upload                               |            |
| **storage_name** | **String** | Storage name                                 | [optional] |


### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json
