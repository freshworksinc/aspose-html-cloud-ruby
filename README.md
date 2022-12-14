# Aspose HTML Cloud SDK

AsposeHtml - the Ruby gem for the Aspose.HTML for Cloud API Reference

- API version: 4.0
- Package version: 22.12.1

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
gem install ./aspose_html_cloud-22.12.1.gem
```
(for development, run `gem install --dev ./aspose_html_cloud-22.12.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'aspose_html_cloud', '~> 22.12.1'

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

### Possible conversions:
- HTML -> PDF, XPS, DOCX, MD, MHTML, JPEG, BMP, PNG, TIFF, GIF
- EPUB -> PDF, XPS, DOCX, JPEG, BMP, PNG, TIFF, GIF
- MD -> PDF, XPS, DOCX, HTML, MHTML, JPEG, BMP, PNG, TIFF, GIF
- MHTML -> PDF, XPS, DOCX, JPEG, BMP, PNG, TIFF, GIF
- SVG -> PDF, XPS, JPEG, BMP, PNG, TIFF, GIF
- JPEG, BMP, PNG, TIFF, GIF -> SVG

### Possible vectorization:
- JPEG, BMP, PNG, TIFF, GIF -> SVG

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

src = "test.html" # String | Document name.
dst = "test.jpg"
opts = { 
  width: 800,       # Float | Resulting image width in pixels. For PDF, XPS and DOCX in inches.
  height: 1000,     # Float | Resulting image height in pixels. For PDF, XPS and DOCX in inches. 
  left_margin: 10,  # Float | Left resulting image margin in pixels. For PDF, XPS and DOCX in inches.
  right_margin: 10, # Float | Right resulting image margin in pixels. For PDF, XPS and DOCX in inches.
  top_margin: 20,   # Float | Top resulting image margin in pixels. For PDF, XPS and DOCX in inches.
  bottom_margin: 20 # Float | Bottom resulting image margin in pixels. For PDF, XPS and DOCX in inches.

}

begin
  #Convert the HTML document from the storage by its name to the specified image format.
  result = api_instance.convert_local_to_local(src, dst, opts)
  p result
rescue AsposeHtml::ApiError => e
  puts "Exception when calling HtmlApi->get_convert_document_to_image: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.aspose.cloud/v4.0*

