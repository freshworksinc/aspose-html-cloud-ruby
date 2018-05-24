# Aspose HTML Cloud SDK

AsposeHtml - the Ruby gem for the Aspose.HTML for Cloud API Reference

- API version: 1.1
- Package version: 1.0.0

## Requirements
- Ruby >= 1.9
- libcurl.dll (libcurl.so)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build aspose_html.gemspec
```

Then either install the gem locally:

```shell
gem install ./aspose_html-1.0.0.gem
```
(for development, run `gem install --dev ./aspose_html-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'aspose_html', '~> 1.0.0'

### Load from git

    git clone https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git
    cd aspose-html-cloud-ruby
    
### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git, then add the following in the Gemfile:

    gem 'aspose_html', :git => 'https://github.com/aspose-html-cloud/aspose-html-cloud-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

out_format = "png" # String | Resulting image format.

opts = { 
  width: 800, # Integer | Resulting image width. 
  height: 1000, # Integer | Resulting image height. 
  left_margin: 10, # Integer | Left resulting image margin.
  right_margin: 10, # Integer | Right resulting image margin.
  top_margin: 20, # Integer | Top resulting image margin.
  bottom_margin: 20, # Integer | Bottom resulting image margin.
  x_resolution: 300, # Integer | Horizontal resolution of resulting image.
  y_resolution: 300, # Integer | Vertical resolution of resulting image.
  folder: "/", # String | The source document folder.
  storage: nil # String | The source document storage.
}

