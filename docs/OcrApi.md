#  OCR API

All URIs are relative to *https://api.aspose.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_recognize_and_import_to_html**](OcrApi.md#get_recognize_and_import_to_html) | **GET** /html/{name}/ocr/import | Recognize text from the image file in the storage and import it to HTML format.
[**get_recognize_and_translate_to_html**](OcrApi.md#get_recognize_and_translate_to_html) | **GET** /html/{name}/ocr/translate/{srcLang}/{resLang} | Recognize text from the image file in the storage, import it to HTML format and translate to specified language.


# **get_recognize_and_import_to_html**
> File get_recognize_and_import_to_html(name, opts)

Recognize text from the image file in the storage and import it to HTML format.

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

name = "test_ocr.png" # String | The image file name.

opts = { 
  ocr_engine_lang: "en", # String | OCR engine language - language 
  folder: "folder_example", # String | The source image folder.
  storage: "storage_example" # String | The source image storage.
}

begin
  #Recognize text from the image file in the storage and import it to HTML format.
  result = api_instance.get_recognize_and_import_to_html(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_recognize_and_import_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The image file name. | 
 **ocr_engine_lang** | **String**| OCR engine language - language  | [optional] [default to en]
 **folder** | **String**| The source image folder. | [optional] 
 **storage** | **String**| The source image storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_recognize_and_translate_to_html**
> File get_recognize_and_translate_to_html(name, src_lang, res_lang, opts)

Recognize text from the image file in the storage, import it to HTML format and translate to specified language.

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

name = "test_ocr.jpg" # String | The image file name.

src_lang = "en" # String | Source language - also supposed as the OCR engine language.

res_lang = "de" # String | Result language.

opts = { 
  folder: "folder_example", # String | The source image folder.
  storage: "storage_example" # String | The source image storage.
}

begin
  #Recognize text from the image file in the storage, import it to HTML format and translate to specified language.
  result = api_instance.get_recognize_and_translate_to_html(name, src_lang, res_lang, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_recognize_and_translate_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The image file name. | 
 **src_lang** | **String**| Source language - also supposed as the OCR engine language. | 
 **res_lang** | **String**| Result language. | 
 **folder** | **String**| The source image folder. | [optional] 
 **storage** | **String**| The source image storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



