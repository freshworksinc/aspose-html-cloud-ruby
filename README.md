![](https://img.shields.io/badge/api-v3.0-lightgrey) ![Gem](https://img.shields.io/gem/v/aspose_html_cloud) ![Gem](https://img.shields.io/gem/dt/aspose_html_cloud) [![GitHub license](https://img.shields.io/github/license/aspose-html-cloud/aspose-html-cloud-ruby)](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/blob/master/LICENSE)

# HTML Rendering & Conversion Ruby Cloud REST API
Aspose.HTML Cloud for Ruby is a programming SDK that allows software developers to manipulate and convert HTML documents from within their own applications. A Wrapper of RESTful APIs, Aspose.HTML Cloud for Ruby speeds up HTML programming and conversion.
This cloud SDK assists to develop cloud-based [HTML page rendering, processing, translation & conversion](https://products.aspose.cloud/html/ruby) apps in Ruby via REST API.

## HTML Processing Features
- Fetch the HTML page along with its resources as a ZIP archive by providing the page URL.
- Based on page URL, retrieve all images of an HTML page as a ZIP package.
- Load data from a local file to populate the HTML document template.
- Use the request body to populate the HTML document template.
- Convert HTML page to numerous other file formats.

## Read & Write HTML Formats
HTML, XHTML, zipped HTML, zipped XHTML, MHTML, HTML containing SVG markup, Markdown, JSON

## Save HTML As
*Fixed Layout*: PDF, XPS
*Images*: TIFF, JPEG, PNG, BMP, GIF
*Other*: TXT, ZIP (images)

## Read HTML Formats
*eBook*: EPUB
*Other*: XML, SVG

## Enhancements Version 20.11

- New generation of Aspose.HTML Cloud SDK for .NET (C#) is provided.
- This version of SDK has been redesigned from scratch being based on the new Aspose.HTML Cloud REST API (v3.0).
- Currently, it provides only the conversion feature. Other features that are still available in the versions up to v.20.08 are planned to be implemented in this SDK later.
- Conversion interface provides a more flexible conversion parameters setup.
- Redesigned storage access is provided using SDK entry point HtmlApi.Storage.
- Availability of synchronous and asynchronous file upload and download methods.
- Asynchronous download provides the ability to get progress data for the longer downloads.

## Requirements
- Ruby >= 1.9
- libcurl.dll (libcurl.so) (in the ruby /bin directory)

## Installation
```shell
bundle install --jobs 4
```

### Build a gem

To build the Ruby code into a gem:

```shell
gem build aspose_html_cloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./aspose_html_cloud-20.8.0.gem
```
(for development, run `gem install --dev ./aspose_html_cloud-20.8.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'aspose_html_cloud', '~> 20.8.0'

### Load from git

    git clone https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git
    cd aspose-html-cloud-ruby

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git, then add the following in the Gemfile:

    gem 'aspose_html_cloud', :git => 'https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib aspose_html_cloud.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

name = "test.html" # String | Document name.

out_format = "png" # String | Resulting image format.

opts = {
  width: 800, # Integer | Resulting image width.
  height: 1000, # Integer | Resulting image height.
  left_margin: 10, # Integer | Left resulting image margin.
  right_margin: 10, # Integer | Right resulting image margin.
  top_margin: 20, # Integer | Top resulting image margin.
  bottom_margin: 20, # Integer | Bottom resulting image margin.
  resolution: 300, # Integer | Resolution of resulting image.
  folder: "/", # String | The source document folder.
  storage: nil # String | The source document storage.
}

begin
  #Convert the HTML document from the storage by its name to the specified image format.
  result = api_instance.get_convert_document_to_image(name, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_image: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposeHtml::HtmlApi* | [**get_convert_document_to_image**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_image) | **GET** /html/{name}/convert/image/{outFormat} | Convert the HTML document from the storage by its name to the specified image format.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_image_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_image_by_url) | **GET** /html/convert/image/{outFormat} | Convert the HTML page from the web by its URL to the specified image format.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_pdf**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_pdf) | **GET** /html/{name}/convert/pdf | Convert the HTML document from the storage by its name to PDF.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_pdf_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_pdf_by_url) | **GET** /html/convert/pdf | Convert the HTML page from the web by its URL to PDF.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_xps**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_xps) | **GET** /html/{name}/convert/xps | Convert the HTML document from the storage by its name to XPS.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_xps_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_xps_by_url) | **GET** /html/convert/xps | Convert the HTML page from the web by its URL to XPS.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_image**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#post_convert_document_in_request_to_image) | **POST** /html/convert/image/{outFormat} | Converts the HTML document (in request content) to the specified image format and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_pdf**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#post_convert_document_in_request_to_pdf) | **POST** /html/convert/pdf | Converts the HTML document (in request content) to PDF and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_xps**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#post_convert_document_in_request_to_xps) | **POST** /html/convert/xps | Converts the HTML document (in request content) to XPS and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_mhtml_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_mhtml_by_url) | **GET** /html/convert/mhtml | Converts the HTML page from Web by its URL to MHTML returns resulting file in response content.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_image**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#put_convert_document_to_image) | **PUT** /html/{name}/convert/image/{outFormat} | Converts the HTML document (located on storage) to the specified image format and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_pdf**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#put_convert_document_to_pdf) | **PUT** /html/{name}/convert/pdf | Converts the HTML document (located on storage) to PDF and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_xps**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#put_convert_document_to_xps) | **PUT** /html/{name}/convert/xps | Converts the HTML document (located on storage) to XPS and uploads resulting file to storage.
*AsposeHtml::HtmlApi* | [**get_convert_document_to_markdown**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#get_convert_document_to_markdown) | **GET** /html/{name}/convert/md | Converts the HTML document (located on storage) to Markdown and returns resulting file in response content.
*AsposeHtml::HtmlApi* | [**post_convert_document_in_request_to_markdown**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#post_convert_document_in_request_to_markdown) | **POST** /html/convert/md | Converts the HTML document (in request content) to Markdown and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**put_convert_document_to_markdown**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ConversionApi.md#put_convert_document_to_markdown) | **PUT** /html/{name}/convert/md | Converts the HTML document (located on storage) to Markdown and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**get_convert_markdown_to_html**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ImportApi.md#get_convert_markdown_to_html) | **GET** /html/{name}/import/md | Converts the Markdown document (located on storage) to HTML and returns resulting file in response content.
*AsposeHtml::HtmlApi* | [**post_convert_markdown_in_request_to_html**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ImportApi.md#post_convert_markdown_in_request_to_html) | **POST** /html/import/md | Converts the Markdown document (in request content) to HTML and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**put_convert_markdown_to_html**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/ImportApi.md#put_convert_markdown_to_html) | **PUT** /html/{name}/import/md | Converts the Markdown document (located on storage) to HTML and uploads resulting file to storage by specified path.
*AsposeHtml::HtmlApi* | [**get_document_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/DocumentApi.md#get_document_by_url) | **GET** /html/download | Return all HTML page with linked resources packaged as a ZIP archive by the source page URL.
*AsposeHtml::HtmlApi* | [**get_document_fragment_by_x_path**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/DocumentApi.md#get_document_fragment_by_x_path) | **GET** /html/{name}/fragments/{outFormat} | Return list of HTML fragments matching the specified XPath query.
*AsposeHtml::HtmlApi* | [**get_document_fragment_by_x_path_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/DocumentApi.md#get_document_fragment_by_x_path_by_url) | **GET** /html/fragments/{outFormat} | Return list of HTML fragments matching the specified XPath query by the source page URL.
*AsposeHtml::HtmlApi* | [**get_document_fragments_by_css_selector**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/DocumentApi.md#get_document_fragments_by_css_selector) | **GET** /html/{name}/fragments/css/{outFormat} | Return list of HTML fragments matching the specified CSS selector.
*AsposeHtml::HtmlApi* | [**get_document_fragments_by_css_selector_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/DocumentApi.md#get_document_fragments_by_css_selector_by_url) | **GET** /html/fragments/css/{outFormat} | Return list of HTML fragments matching the specified CSS selector by the source page URL.
*AsposeHtml::HtmlApi* | [**get_document_images**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/DocumentApi.md#get_document_images) | **GET** /html/{name}/images/all | Return all HTML document images packaged as a ZIP archive.
*AsposeHtml::HtmlApi* | [**get_document_images_by_url**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/DocumentApi.md#get_document_images_by_url) | **GET** /html/images/all | Return all HTML page images packaged as a ZIP archive by the source page URL.
*AsposeHtml::HtmlApi* | [**get_merge_html_template**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/TemplateMergeApi.md#get_merge_html_template) | **GET** /html/{templateName}/merge | Populate HTML document template with data located as a file in the storage.
*AsposeHtml::HtmlApi* | [**post_merge_html_template**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/TemplateMergeApi.md#post_merge_html_template) | **POST** /html/{templateName}/merge | Populate HTML document template with data from the request body. Result document will be saved to storage.
*AsposeHtml::HtmlApi* | [**get_seo_warning**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/SeoApi.md#get_seo_warning) | **GET** /html/seo | Page analysis and return of SEO warnings in json format.
*AsposeHtml::HtmlApi* | [**get_html_warning**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/SeoApi.md#get_html_warning) | **GET** /html/validator | Checks the markup validity of Web documents in HTML, XHTML, etc., and return result in json format.


## oauth

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: "https://api.aspose.cloud/connect/token"
- **Scopes**: N/A

[Tests](./spec/api/html_api_spec.rb) contain various examples of using the Aspose.HTML SDK.

[Docs](./docs/) Documentation for Aspose.HTML Api SDK

## Aspose HTML includes Aspose.Storage.Cloud to manipulate files on a remote server. This is used in tests for download test files to the server.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposeHtml::StorageApi* | [**copy_file**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FileApi.md#copy_file) | **PUT** /html/storage/file/copy/{srcPath} | Copy file
*AsposeHtml::StorageApi* | [**delete_file**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FileApi.md#delete_file) | **DELETE** /html/storage/file/{path} | Delete file
*AsposeHtml::StorageApi* | [**download_file**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FileApi.md#download_file) | **GET** /html/storage/file/{path} | Download file
*AsposeHtml::StorageApi* | [**move_file**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FileApi.md#move_file) | **PUT** /html/storage/file/move/{srcPath} | Move file
*AsposeHtml::StorageApi* | [**upload_file**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FileApi.md#upload_file) | **PUT** /html/storage/file/{path} | Upload file
*AsposeHtml::StorageApi* | [**copy_folder**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FolderApi.md#copy_folder) | **PUT** /html/storage/folder/copy/{srcPath} | Copy folder
*AsposeHtml::StorageApi* | [**create_folder**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FolderApi.md#create_folder) | **PUT** /html/storage/folder/{path} | Create the folder
*AsposeHtml::StorageApi* | [**delete_folder**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FolderApi.md#delete_folder) | **DELETE** /html/storage/folder/{path} | Delete folder
*AsposeHtml::StorageApi* | [**get_files_list**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FolderApi.md#get_files_list) | **GET** /html/storage/folder/{path} | Get all files and folders within a folder
*AsposeHtml::StorageApi* | [**move_folder**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FolderApi.md#move_folder) | **PUT** /html/storage/folder/move/{srcPath} | Move folder
*AsposeHtml::StorageApi* | [**get_disc_usage**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/StorageApi.md#get_disc_usage) | **GET** /html/storage/disc | Get disc usage
*AsposeHtml::StorageApi* | [**get_file_versions**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/StorageApi.md#get_file_versions) | **GET** /html/storage/version/{path} | Get file versions
*AsposeHtml::StorageApi* | [**object_exists**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/StorageApi.md#object_exists) | **GET** /html/storage/exist/{path} | Check if file or folder exists
*AsposeHtml::StorageApi* | [**storage_exists**](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/StorageApi.md#storage_exists) | **GET** /html/storage/{storageName}/exist | Check if storage exists


## Documentation for Models

 - [AsposeHtml::DiscUsage](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/DiscUsage.md)
 - [AsposeHtml::Error](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/Error.md)
 - [AsposeHtml::ErrorDetails](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/ErrorDetails.md)
 - [AsposeHtml::FileVersion](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FileVersion.md)
 - [AsposeHtml::FileVersions](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FileVersions.md)
 - [AsposeHtml::FilesList](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FilesList.md)
 - [AsposeHtml::FilesUploadResult](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/FilesUploadResult.md)
 - [AsposeHtml::ObjectExist](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/ObjectExist.md)
 - [AsposeHtml::StorageExist](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/StorageExist.md)
 - [AsposeHtml::StorageFile](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/docs/storage/StorageFile.md)


[Tests](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby/tree/master/spec) contain various examples of using the Aspose.Storage SDK.

## Aspose.HTML Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Swift|C++|Go|
|---|---|---|---|---|---|---|--|--|--|
| [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-dotnet) | [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-java) | [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-php) | [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-python) | [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby)  | [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-nodejs) | [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-android) | [GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-swift)|[GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-cpp) |[GitHub](https://github.com/aspose-html-cloud/aspose-html-cloud-go) |
| [NuGet](https://www.nuget.org/packages/Aspose.html-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-html-cloud) | [Composer](https://packagist.org/packages/aspose/aspose-html-cloud-php) | [PIP](https://pypi.org/project/asposehtmlcloud/) | [GEM](https://rubygems.org/gems/aspose_html_cloud)  | [NPM](https://www.npmjs.com/package/@asposecloud/aspose-html-cloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-html-cloud) | [Cocoapods](https://cocoapods.org/pods/AsposeHtmlCloud)|[NuGet](https://www.nuget.org/packages/Aspose.Html-Cloud.Cpp/) | [Go.Dev](#) |

[Product Page](https://products.aspose.cloud/html/ruby) | [Documentation](https://docs.aspose.cloud/display/htmlcloud/Home) | [API Reference](https://apireference.aspose.cloud/html/) | [Code Samples](https://github.com/aspose-html-cloud/aspose-html-cloud-ruby) | [Blog](https://blog.aspose.cloud/category/html/) | [Free Support](https://forum.aspose.cloud/c/html) | [Free Trial](https://dashboard.aspose.cloud/#/apps)