begin
  #Convert the HTML document from the storage by its name to the specified image format.
  result = api_instance.get_convert_document_to_image(name, out_format, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling ConversionApi->get_convert_document_to_image: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.aspose.cloud/v1.1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposeHtml::ConversionApi* | [**get_convert_document_to_image**](docs/ConversionApi.md#get_convert_document_to_image) | **GET** /html/{name}/convert/image/{outFormat} | Convert the HTML document from the storage by its name to the specified image format.
*AsposeHtml::ConversionApi* | [**get_convert_document_to_image_by_url**](docs/ConversionApi.md#get_convert_document_to_image_by_url) | **GET** /html/convert/image/{outFormat} | Convert the HTML page from the web by its URL to the specified image format.
*AsposeHtml::ConversionApi* | [**get_convert_document_to_pdf**](docs/ConversionApi.md#get_convert_document_to_pdf) | **GET** /html/{name}/convert/pdf | Convert the HTML document from the storage by its name to PDF.
*AsposeHtml::ConversionApi* | [**get_convert_document_to_pdf_by_url**](docs/ConversionApi.md#get_convert_document_to_pdf_by_url) | **GET** /html/convert/pdf | Convert the HTML page from the web by its URL to PDF.
*AsposeHtml::ConversionApi* | [**get_convert_document_to_xps**](docs/ConversionApi.md#get_convert_document_to_xps) | **GET** /html/{name}/convert/xps | Convert the HTML document from the storage by its name to XPS.
*AsposeHtml::ConversionApi* | [**get_convert_document_to_xps_by_url**](docs/ConversionApi.md#get_convert_document_to_xps_by_url) | **GET** /html/convert/xps | Convert the HTML page from the web by its URL to XPS.
*AsposeHtml::DocumentApi* | [**get_document**](docs/DocumentApi.md#get_document) | **GET** /html/{name} | Return the HTML document by the name from default or specified storage.
*AsposeHtml::DocumentApi* | [**get_document_fragment_by_x_path**](docs/DocumentApi.md#get_document_fragment_by_x_path) | **GET** /html/{name}/fragments/{outFormat} | Return list of HTML fragments matching the specified XPath query. 
*AsposeHtml::DocumentApi* | [**get_document_images**](docs/DocumentApi.md#get_document_images) | **GET** /html/{name}/images/all | Return all HTML document images packaged as a ZIP archive.
*AsposeHtml::OcrApi* | [**get_recognize_and_import_to_html**](docs/OcrApi.md#get_recognize_and_import_to_html) | **GET** /html/{name}/ocr/import | Recognize text from the image file in the storage and import it to HTML format.
*AsposeHtml::OcrApi* | [**get_recognize_and_translate_to_html**](docs/OcrApi.md#get_recognize_and_translate_to_html) | **GET** /html/{name}/ocr/translate/{srcLang}/{resLang} | Recognize text from the image file in the storage, import it to HTML format and translate to specified language.
*AsposeHtml::TranslationApi* | [**get_translate_document**](docs/TranslationApi.md#get_translate_document) | **GET** /html/{name}/translate/{srcLang}/{resLang} | Translate the HTML document specified by the name from default or specified storage. 
*AsposeHtml::TranslationApi* | [**get_translate_document_by_url**](docs/TranslationApi.md#get_translate_document_by_url) | **GET** /html/translate/{srcLang}/{resLang} | Translate the HTML document from Web specified by its URL.


## oauth

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: "https://api.aspose.cloud/oauth2/token"
- **Scopes**: N/A

[Tests](./spec/) contain various examples of using the Aspose.HTML SDK.

[Docs](./docs/) Documentation for Aspose.HTML Api SDK

## Aspose HTML includes Aspose.Storage.Cloud to manipulate files on a remote server. This is used in tests for download test files to the server.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposeStorage::FileApi* | [**delete_file**](docs/storage/FileApi.md#delete_file) | **DELETE** /storage/file | Remove a specific file 
*AsposeStorage::FileApi* | [**get_download**](docs/storage/FileApi.md#get_download) | **GET** /storage/file | Download a specific file 
*AsposeStorage::FileApi* | [**post_move_file**](docs/storage/FileApi.md#post_move_file) | **POST** /storage/file | Move a specific file 
*AsposeStorage::FileApi* | [**put_create**](docs/storage/FileApi.md#put_create) | **PUT** /storage/file | Upload a specific file 
*AsposeStorage::FolderApi* | [**delete_folder**](docs/storage/FolderApi.md#delete_folder) | **DELETE** /storage/folder | Remove a specific folder 
*AsposeStorage::FolderApi* | [**get_list_files**](docs/storage/FolderApi.md#get_list_files) | **GET** /storage/folder | Get the file listing of a specific folder 
*AsposeStorage::FolderApi* | [**post_move_folder**](docs/storage/FolderApi.md#post_move_folder) | **POST** /storage/folder | Move a specific folder 
*AsposeStorage::FolderApi* | [**put_create_folder**](docs/storage/FolderApi.md#put_create_folder) | **PUT** /storage/folder | Create the folder 
*AsposeStorage::StorageApi* | [**get_disc_usage**](docs/storage/StorageApi.md#get_disc_usage) | **GET** /storage/disc | Check the disk usage of the current account 
*AsposeStorage::StorageApi* | [**get_is_exist**](docs/storage/StorageApi.md#get_is_exist) | **GET** /storage/exist | Check if a specific file or folder exists
*AsposeStorage::StorageApi* | [**get_is_storage_exist**](docs/storage/StorageApi.md#get_is_storage_exist) | **GET** /storage/{name}/exist | Check if storage exists 
*AsposeStorage::StorageApi* | [**get_list_file_versions**](docs/storage/StorageApi.md#get_list_file_versions) | **GET** /storage/version | Get the file's versions list 


## Documentation for Models

 - [AsposeStorage::DiscUsage](docs/storage/DiscUsage.md)
 - [AsposeStorage::File](docs/storage/FileDetail.md)
 - [AsposeStorage::FileExist](docs/storage/FileExist.md)
 - [AsposeStorage::SaaSposeResponse](docs/storage/MessageResponse.md)
 - [AsposeStorage::DiscUsageResponse](docs/storage/DiscUsageResponse.md)
 - [AsposeStorage::FileExistResponse](docs/storage/FileExistResponse.md)
 - [AsposeStorage::FileVersion](docs/storage/FileVersion.md)
 - [AsposeStorage::FileVersionsResponse](docs/storage/FileVersionsResponse.md)
 - [AsposeStorage::MoveFileResponse](docs/storage/MoveFileResponse.md)
 - [AsposeStorage::MoveFolderResponse](docs/storage/MoveFolderResponse.md)
 - [AsposeStorage::RemoveFileResponse](docs/storage/RemoveFileResponse.md)
 - [AsposeStorage::RemoveFolderResponse](docs/storage/RemoveFolderResponse.md)
 - [AsposeStorage::StorageExistResponse](docs/storage/StorageExistResponse.md)



[Tests](./spec/storage_api.spec) contain various examples of using the Aspose.Storage SDK.

[Docs](docs/storage/) Documentation for Aspose.Storage Api SDK
