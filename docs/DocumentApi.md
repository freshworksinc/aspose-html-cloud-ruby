# Document API

All URIs are relative to *https://api.aspose.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_document**](DocumentApi.md#get_document) | **GET** /html/{name} | Return the HTML document by the name from default or specified storage.
[**get_document_fragment_by_x_path**](DocumentApi.md#get_document_fragment_by_x_path) | **GET** /html/{name}/fragments/{outFormat} | Return list of HTML fragments matching the specified XPath query. 
[**get_document_fragment_by_x_path_by_url**](DocumentApi.md#get_document_fragment_by_x_path_by_url) | **GET** /html/fragments/{outFormat} | Return list of HTML fragments matching the specified XPath query by the source page URL.
[**get_document_images**](DocumentApi.md#get_document_images) | **GET** /html/{name}/images/all | Return all HTML document images packaged as a ZIP archive.
[**get_document_images_by_url**](DocumentApi.md#get_document_images_by_url) | **GET** /html/images/all | Return all HTML page images packaged as a ZIP archive by the source page URL.


# **get_document**
> Hash get_document(name, opts)

Return the HTML document by the name from default or specified storage.

### Example
```ruby
# load the gem
require 'aspose_html'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v1.1",
    "authPath":"https://api.aspose.cloud/oauth2/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "test.html" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document folder
  folder: "folder_example" # String | The document folder.
}

begin
  #Return the HTML document by the name from default or specified storage.
  result = api_instance.get_document(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document folder | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data, application/zip


# **get_document_fragment_by_x_path**
> Hash get_document_fragment_by_x_path(name, x_path, out_format, opts)

Return list of HTML fragments matching the specified XPath query. 

### Example
```ruby
# load the gem
require 'aspose_html'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v1.1",
    "authPath":"https://api.aspose.cloud/oauth2/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "test2.html.zip" # String | The document name.

x_path = ".//p" # String | XPath query string.

out_format = "plain" # String | Output format. Possible values: 'plain' and 'json'.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Return list of HTML fragments matching the specified XPath query. 
  result = api_instance.get_document_fragment_by_x_path(name, x_path, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_document_fragment_by_x_path: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **x_path** | **String**| XPath query string. | 
 **out_format** | **String**| Output format. Possible values: &#39;plain&#39; and &#39;json&#39;. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **get_document_fragment_by_x_path_by_url**
> Hash get_document_fragment_by_x_path_by_url(source_url, x_path, out_format)

Return list of HTML fragments matching the specified XPath query by the source page URL.

### Example
```ruby
# load the gem
require 'aspose_html'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v1.1",
    "authPath":"https://api.aspose.cloud/oauth2/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

source_url = "https://stallman.org/articles/anonymous-payments-thru-phones.html"
x_path = ".//p"
out_format = "plain"

begin
  #Return list of HTML fragments matching the specified XPath query. 
  result = api_instance.get_document_fragment_by_x_path_by_url(source_url, x_path, out_format)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_document_fragment_by_x_path_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 
 **x_path** | **String**| XPath query string. | 
 **out_format** | **String**| Output format. Possible values: &#39;plain&#39; and &#39;json&#39;. | 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip


# **get_document_images**
> Hash get_document_images(name, opts)

Return all HTML document images packaged as a ZIP archive.

### Example
```ruby
# load the gem
require 'aspose_html'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v1.1",
    "authPath":"https://api.aspose.cloud/oauth2/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

name = "test3.html.zip" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Return all HTML document images packaged as a ZIP archive.
  result = api_instance.get_document_images(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_document_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip


# **get_document_images_by_url**
> Hash get_document_images_by_url(source_url)

Return all HTML page images packaged as a ZIP archive by the source page URL.

### Example
```ruby
# load the gem
require 'aspose_html'

CONFIG = {
    "basePath":"https://api.aspose.cloud/v1.1",
    "authPath":"https://api.aspose.cloud/oauth2/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG


begin
  #Return all HTML document images packaged as a ZIP archive.
  result = api_instance.get_document_images_by_url(source_url)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_document_images_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip
