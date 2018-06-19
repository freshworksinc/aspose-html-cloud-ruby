# Conversion API

All URIs are relative to *https://api.aspose.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_convert_document_to_image**](ConversionApi.md#get_convert_document_to_image) | **GET** /html/{name}/convert/image/{outFormat} | Convert the HTML document from the storage by its name to the specified image format.
[**get_convert_document_to_image_by_url**](ConversionApi.md#get_convert_document_to_image_by_url) | **GET** /html/convert/image/{outFormat} | Convert the HTML page from the web by its URL to the specified image format.
[**get_convert_document_to_pdf**](ConversionApi.md#get_convert_document_to_pdf) | **GET** /html/{name}/convert/pdf | Convert the HTML document from the storage by its name to PDF.
[**get_convert_document_to_pdf_by_url**](ConversionApi.md#get_convert_document_to_pdf_by_url) | **GET** /html/convert/pdf | Convert the HTML page from the web by its URL to PDF.
[**get_convert_document_to_xps**](ConversionApi.md#get_convert_document_to_xps) | **GET** /html/{name}/convert/xps | Convert the HTML document from the storage by its name to XPS.
[**get_convert_document_to_xps_by_url**](ConversionApi.md#get_convert_document_to_xps_by_url) | **GET** /html/convert/xps | Convert the HTML page from the web by its URL to XPS.


# **get_convert_document_to_image**
> File get_convert_document_to_image(name, out_format, opts)

Convert the HTML document from the storage by its name to the specified image format.

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

name = "test.html" # String | Document name.

out_format = "bmp" # String | Resulting image format.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 10, # Integer | Left resulting image margin.
  right_margin: 10, # Integer | Right resulting image margin.
  top_margin: 10, # Integer | Top resulting image margin.
  bottom_margin: 10, # Integer | Bottom resulting image margin.
  x_resolution: 300, # Integer | Horizontal resolution of resulting image.
  y_resolution: 300, # Integer | Vertical resolution of resulting image.
  folder: "folder_example", # String | The source document folder.
  storage: "storage_example" # String | The source document storage.
}

begin
  #Convert the HTML document from the storage by its name to the specified image format.
  result = api_instance.get_convert_document_to_image(name, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **out_format** | **String**| Resulting image format. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution of resulting image. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution of resulting image. | [optional] 
 **folder** | **String**| The source document folder. | [optional] 
 **storage** | **String**| The source document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_convert_document_to_image_by_url**
> File get_convert_document_to_image_by_url(source_url, out_format, opts)

Convert the HTML page from the web by its URL to the specified image format.

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

source_url = "http://www.google.com" # String | Source page URL.

out_format = "tiff" # String | Resulting image format.

opts = { 
  width: 700, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 40, # Integer | Left resulting image margin.
  right_margin: 40, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  x_resolution: 150, # Integer | Horizontal resolution of resulting image.
  y_resolution: 150, # Integer | Vertical resolution of resulting image.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML page from the web by its URL to the specified image format.
  result = api_instance.get_convert_document_to_image_by_url(source_url, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_image_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 
 **out_format** | **String**| Resulting image format. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution of resulting image. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution of resulting image. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_convert_document_to_pdf**
> File get_convert_document_to_pdf(name, opts)

Convert the HTML document from the storage by its name to PDF.

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

name = "test.html" # String | Document name.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 20, # Integer | Left resulting image margin.
  right_margin: 20, # Integer | Right resulting image margin.
  top_margin: 40, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML document from the storage by its name to PDF.
  result = api_instance.get_convert_document_to_pdf(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_convert_document_to_pdf_by_url**
> File get_convert_document_to_pdf_by_url(source_url, opts)

Convert the HTML page from the web by its URL to PDF.

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

source_url = "https://www.yahoo.com" # String | Source page URL.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 50, # Integer | Left resulting image margin.
  right_margin: 50, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML page from the web by its URL to PDF.
  result = api_instance.get_convert_document_to_pdf_by_url(source_url, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_pdf_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_convert_document_to_xps**
> File get_convert_document_to_xps(name, opts)

Convert the HTML document from the storage by its name to XPS.

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

name = "test.html" # String | Document name.

opts = { 
  width: 700, # Integer | Resulting image width. 
  height: 900, # Integer | Resulting image height. 
  left_margin: 50, # Integer | Left resulting image margin.
  right_margin: 50, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML document from the storage by its name to XPS.
  result = api_instance.get_convert_document_to_xps(name, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_xps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_convert_document_to_xps_by_url**
> File get_convert_document_to_xps_by_url(source_url, opts)

Convert the HTML page from the web by its URL to XPS.

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

source_url = "https://www.gmail.com" # String | Source page URL.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 50, # Integer | Left resulting image margin.
  right_margin: 50, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50, # Integer | Bottom resulting image margin.
  folder: "remote_folder", # String | The document folder.
  storage: "remote_storage" # String | The document storage.
}

begin
  #Convert the HTML page from the web by its URL to XPS.
  result = api_instance.get_convert_document_to_xps_by_url(source_url, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_xps_by_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_url** | **String**| Source page URL. | 
 **width** | **Integer**| Resulting image width.  | [optional] 
 **height** | **Integer**| Resulting image height.  | [optional] 
 **left_margin** | **Integer**| Left resulting image margin. | [optional] 
 **right_margin** | **Integer**| Right resulting image margin. | [optional] 
 **top_margin** | **Integer**| Top resulting image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom resulting image margin. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