| Class                 | Method                                                                           | Description                                                   |
|-----------------------|----------------------------------------------------------------------------------|---------------------------------------------------------------|
| *AsposeHtml::HtmlApi* | [**convert_local_to_local**](docs/HtmlApi.md#convert_local_to_local)             | Convert a document from the local file to the local file.     |
| *AsposeHtml::HtmlApi* | [**convert_local_to_storage**](docs/HtmlApi.md#convert_local_to_storage)         | Convert a document from the local file to the storage.        |
| *AsposeHtml::HtmlApi* | [**convert_storage_to_local**](docs/HtmlApi.md#convert_storage_to_local)         | Convert a document from the storage to the local file.        |
| *AsposeHtml::HtmlApi* | [**convert_storage_to_storage**](docs/HtmlApi.md#convert_storage_to_storage)     | Convert a document from the storage to the storage.           |
| *AsposeHtml::HtmlApi* | [**convert_url_to_local**](docs/HtmlApi.md#convert_url_to_local)                 | Convert the URL to the local file.                            |
| *AsposeHtml::HtmlApi* | [**convert_url_to_storage**](docs/HtmlApi.md#convert_url_to_storage)             | Convert the URL to the storage.                               |
| *AsposeHtml::HtmlApi* | [**convert**](docs/HtmlApi.md#convert)                                           | General function for conversion.                              |
| *AsposeHtml::HtmlApi* | [**vectorize_local_to_local**](docs/HtmlApi.md#vectorize_local_to_local)         | Vectorization an image from the local file to the local file. |
| *AsposeHtml::HtmlApi* | [**vectorize_local_to_storage**](docs/HtmlApi.md#vectorize_local_to_storage)     | Vectorization an image from the local file to the storage.    |
| *AsposeHtml::HtmlApi* | [**vectorize_storage_to_local**](docs/HtmlApi.md#vectorize_storage_to_local)     | Vectorization an image from the storage to the local file.    |
| *AsposeHtml::HtmlApi* | [**vectorize_storage_to_storage**](docs/HtmlApi.md#vectorize_storage_to_storage) | Vectorization an image from the storage to the storage.       |
| *AsposeHtml::HtmlApi* | [**vectorize**](docs/HtmlApi.md#vectorize)                                       | General function for vectorization.                           |


## conversionOptions
| Options                                                          | Description                                       |
|------------------------------------------------------------------|---------------------------------------------------|
| [**PDFOptions**](docs/ConversionOptions.md#PDFOptions)           | Convert to the PDF format.                        |
| [**ImageOptions**](docs/ConversionOptions.md#ImageOptions)       | Convert to images (JPEG, PNG, GIF, TIFF, BMP).    |
| [**XPSOptions**](docs/ConversionOptions.md#XPSOptions)           | Convert to the XPS format.                        |
| [**DocOptions**](docs/ConversionOptions.md#DocOptions)           | Convert to the DOCX format.                       |
| [**SvgOptions**](docs/ConversionOptions.md#SvgOptions)           | Trace images to the SVG format.                   |
| [**MarkdownOptions**](docs/ConversionOptions.md#MarkdownOptions) | Convert the HTML document to the markdown format. |


## vectorizationOptions
| Field               | Type    | Description                                                                                             | Note     |
|---------------------|---------|---------------------------------------------------------------------------------------------------------|----------|
| **error_threshold** | Float   | This parameter defines maximum deviation of points to fitted curve. By default it is 30.                | Optional |
| **max_iterations**  | Integer | This parameter defines number of iteration for least-squares approximation method. By default it is 30. | Optional |
| **colors_limit**    | Integer | The maximum number of colors used to quantize an image. Default value is 25.                            | Optional |
| **line_width**      | Float   | The value of this parameter is affected by the graphics scale. Default value is 1.                      | Optional |

## oauth

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: "https://api.aspose.cloud/connect/token"
- **Scopes**: N/A

[Tests](./spec/api/html_api_spec.rb) contain various examples of using the Aspose.HTML SDK.

[Docs](./docs/) Documentation for Aspose.HTML Api SDK

## Aspose HTML includes Aspose.Storage.Cloud to manipulate files on a remote server. This is used in tests for download test files to the server.

| Class                    | Method                                                                | Description                               |
|--------------------------|-----------------------------------------------------------------------|-------------------------------------------|
| *AsposeHtml::StorageApi* | [**delete_file**](docs/storage/FileApi.md#delete_file)                | Delete file                               |
| *AsposeHtml::StorageApi* | [**download_file**](docs/storage/FileApi.md#download_file)            | Download file                             |
| *AsposeHtml::StorageApi* | [**upload_file**](docs/storage/FileApi.md#upload_file)                | Upload file                               |
| *AsposeHtml::StorageApi* | [**create_folder**](docs/storage/FolderApi.md#create_folder)          | Create the folder                         |
| *AsposeHtml::StorageApi* | [**delete_folder**](docs/storage/FolderApi.md#delete_folder)          | Delete folder                             |
| *AsposeHtml::StorageApi* | [**get_files_list**](docs/storage/FolderApi.md#get_files_list)        | Get all files and folders within a folder | 
| *AsposeHtml::StorageApi* | [**get_disc_usage**](docs/storage/StorageApi.md#get_disc_usage)       | Get disc usage                            |
| *AsposeHtml::StorageApi* | [**object_exists**](docs/storage/StorageApi.md#object_exists)         | Check if file or folder exists            |
| *AsposeHtml::StorageApi* | [**storage_exists**](docs/storage/StorageApi.md#storage_exists)       | Check if storage exists                   |


## Documentation for Models

 - [AsposeHtml::DiscUsage](docs/storage/DiscUsage.md)
 - [AsposeHtml::Error](docs/storage/Error.md)
 - [AsposeHtml::ErrorDetails](docs/storage/ErrorDetails.md)
 - [AsposeHtml::FileVersion](docs/storage/FileVersion.md)
 - [AsposeHtml::FileVersions](docs/storage/FileVersions.md)
 - [AsposeHtml::FilesList](docs/storage/FilesList.md)
 - [AsposeHtml::FilesUploadResult](docs/storage/FilesUploadResult.md)
 - [AsposeHtml::ObjectExist](docs/storage/ObjectExist.md)
 - [AsposeHtml::StorageExist](docs/storage/StorageExist.md)
 - [AsposeHtml::StorageFile](docs/storage/StorageFile.md)


[Tests](spec) contain various examples of using the Aspose.Storage SDK.

[Docs](docs/storage) Documentation for Aspose.Storage Api SDK
