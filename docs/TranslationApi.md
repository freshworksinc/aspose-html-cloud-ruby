# Translation API

All URIs are relative to *https://api.aspose.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_translate_document**](TranslationApi.md#get_translate_document) | **GET** /html/{name}/translate/{srcLang}/{resLang} | Translate the HTML document specified by the name from default or specified storage. 
[**get_translate_document_by_url**](TranslationApi.md#get_translate_document_by_url) | **GET** /html/translate/{srcLang}/{resLang} | Translate the HTML document from Web specified by its URL.


# **get_translate_document**
> File get_translate_document(name, src_lang, res_lang, opts)

Translate the HTML document specified by the name from default or specified storage. 

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

name = "test_en.html" # String | Document name.

src_lang = "en" # String | Source language.

res_lang = "fr" # String | Result language.

opts = { 
  storage: "storage_example", # String | The source document storage.
  folder: "folder_example" # String | The source document folder.
}

begin
  #Translate the HTML document specified by the name from default or specified storage. 
  result = api_instance.get_translate_document(name, src_lang, res_lang, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_translate_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **src_lang** | **String**| Source language. | 
 **res_lang** | **String**| Result language. | 
 **storage** | **String**| The source document storage. | [optional] 
 **folder** | **String**| The source document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_translate_document_by_url**
> File get_translate_document_by_url(source_url, src_lang, res_lang)

Translate the HTML document from Web specified by its URL.

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

source_url = "https://www.le.ac.uk/oerresources/bdra/html/page_01.htm" # String | Source document URL.

src_lang = "en" # String | Source language.

res_lang = "de" # String | Result language.


begin
  #Translate the HTML document from Web specified by its URL.
  result = api_instance.get_translate_document_by_url(source_url, src_lang, res_lang)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_translate_document_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source document URL. | 
 **src_lang** | **String**| Source language. | 
 **res_lang** | **String**| Result language. | 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



