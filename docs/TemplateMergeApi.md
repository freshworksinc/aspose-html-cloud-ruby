# AsposeHtml::TemplateMergeApi

All URIs are relative to *https://api.aspose.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_merge_html_template**](TemplateMergeApi.md#get_merge_html_template) | **GET** /html/{templateName}/merge | Populate HTML document template with data located as a file in the storage.
[**put_merge_html_template**](TemplateMergeApi.md#put_merge_html_template) | **PUT** /html/{templateName}/merge | Populate HTML document template with data from the request body. Result document will be saved to storage.


# **get_merge_html_template**
> File get_merge_html_template(template_name, data_path, opts)

Populate HTML document template with data located as a file in the storage.

### Example

#### Template file HtmlTemplate.html

```html
<html>
     <head>
          <title>{{Title}}</title>
          <meta charset="utf-8" />
     </head>
     <body>
          <div>
               <p>Name: {{Name}} {{Surname}}</p>
               <p>Address: {{Address.Number}}, {{Address.Street}}, {{Address.City}}</p>
          </div>
      </body>
</html>
```

#### Data file XmlSourceData.xml
```xml
<?xml version="1.0" encoding="utf-8" ?>
<Data>
	<Title>Test</Title>
	<Person>
		<Name>John</Name>
		<Surname>Smith</Surname>
		<Address>
			<Number>200</Number>
			<Street>Austin rd.</Street>
			<City>Dallas</City>
		</Address>
	</Person>
	<Person>
		<Name>Jack</Name>
		<Surname>Fox</Surname>
		<Address>
			<Number>25</Number>
			<Street>Broadway</Street>
			<City>New York</City>
		</Address>
	</Person>
	<Person>
		<Name>Sherlock</Name>
		<Surname>Holmes</Surname>
		<Address>
			<Number>65</Number>
			<Street>Baker str.</Street>
			<City>London</City>
		</Address>
	</Person>
</Data>
```

```ruby
# load the gem
require 'aspose_html'

api_instance = AsposeHtml::TemplateMergeApi.new

template_name = "template_name_example" # String | Template document name. Template document is HTML or zipped HTML.

data_path = "data_path_example" # String | Data source file path in the storage. Supported data format: XML

opts = { 
  options: "options_example", # String | Template merge options: reserved for further implementation.
  folder: "folder_example", # String | The template document folder.
  storage: "storage_example" # String | The template document and data source storage.
}

begin
  #Populate HTML document template with data located as a file in the storage.
  result = api_instance.get_merge_html_template(template_name, data_path, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling TemplateMergeApi->get_merge_html_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_name** | **String**| Template document name. Template document is HTML or zipped HTML. | 
 **data_path** | **String**| Data source file path in the storage. Supported data format: XML | 
 **options** | **String**| Template merge options: reserved for further implementation. | [optional] 
 **folder** | **String**| The template document folder. | [optional] 
 **storage** | **String**| The template document and data source storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/octet-stream



# **put_merge_html_template**
> File put_merge_html_template(template_name, out_path, file, opts)

Populate HTML document template with data from the request body. Result document will be saved to storage.

### Example
```ruby
# load the gem
require 'aspose_html'

api_instance = AsposeHtml::TemplateMergeApi.new

template_name = "template_name_example" # String | Template document name. Template document is HTML or zipped HTML.

out_path = "out_path_example" # String | Result document path.

file = File.new("/path/to/file.txt") # File | A data file to populate template.

opts = { 
  options: "options_example", # String | Template merge options: reserved for further implementation.
  folder: "folder_example", # String | The template document folder.
  storage: "storage_example" # String | The template document and data source storage.
}

begin
  #Populate HTML document template with data from the request body. Result document will be saved to storage.
  result = api_instance.put_merge_html_template(template_name, out_path, file, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling TemplateMergeApi->put_merge_html_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_name** | **String**| Template document name. Template document is HTML or zipped HTML. | 
 **out_path** | **String**| Result document path. | 
 **file** | **File**| A data file to populate template. | 
 **options** | **String**| Template merge options: reserved for further implementation. | [optional] 
 **folder** | **String**| The template document folder. | [optional] 
 **storage** | **String**| The template document and data source storage. | [optional] 

### Return type

**[Hash] {file: data, status: _status_code, headers: _headers}**

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json



