# Conversion API

All URIs are relative to *https://api.aspose.cloud/v4.0*

Possible conversions:
- HTML -> PDF, XPS, DOCX, MD, MHTML, JPEG, BMP, PNG, TIFF, GIF
- EPUB -> PDF, XPS, DOCX, JPEG, BMP, PNG, TIFF, GIF

| Method                                                                        | Description                                                              |
|-------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| [**convert_local_to_local**](ConversionApi.md#convert_local_to_local)         | Convert the HTML or EPUB document from the local file to the local file. |
| [**convert_local_to_storage**](ConversionApi.md#convert_local_to_storage)     | Convert the HTML or EPUB document from the local file to the storage.    |
| [**convert_storage_to_local**](ConversionApi.md#convert_storage_to_local)     | Convert the HTML or EPUB document from the storage to the local file.    |
| [**convert_storage_to_storage**](ConversionApi.md#convert_storage_to_storage) | Convert the HTML or EPUB document from the storage to the storage.       |
| [**convert_url_to_local**](ConversionApi.md#convert_url_to_local)             | Convert the website by URL to the local file.                            |
| [**convert_url_to_storage**](ConversionApi.md#convert_url_to_storage)         | Convert the website to the storage.                                      |
| [**convert**](ConversionApi.md#convert)                                       | General conversion function.                                             |

# **convert_local_to_local**
> [ConversionResult](ConversionResult.md)  convert_local_to_local(src, dst, opts)

Convert the HTML or EPUB document from the local file and save result to the local file.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

src = "test.html" # String | Full path to the input file.
dst = "test.jpg"  # String | Full path to the result.

opts = { 
  width: 800, # Integer | Resulting image width in pixels. 
  height: 1000, # Integer | Resulting image height in pixels. 
  left_margin: 10, # Integer | Left resulting image margin in pixels.
  right_margin: 10, # Integer | Right resulting image margin in pixels.
  top_margin: 10, # Integer | Top resulting image margin in pixels.
  bottom_margin: 10 # Integer | Bottom resulting image margin in pixels.
}

begin
  #Convert the HTML document from the local file and save result to the local file.
  result = api_instance.convert_local_to_local(src, dst, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->convert_local_to_local: #{e}"
end
```

### Parameters
| Name              | Type        | Description                    | Notes                   |
|-------------------|-------------|--------------------------------|-------------------------|
| **src**           | **String**  | Full path to the input file.   | html, epub formats      |
| **dst**           | **String**  | Full path to the result file.  | See possible conversion | 
| **opts**          | **Hash**    | Conversion options.            | [optional]              |    
| **width**         | **Integer** | Resulting image width.         | [optional]              |    
| **height**        | **Integer** | Resulting image height.        | [optional]              |    
| **left_margin**   | **Integer** | Left resulting image margin.   | [optional]              |        
| **right_margin**  | **Integer** | Right resulting image margin.  | [optional]              |        
| **top_margin**    | **Integer** | Top resulting image margin.    | [optional]              |     
| **bottom_margin** | **Integer** | Bottom resulting image margin. | [optional]              |       

### Return type

**[ConversionResult](ConversionResult.md)**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **convert_local_to_storage**
> [ConversionResult](ConversionResult.md) convert_local_to_storage(src, dst, storage, opts)

Convert the HTML or EPUB document from the local file and saving result to the storage.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

src = "test.epub" # String | Source file.
dst = "FolderInStorage/test.tiff" # String | Result file.

opts = { 
  width: 700, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 40, # Integer | Left resulting image margin.
  right_margin: 40, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50 # Integer | Bottom resulting image margin.
}

begin
  #Convert the HTML page from the local file and save result to the storage.
  result = api_instance.convert_local_to_storage(src, dst, nil, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->convert_local_to_storage: #{e}"
end
```

### Parameters
| Name              | Type        | Description                    | Notes                   |
|-------------------|-------------|--------------------------------|-------------------------|
| **src**           | **String**  | Full path to the input file.   | html, epub formats      |
| **dst**           | **String**  | Full path to the result file.  | See possible conversion | 
| **storage**       | **String**  | Storage name.                  | nil - default storage   | 
| **opts**          | **Hash**    | Conversion options.            | [optional]              |    
| **width**         | **Integer** | Resulting image width.         | [optional]              |    
| **height**        | **Integer** | Resulting image height.        | [optional]              |    
| **left_margin**   | **Integer** | Left resulting image margin.   | [optional]              |        
| **right_margin**  | **Integer** | Right resulting image margin.  | [optional]              |        
| **top_margin**    | **Integer** | Top resulting image margin.    | [optional]              |     
| **bottom_margin** | **Integer** | Bottom resulting image margin. | [optional]              |       

### Return type
**[ConversionResult](ConversionResult.md)**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **convert_storage_to_local**
> [ConversionResult](ConversionResult.md) convert_storage_to_local(src, dst, storage, opts)

Convert the HTML or EPUB document from the storage and saving result to the local file.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

src = "FolderInStorage/test.epub" # String | Source file.
dst = "test.tiff" # String | Result file.

opts = { 
  width: 700, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 40, # Integer | Left resulting image margin.
  right_margin: 40, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50 # Integer | Bottom resulting image margin.
}

begin
  #Convert the HTML page from the storage and save result to the local file.
  result = api_instance.convert_storage_to_local(src, dst, nil, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->convert_storage_to_local: #{e}"
end
```

### Parameters
| Name              | Type        | Description                    | Notes                   |
|-------------------|-------------|--------------------------------|-------------------------|
| **src**           | **String**  | Full path to the input file.   | html, epub formats      |
| **dst**           | **String**  | Full path to the result file.  | See possible conversion | 
| **storage**       | **String**  | Storage name.                  | nil - default storage   | 
| **opts**          | **Hash**    | Conversion options.            | [optional]              |    
| **width**         | **Integer** | Resulting image width.         | [optional]              |    
| **height**        | **Integer** | Resulting image height.        | [optional]              |    
| **left_margin**   | **Integer** | Left resulting image margin.   | [optional]              |        
| **right_margin**  | **Integer** | Right resulting image margin.  | [optional]              |        
| **top_margin**    | **Integer** | Top resulting image margin.    | [optional]              |     
| **bottom_margin** | **Integer** | Bottom resulting image margin. | [optional]              |       

### Return type
**[ConversionResult](ConversionResult.md)**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

# **convert_storage_to_storage**
> [ConversionResult](ConversionResult.md) convert_storage_to_storage(src, dst, storage, opts)

Convert the HTML or EPUB document from the storage and saving result to the storage.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

src = "FolderInStorage/test.epub" # String | Source file.

dst = "FolderInStorage/test.tiff" # String | Result file.

opts = { 
  width: 700, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 40, # Integer | Left resulting image margin.
  right_margin: 40, # Integer | Right resulting image margin.
  top_margin: 50, # Integer | Top resulting image margin.
  bottom_margin: 50 # Integer | Bottom resulting image margin.
}

begin
  #Convert the HTML file from the storage and save result to the storage.
  result = api_instance.convert_storage_to_storage(src, dst, nil, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->convert_storage_to_storage: #{e}"
end
```

### Parameters
| Name              | Type        | Description                    | Notes                   |
|-------------------|-------------|--------------------------------|-------------------------|
| **src**           | **String**  | Full path to the input file.   | html, epub formats      |
| **dst**           | **String**  | Full path to the result file.  | See possible conversion | 
| **storage**       | **String**  | Storage name.                  | nil - default storage   | 
| **opts**          | **Hash**    | Conversion options.            | [optional]              |    
| **width**         | **Integer** | Resulting image width.         | [optional]              |    
| **height**        | **Integer** | Resulting image height.        | [optional]              |    
| **left_margin**   | **Integer** | Left resulting image margin.   | [optional]              |        
| **right_margin**  | **Integer** | Right resulting image margin.  | [optional]              |        
| **top_margin**    | **Integer** | Top resulting image margin.    | [optional]              |     
| **bottom_margin** | **Integer** | Bottom resulting image margin. | [optional]              |       

### Return type
**[ConversionResult](ConversionResult.md)**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# **convert_url_to_local**
> [ConversionResult](ConversionResult.md) convert_url_to_local(src, dst, opts)

Convert the website and saving result to the local file.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

src = 'https://stallman.org/articles/anonymous-payments-thru-phones.html' # String | Source page URL.

dst = "test.pdf" # String | Result file.


begin
  #Convert the HTML page from the web by its URL to pdf and save result in the local file.
  result = api_instance.convert_url_to_local(src, dst)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->convert_url_to_local: #{e}"
end
```

### Parameters
| Name              | Type        | Description                    | Notes                    |
|-------------------|-------------|--------------------------------|--------------------------|
| **src**           | **String**  | Url address of the webpage.    | With http:// or https:// |
| **dst**           | **String**  | Full path to the result file.  | See possible conversion  | 
| **opts**          | **Hash**    | Conversion options.            | [optional]               |    
| **width**         | **Integer** | Resulting image width.         | [optional]               |    
| **height**        | **Integer** | Resulting image height.        | [optional]               |    
| **left_margin**   | **Integer** | Left resulting image margin.   | [optional]               |        
| **right_margin**  | **Integer** | Right resulting image margin.  | [optional]               |        
| **top_margin**    | **Integer** | Top resulting image margin.    | [optional]               |     
| **bottom_margin** | **Integer** | Bottom resulting image margin. | [optional]               |       

### Return type
**[ConversionResult](ConversionResult.md)**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# **convert_url_to_storage**
> [ConversionResult](ConversionResult.md) convert_url_to_storage(src, dst, storage, opts)

Convert the website and saving result to the storage.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

src = 'https://stallman.org/articles/anonymous-payments-thru-phones.html' # String | Source page URL.

dst = "FolderInStorage/test.pdf" # String | Result file.


begin
  #Convert the HTML page from the web by its URL to the specified image format and save result on the storage.
  result = api_instance.convert_url_to_storage(src, dst, nil)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->convert_url_to_storage: #{e}"
end
```

### Parameters
| Name              | Type        | Description                    | Notes                    |
|-------------------|-------------|--------------------------------|--------------------------|
| **src**           | **String**  | Url address of the webpage.    | With http:// or https:// |
| **dst**           | **String**  | Full path to the result file.  | See possible conversion  | 
| **storage**       | **String**  | Storage name.                  | nil - default storage    | 
| **opts**          | **Hash**    | Conversion options.            | [optional]               |    
| **width**         | **Integer** | Resulting image width.         | [optional]               |    
| **height**        | **Integer** | Resulting image height.        | [optional]               |    
| **left_margin**   | **Integer** | Left resulting image margin.   | [optional]               |        
| **right_margin**  | **Integer** | Right resulting image margin.  | [optional]               |        
| **top_margin**    | **Integer** | Top resulting image margin.    | [optional]               |     
| **bottom_margin** | **Integer** | Bottom resulting image margin. | [optional]               |       

### Return type
**[ConversionResult](ConversionResult.md)**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# **convert**
> [ConversionResult](ConversionResult.md) convert(src, dst, src_in_local, dst_in_local, is_url, opts=nil, storage=nil)

General function for conversion.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing


CONFIG = {
    "basePath":"https://api.aspose.cloud/v4.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

src = 'https://stallman.org/articles/anonymous-payments-thru-phones.html' # String | Source file or url.

dst = "FolderInStorage/test.pdf" # String | Result file.


begin
  #Convert the HTML page from the web by its URL to pdf and save result on the storage.
  result = api_instance.convert(src, dst, false, true, true)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->convert: #{e}"
end
```


### Parameters
| Name              | Type        | Description                    | Notes                                 |
|-------------------|-------------|--------------------------------|---------------------------------------|
| **src**           | **String**  | Path to source (file or url).  | Url with http:// or https://          |
| **dst**           | **String**  | Full path to the result file.  | See possible conversion for extension | 
| **src_in_local**  | **Boolean** | True if src is a local file.   |                                       | 
| **dst_in_local**  | **Boolean** | True if dst is a local file.   |                                       | 
| **is_url**        | **Boolean** | True if src is url.            |                                       | 
| **opts**          | **Hash**    | Conversion options.            | [optional]                            |    
| **width**         | **Integer** | Resulting image width.         | [optional]                            |    
| **height**        | **Integer** | Resulting image height.        | [optional]                            |    
| **left_margin**   | **Integer** | Left resulting image margin.   | [optional]                            |        
| **right_margin**  | **Integer** | Right resulting image margin.  | [optional]                            |        
| **top_margin**    | **Integer** | Top resulting image margin.    | [optional]                            |     
| **bottom_margin** | **Integer** | Bottom resulting image margin. | [optional]                            |       
| **storage**       | **String**  | Storage name.                  | nil - default storage                 | 

### Return type
**[ConversionResult](ConversionResult.md)**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
