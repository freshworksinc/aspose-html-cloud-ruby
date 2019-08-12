# Import API

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_convert_markdown_to_html**](ImportApi.md#get_convert_markdown_to_html) | **GET** /html/{name}/import/md | Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.
[**post_convert_markdown_in_request_to_html**](ImportApi.md#post_convert_markdown_in_request_to_html) | **POST** /html/import/md | Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.
[**put_convert_markdown_to_html**](ImportApi.md#put_convert_markdown_to_html) | **PUT** /html/{name}/import/md | Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.

# **get_convert_markdown_to_html**
> Hash get_convert_markdown_to_html(name, opts)

Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.

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

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = 'name_example' # String | Document name.

opts = { 
  folder: 'folder_example', # String | Source document folder.
  storage: 'storage_example' # String | Source document storage.
}

begin
  #Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.
  result = api_instance.get_convert_markdown_to_html(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_markdown_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **folder** | **String**| Source document folder. | [optional] 
 **storage** | **String**| Source document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **post_convert_markdown_in_request_to_html**
> Hash post_convert_markdown_in_request_to_html(out_path, file, opts)

Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.

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

api_instance = AsposeHtml::HtmlApi.new CONFIG

out_path = 'out_path_example' # String | Full resulting file path in the storage (ex. /folder1/folder2/result.html)

file = File.realpath("/path/to/file.md") # String | File path to be converted.

opts = { 
  storage: nil # String | Target document storage.
}

begin
  #Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.
  result = api_instance.post_convert_markdown_in_request_to_html(out_path, file, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->post_convert_markdown_in_request_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting file path in the storage (ex. /folder1/folder2/result.html) | 
 **file** | **String**| File path to be converted. | 
 **storage** | **String**| The source and resulting document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

# **put_convert_markdown_to_html**
> Hash put_convert_markdown_to_html(name, out_path, opts)

Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.

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

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = 'name_example' # String | Document name.

out_path = 'out_path_example' # String | Full resulting file path in the storage (ex. /folder1/folder2/result.html)

opts = { 
  folder: 'folder_example', # String | The source document folder.
  storage: 'storage_example' # String | The source and resulting document storage.
}

begin
  #Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.
  result = api_instance.put_convert_markdown_to_html(name, out_path, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->put_convert_markdown_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **out_path** | **String**| Full resulting file path in the storage (ex. /folder1/folder2/result.html) | 
 **folder** | **String**| The source document folder. | [optional] 
 **storage** | **String**| The source and resulting document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
