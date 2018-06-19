# Summarization Api

All URIs are relative to *https://api.aspose.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**summarization_get_detect_html_keywords**](SummarizationApi.md#get_detect_html_keywords) | **GET** /html/{name}/summ/keywords | Get the HTML document keywords using the keyword detection service.
[**summarization_get_detect_html_keywords_by_url**](SummarizationApi.md#get_detect_html_keywords_by_url) | **GET** /html/summ/keywords | Get the keywords from HTML document from Web specified by its URL using the keyword detection service


# **get_detect_html_keywords**
> File get_detect_html_keywords(name, opts)

Get the HTML document keywords using the keyword detection service.

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

name = "name_example" # String | Document name.

opts = { 
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | Document storage.
}

begin
  #Get the HTML document keywords using the keyword detection service.
  result = api_instance.get_detect_html_keywords(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_detect_html_keywords: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| Document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_detect_html_keywords_by_url**
> File get_detect_html_keywords_by_url(source_url)

Get the keywords from HTML document from Web specified by its URL using the keyword detection service

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

source_url = "source_url_example" # String | Source document URL.


begin
  #Get the keywords from HTML document from Web specified by its URL using the keyword detection service
  result = api_instance.get_detect_html_keywords_by_url(source_url)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_detect_html_keywords_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source document URL. | 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
