# Html API

All URIs are relative to *https://api.aspose.cloud/v4.0*

### Possible conversions:
- HTML -> PDF, XPS, DOCX, MD, MHTML, JPEG, BMP, PNG, TIFF, GIF
- EPUB -> PDF, XPS, DOCX, JPEG, BMP, PNG, TIFF, GIF
- MD -> PDF, XPS, DOCX, HTML, MHTML, JPEG, BMP, PNG, TIFF, GIF
- MHTML -> PDF, XPS, DOCX, JPEG, BMP, PNG, TIFF, GIF
- SVG -> PDF, XPS, JPEG, BMP, PNG, TIFF, GIF
- JPEG, BMP, PNG, TIFF, GIF -> SVG

### Possible vectorization:
- JPEG, BMP, PNG, TIFF, GIF -> SVG

| Method                                                                      | Description                                               |
|-----------------------------------------------------------------------------|-----------------------------------------------------------|
| [**convert_local_to_local**](HtmlApi.md#convert_local_to_local)             | Convert a document from the local file to the local file. |
| [**convert_local_to_storage**](HtmlApi.md#convert_local_to_storage)         | Convert a document from the local file to the storage.    |
| [**convert_storage_to_local**](HtmlApi.md#convert_storage_to_local)         | Convert a document from the storage to the local file.    |
| [**convert_storage_to_storage**](HtmlApi.md#convert_storage_to_storage)     | Convert a document from the storage to the storage.       |
| [**convert_url_to_local**](HtmlApi.md#convert_url_to_local)                 | Convert the website by URL to the local file.             |
| [**convert_url_to_storage**](HtmlApi.md#convert_url_to_storage)             | Convert the website to the storage.                       |
| [**convert**](HtmlApi.md#convert)                                           | General conversion function.                              |
| [**vectorize_local_to_local**](HtmlApi.md#vectorize_local_to_local)         | Vectorize an image from the local file to the local file. |
| [**vectorize_local_to_storage**](HtmlApi.md#vectorize_local_to_storage)     | Vectorize an image from the local file to the storage.    |
| [**vectorize_storage_to_local**](HtmlApi.md#vectorize_storage_to_local)     | Vectorize an image from the storage to the local file.    |
| [**vectorize_storage_to_storage**](HtmlApi.md#vectorize_storage_to_storage) | Vectorize an image from the storage to the storage.       |
| [**vectorize**](HtmlApi.md#vectorize)                                       | General vectorization function.                           |

# **convert_local_to_local**
> [OperationResult](OperationResult.md)  convert_local_to_local(src, dst, opts)

Convert a document from the local file and save result to the local file.

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
  width: 800,       # Float | Resulting image width in pixels. 
  height: 1000,     # Float | Resulting image height in pixels. 
  left_margin: 10,  # Float | Left resulting image margin in pixels.
  right_margin: 10, # Float | Right resulting image margin in pixels.
  top_margin: 10,   # Float | Top resulting image margin in pixels.
  bottom_margin: 10 # Float | Bottom resulting image margin in pixels.
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
| Name              | Type       | Description                                                                   | Notes                   |
|-------------------|------------|-------------------------------------------------------------------------------|-------------------------|
| **src**           | **String** | Full path to the input file.                                                  | See possible conversion |
| **dst**           | **String** | Full path to the result file.                                                 | See possible conversion | 
| **opts**          | **Hash**   | Conversion options.                                                           | [optional]              |    
| **width**         | **Float**  | Resulting width. For images in pixels, for PDF, XPS, DOCX in  inches.         | [optional]              |    
| **height**        | **Float**  | Resulting height. For images in pixels, for PDF, XPS, DOCX in  inches.        | [optional]              |    
| **left_margin**   | **Float**  | Left resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.   | [optional]              |        
| **right_margin**  | **Float**  | Right resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.  | [optional]              |        
| **top_margin**    | **Float**  | Top resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.    | [optional]              |     
| **bottom_margin** | **Float**  | Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches. | [optional]              |       

### Return type

**[OperationResult](OperationResult.md)**


# **convert_local_to_storage**
> [OperationResult](OperationResult.md) convert_local_to_storage(src, dst, storage, opts)

Convert a document from the local file and saving result to the storage.

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
  width: 700,       # Float | Resulting image width. 
  height: 1000,     # Float | Resulting image height. 
  left_margin: 40,  # Float | Left resulting image margin.
  right_margin: 40, # Float | Right resulting image margin.
  top_margin: 50,   # Float | Top resulting image margin.
  bottom_margin: 50 # Float | Bottom resulting image margin.
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
| Name              | Type       | Description                                                                   | Notes                   |
|-------------------|------------|-------------------------------------------------------------------------------|-------------------------|
| **src**           | **String** | Full path to the input file.                                                  | See possible conversion |
| **dst**           | **String** | Full path to the result file.                                                 | See possible conversion | 
| **storage**       | **String** | Storage name.                                                                 | nil - default storage   | 
| **opts**          | **Hash**   | Conversion options.                                                           | [optional]              |    
| **width**         | **Float**  | Resulting width. For images in pixels, for PDF, XPS, DOCX in  inches.         | [optional]              |    
| **height**        | **Float**  | Resulting height. For images in pixels, for PDF, XPS, DOCX in  inches.        | [optional]              |    
| **left_margin**   | **Float**  | Left resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.   | [optional]              |        
| **right_margin**  | **Float**  | Right resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.  | [optional]              |        
| **top_margin**    | **Float**  | Top resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.    | [optional]              |     
| **bottom_margin** | **Float**  | Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches. | [optional]              |       
    

### Return type
**[OperationResult](OperationResult.md)**

# **convert_storage_to_local**
> [OperationResult](OperationResult.md) convert_storage_to_local(src, dst, storage, opts)

Convert a document from the storage and saving result to the local file.

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
  width: 700,       # Float | Resulting image width. 
  height: 1000,     # Float | Resulting image height. 
  left_margin: 40,  # Float | Left resulting image margin.
  right_margin: 40, # Float | Right resulting image margin.
  top_margin: 50,   # Float | Top resulting image margin.
  bottom_margin: 50 # Float | Bottom resulting image margin.
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
| Name              | Type       | Description                                                                   | Notes                   |
|-------------------|------------|-------------------------------------------------------------------------------|-------------------------|
| **src**           | **String** | Full path to the input file.                                                  | See possible conversion |
| **dst**           | **String** | Full path to the result file.                                                 | See possible conversion | 
| **storage**       | **String** | Storage name.                                                                 | nil - default storage   | 
| **opts**          | **Hash**   | Conversion options.                                                           | [optional]              |    
| **width**         | **Float**  | Resulting width. For images in pixels, for PDF, XPS, DOCX in  inches.         | [optional]              |    
| **height**        | **Float**  | Resulting height. For images in pixels, for PDF, XPS, DOCX in  inches.        | [optional]              |    
| **left_margin**   | **Float**  | Left resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.   | [optional]              |        
| **right_margin**  | **Float**  | Right resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.  | [optional]              |        
| **top_margin**    | **Float**  | Top resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.    | [optional]              |     
| **bottom_margin** | **Float**  | Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches. | [optional]              |       
   

### Return type
**[OperationResult](OperationResult.md)**


# **convert_storage_to_storage**
> [OperationResult](OperationResult.md) convert_storage_to_storage(src, dst, storage, opts)

Convert a document from the storage and saving result to the storage.

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
  width: 700,       # Float | Resulting image width. 
  height: 1000,     # Float | Resulting image height. 
  left_margin: 40,  # Float | Left resulting image margin.
  right_margin: 40, # Float | Right resulting image margin.
  top_margin: 50,   # Float | Top resulting image margin.
  bottom_margin: 50 # Float | Bottom resulting image margin.
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
| Name              | Type       | Description                                                                   | Notes                   |
|-------------------|------------|-------------------------------------------------------------------------------|-------------------------|
| **src**           | **String** | Full path to the input file.                                                  | See possible conversion |
| **dst**           | **String** | Full path to the result file.                                                 | See possible conversion | 
| **storage**       | **String** | Storage name.                                                                 | nil - default storage   | 
| **opts**          | **Hash**   | Conversion options.                                                           | [optional]              |    
| **width**         | **Float**  | Resulting width. For images in pixels, for PDF, XPS, DOCX in  inches.         | [optional]              |    
| **height**        | **Float**  | Resulting height. For images in pixels, for PDF, XPS, DOCX in  inches.        | [optional]              |    
| **left_margin**   | **Float**  | Left resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.   | [optional]              |        
| **right_margin**  | **Float**  | Right resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.  | [optional]              |        
| **top_margin**    | **Float**  | Top resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.    | [optional]              |     
| **bottom_margin** | **Float**  | Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches. | [optional]              |       
     

### Return type
**[OperationResult](OperationResult.md)**


# **convert_url_to_local**
> [OperationResult](OperationResult.md) convert_url_to_local(src, dst, opts)

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
| Name              | Type       | Description                                                                   | Notes                    |
|-------------------|------------|-------------------------------------------------------------------------------|--------------------------|
| **src**           | **String** | Url address of the webpage.                                                   | With http:// or https:// |
| **dst**           | **String** | Full path to the result file.                                                 | See possible conversion  | 
| **opts**          | **Hash**   | Conversion options.                                                           | [optional]               |    
| **width**         | **Float**  | Resulting width. For images in pixels, for PDF, XPS, DOCX in  inches.         | [optional]               |    
| **height**        | **Float**  | Resulting height. For images in pixels, for PDF, XPS, DOCX in  inches.        | [optional]               |    
| **left_margin**   | **Float**  | Left resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.   | [optional]               |        
| **right_margin**  | **Float**  | Right resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.  | [optional]               |        
| **top_margin**    | **Float**  | Top resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.    | [optional]               |     
| **bottom_margin** | **Float**  | Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches. | [optional]               |       
   

### Return type
**[OperationResult](OperationResult.md)**

# **convert_url_to_storage**
> [OperationResult](OperationResult.md) convert_url_to_storage(src, dst, storage, opts)

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
| Name              | Type       | Description                                                                   | Notes                    |
|-------------------|------------|-------------------------------------------------------------------------------|--------------------------|
| **src**           | **String** | Url address of the webpage.                                                   | With http:// or https:// |
| **dst**           | **String** | Full path to the result file.                                                 | See possible conversion  | 
| **storage**       | **String** | Storage name.                                                                 | nil - default storage    | 
| **opts**          | **Hash**   | Conversion options.                                                           | [optional]               |    
| **width**         | **Float**  | Resulting width. For images in pixels, for PDF, XPS, DOCX in  inches.         | [optional]               |    
| **height**        | **Float**  | Resulting height. For images in pixels, for PDF, XPS, DOCX in  inches.        | [optional]               |    
| **left_margin**   | **Float**  | Left resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.   | [optional]               |        
| **right_margin**  | **Float**  | Right resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.  | [optional]               |        
| **top_margin**    | **Float**  | Top resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches.    | [optional]               |     
| **bottom_margin** | **Float**  | Bottom resulting margin. For images in pixels, for PDF, XPS, DOCX in  inches. | [optional]               |       
    

### Return type
**[OperationResult](OperationResult.md)**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# **convert**
> [OperationResult](OperationResult.md) convert(src, dst, src_in_local, dst_in_local, is_url, opts=nil, storage=nil)

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
| Name              | Type        | Description                                                                   | Notes                                 |
|-------------------|-------------|-------------------------------------------------------------------------------|---------------------------------------|
| **src**           | **String**  | Path to source (file or url).                                                 | Url with http:// or https://          |
| **dst**           | **String**  | Full path to the result file.                                                 | See possible conversion for extension | 
| **src_in_local**  | **Boolean** | True if src is a local file.                                                  |                                       | 
| **dst_in_local**  | **Boolean** | True if dst is a local file.                                                  |                                       | 
| **is_url**        | **Boolean** | True if src is url.                                                           |                                       | 
| **opts**          | **Hash**    | Conversion options.                                                           | [optional]                            |    
| **storage**       | **String**  | Storage name.                                                                 | nil - default storage                 | 

### Return type
**[OperationResult](OperationResult.md)**

# **vectorize_local_to_local**
> [OperationResult](OperationResult.md)  vectorize_local_to_local(src, dst, opts)

Vectorization an image from the local file and save result to the local file.

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

src = "test.bmp"  # String | Full path to the input file.
dst = "test.svg"  # String | Full path to the result file.

opts = {
  error_threshold: 30,
  max_iterations: 50,
  colors_limit: 3,
  line_width: 2.0,
}

begin
  #Vectorize an image from the local file and save result to the local file.
  result = api_instance.vectorize_local_to_local(src, dst, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->vectorize_local_to_local: #{e}"
end
```

### Parameters
| Name                | Type         | Description                                                                                             | Notes                     |
|---------------------|--------------|---------------------------------------------------------------------------------------------------------|---------------------------|
| **src**             | **String**   | Full path to the input file on the local disk.                                                          | JPEG, BMP, PNG, TIFF, GIF |
| **dst**             | **String**   | Full path to the result file on the local disk.                                                         | SVG                       | 
| **opts**            | **Hash**     | Vectorization options.                                                                                  | [optional]                |    
| **error_threshold** | **Float**    | This parameter defines maximum deviation of points to fitted curve. By default it is 30.                | [optional]                |
| **max_iterations**  | **Integer**  | This parameter defines number of iteration for least-squares approximation method. By default it is 30. | [optional]                |
| **colors_limit**    | **Integer**  | The maximum number of colors used to quantize an image. Default value is 25.                            | [optional]                |
| **line_width**      | **Float**    | The value of this parameter is affected by the graphics scale. Default value is 1.                      | [optional]                |     

### Return type

**[OperationResult](OperationResult.md)**

# **vectorize_local_to_storage**
> [OperationResult](OperationResult.md) vectorize_local_to_storage(src, dst, storage, opts)

Vectorization an image from the local file and saving result to the storage.

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

src = "test.bmp"                 # String | Source file.
dst = "FolderInStorage/test.svg" # String | Result file.

opts = {
  error_threshold: 30,
  max_iterations: 50,
  colors_limit: 3,
  line_width: 2.0,
}

begin
  #Vectorization an image from the local file and save result to the storage.
  result = api_instance.vectorize_local_to_storage(src, dst, nil, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->vectorize_local_to_storage: #{e}"
end
```

### Parameters
| Name                | Type         | Description                                                                                             | Notes                     |
|---------------------|--------------|---------------------------------------------------------------------------------------------------------|---------------------------|
| **src**             | **String**   | Full path to the input file on the local disk.                                                          | JPEG, BMP, PNG, TIFF, GIF |
| **dst**             | **String**   | Full path to the result file on the storage.                                                            | SVG                       | 
| **storage**         | **String**   | Storage name.                                                                                           | nil - default storage     | 
| **opts**            | **Hash**     | Vectorization options.                                                                                  | [optional]                |    
| **error_threshold** | **Float**    | This parameter defines maximum deviation of points to fitted curve. By default it is 30.                | [optional]                |
| **max_iterations**  | **Integer**  | This parameter defines number of iteration for least-squares approximation method. By default it is 30. | [optional]                |
| **colors_limit**    | **Integer**  | The maximum number of colors used to quantize an image. Default value is 25.                            | [optional]                |
| **line_width**      | **Float**    | The value of this parameter is affected by the graphics scale. Default value is 1.                      | [optional]                |     


### Return type
**[OperationResult](OperationResult.md)**

# **vectorize_storage_to_local**
> [OperationResult](OperationResult.md) vectorize_storage_to_local(src, dst, storage, opts)

Vectorization an image from the storage and saving result to the local file.

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

src = "FolderInStorage/test.tiff" # String | Source file.
dst = "test.svg"                  # String | Result file.

opts = {
  error_threshold: 30,
  max_iterations: 50,
  colors_limit: 3,
  line_width: 2.0,
}

begin
  #Vectorization an image from the storage and save result to the local file.
  result = api_instance.vectorize_storage_to_local(src, dst, nil, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->vectorize_storage_to_local: #{e}"
end
```

### Parameters
| Name                | Type         | Description                                                                                             | Notes                     |
|---------------------|--------------|---------------------------------------------------------------------------------------------------------|---------------------------|
| **src**             | **String**   | Full path to the input file on the storage.                                                             | JPEG, BMP, PNG, TIFF, GIF |
| **dst**             | **String**   | Full path to the result file on the local disk.                                                         | SVG                       | 
| **storage**         | **String**   | Storage name.                                                                                           | nil - default storage     | 
| **opts**            | **Hash**     | Vectorization options.                                                                                  | [optional]                |    
| **error_threshold** | **Float**    | This parameter defines maximum deviation of points to fitted curve. By default it is 30.                | [optional]                |
| **max_iterations**  | **Integer**  | This parameter defines number of iteration for least-squares approximation method. By default it is 30. | [optional]                |
| **colors_limit**    | **Integer**  | The maximum number of colors used to quantize an image. Default value is 25.                            | [optional]                |
| **line_width**      | **Float**    | The value of this parameter is affected by the graphics scale. Default value is 1.                      | [optional]                |     


### Return type
**[OperationResult](OperationResult.md)**


# **vectorize_storage_to_storage**
> [OperationResult](OperationResult.md) vectorize_storage_to_storage(src, dst, storage, opts)

Vectorization an image from the storage and saving result to the storage.

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

src = "FolderInStorage/test.jpeg" # String | Source file.

dst = "FolderInStorage/test.svg"  # String | Result file.

opts = {
  error_threshold: 30,
  max_iterations: 50,
  colors_limit: 3,
  line_width: 2.0,
}

begin
  #Vectorization an image from the storage and save result to the storage.
  result = api_instance.vectorize_storage_to_storage(src, dst, nil, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->vectorize_storage_to_storage: #{e}"
end
```

### Parameters
| Name                | Type         | Description                                                                                             | Notes                     |
|---------------------|--------------|---------------------------------------------------------------------------------------------------------|---------------------------|
| **src**             | **String**   | Full path to the input file on the storage.                                                             | JPEG, BMP, PNG, TIFF, GIF |
| **dst**             | **String**   | Full path to the result file on the storage.                                                            | SVG                       | 
| **storage**         | **String**   | Storage name.                                                                                           | nil - default storage     | 
| **opts**            | **Hash**     | Vectorization options.                                                                                  | [optional]                |    
| **error_threshold** | **Float**    | This parameter defines maximum deviation of points to fitted curve. By default it is 30.                | [optional]                |
| **max_iterations**  | **Integer**  | This parameter defines number of iteration for least-squares approximation method. By default it is 30. | [optional]                |
| **colors_limit**    | **Integer**  | The maximum number of colors used to quantize an image. Default value is 25.                            | [optional]                |
| **line_width**      | **Float**    | The value of this parameter is affected by the graphics scale. Default value is 1.                      | [optional]                |     


### Return type
**[OperationResult](OperationResult.md)**


# **vectorize**
> [OperationResult](OperationResult.md) vectorize(src, dst, src_in_local, dst_in_local, opts=nil, storage=nil)

General function for vectorization.

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

src = '/path/to/file.bmp'        # String | Source file.
dst = "FolderInStorage/test.svg" # String | Result file.


begin
  #Vectorize an image from local file and save result on the default storage.
  result = api_instance.vectorize(src, dst, true, false)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->vectorize: #{e}"
end
```

### Parameters
| Name                 | Type          | Description                                                                                             | Notes                     |
|----------------------|---------------|---------------------------------------------------------------------------------------------------------|---------------------------|
| **src**              | **String**    | Full path to source file.                                                                               | JPEG, BMP, PNG, TIFF, GIF |
| **dst**              | **String**    | Full path to the result file.                                                                           | SVG                       | 
| **src_in_local**     | **Boolean**   | True if src is a local file.                                                                            |                           | 
| **dst_in_local**     | **Boolean**   | True if dst is a local file.                                                                            |                           | 
| **opts**             | **Hash**      | Vectorization options.                                                                                  | [optional]                |    
| **error_threshold**  | **Float**     | This parameter defines maximum deviation of points to fitted curve. By default it is 30.                | [optional]                |
| **max_iterations**   | **Integer**   | This parameter defines number of iteration for least-squares approximation method. By default it is 30. | [optional]                |
| **colors_limit**     | **Integer**   | The maximum number of colors used to quantize an image. Default value is 25.                            | [optional]                |
| **line_width**       | **Float**     | The value of this parameter is affected by the graphics scale. Default value is 1.                      | [optional]                |     
| **storage**          | **String**    | Storage name.                                                                                           | nil - default storage     | 

### Return type
**[OperationResult](OperationResult.md)**
