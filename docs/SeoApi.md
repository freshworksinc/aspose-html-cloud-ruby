# Seo API

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_seo_warning**](SeoApi.md#get_seo_warning) | **GET** /html/seo | Page analysis and return of SEO warnings in json format.
[**get_html_warning**](SeoApi.md#get_html_warning) | **GET** /html/validator | Checks the markup validity of Web documents in HTML, XHTML, etc., and return result in json format.


# **get_seo_warning**
> Hash get_seo_warning(addr)

Page analysis and return of SEO warnings in json format.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

addr = "https://edition.cnn.com/"

begin
  # Page analysis and return of SEO warnings in json format.
  result = api_instance.get_seo_warning(addr)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_seo_warning: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addr** | **String**| Source page URL. | 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **get_html_warning**
> Hash get_html_warning(url)

Checks the markup validity of Web documents in HTML, XHTML, etc., and return result in json format.

### Example
```ruby
# load the gem
require 'aspose_html_cloud'

# Get keys from aspose site.
# There is free quota available. 
# For more details, see https://purchase.aspose.cloud/pricing

CONFIG = {
    "basePath":"https://api.aspose.cloud/v3.0",
    "authPath":"https://api.aspose.cloud/connect/token",
    "apiKey":"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "appSID":"XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
    "debug":true
}

api_instance = AsposeHtml::HtmlApi.new CONFIG

url = "https://edition.cnn.com/"

begin
  # Checks the markup validity of Web documents in HTML, XHTML, etc., and return result in json format.
  result = api_instance.get_html_warning(url)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_html_warning: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Source page URL. | 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
